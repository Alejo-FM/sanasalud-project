---------------------------------------------------------------
-- * Triggers
---------------------------------------------------------------

CREATE OR REPLACE FUNCTION insert_factura_after_realiza()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Factura (
        ci_paciente,
        ci_medico,
        area,
        numero_cama,
        tipo_servicio,
        estado_factura,
        fecha_emision,
        fecha_vencimiento,
        fecha_pago,
        dias_cubiertos_seguro,
        costo_servicio,
        impuesto
    )
    VALUES (
        NEW.ci_paciente,
        NEW.ci_medico,
        (
            SELECT id_area 
            FROM Trabaja t
            WHERE t.ci_medico = NEW.ci_medico AND t.fecha <= NEW.fecha_elaboracion
            ORDER BY t.fecha DESC
  			LIMIT 1
        ),
        NULL,
        (
            SELECT id_tipo_servicio 
            FROM Tipo_Servicio 
            WHERE LOWER(descripcion) = LOWER('diagnostico')
        ),
        
        (
            SELECT id_estado_factura
            FROM Estado_Factura 
            WHERE LOWER(descripcion) = LOWER('PENDIENTE') 
            LIMIT 1
        ),
        NEW.fecha_elaboracion,
        NEW.fecha_elaboracion + INTERVAL '30 days',
        NULL,
        NULL,
        (SELECT costo FROM Diagnostico WHERE id_diagnostico = NEW.diagnostico),
        (SELECT costo * 0.12 FROM Diagnostico WHERE id_diagnostico = NEW.diagnostico)
    );

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_factura_after_prescribe()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Factura (
        ci_paciente,
        ci_medico,
        area,
        numero_cama,
        tipo_servicio,
        estado_factura,
        fecha_emision,
        fecha_vencimiento,
        fecha_pago,
        dias_cubiertos_seguro,
        costo_servicio,
        impuesto
    )
    VALUES (
        NEW.ci_paciente,
        NEW.ci_medico,
        (
            SELECT id_area 
            FROM Trabaja t
            WHERE t.ci_medico = NEW.ci_medico AND t.fecha <= NEW.fecha_elaboracion
            ORDER BY t.fecha DESC
  			LIMIT 1
        ),
        NULL,
        (
            SELECT id_tipo_servicio 
            FROM Tipo_Servicio 
            WHERE LOWER(descripcion) = LOWER('tratamiento')
        ),
        
        (
            SELECT id_estado_factura
            FROM Estado_Factura 
            WHERE LOWER(descripcion) = LOWER('PENDIENTE') 
            LIMIT 1
        ),
        NEW.fecha_elaboracion,
        NEW.fecha_elaboracion + INTERVAL '30 days',
        NULL,
        NULL,
        (SELECT costo FROM Tratamiento WHERE id_tratamiento = NEW.tratamiento),
        (SELECT costo * 0.12 FROM Tratamiento WHERE id_tratamiento = NEW.tratamiento)
    );

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getCamaDesocupadaById( ci_medico numeric ) 
RETURNS numeric AS $$
DECLARE
    num_cama numeric; 
BEGIN
    SELECT c.numero_cama INTO num_cama 
    FROM Area a, Medico m, Cama c, Ocupa o 
    WHERE m.cedula = ci_medico 
    AND a.especialidad = m.id_especialidad 
    AND a.id_area = c.area_hospital
    AND o.numero_cama = c.numero_cama 
    AND LOWER(status) = LOWER('desocupada')
    LIMIT 1;
    
    RETURN num_cama;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getCamaDisponibleById( ci_medico numeric ) 
RETURNS numeric AS $$
DECLARE
    num_cama numeric; 
BEGIN
        SELECT c.numero_cama INTO num_cama
        FROM Area a
        JOIN Medico m ON m.cedula = ci_medico
        JOIN Cama c ON a.id_area = c.area_hospital
        LEFT JOIN OCUPA o ON c.numero_cama = o.numero_cama
        WHERE o.numero_cama IS NULL AND a.especialidad = m.id_especialidad
        LIMIT 1;
    
    RETURN num_cama;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getPoliza( cedula_paciente numeric ) 
RETURNS numeric AS $$
DECLARE
    n_poliza numeric; 
BEGIN
        SELECT p.nro_poliza INTO n_poliza
        FROM Poliza p
        WHERE p.ci_paciente = cedula_paciente
        LIMIT 1;
    
    RETURN n_poliza;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION getCoberturaPoliza( cedula_paciente numeric, numero_poliza numeric ) 
RETURNS numeric AS $$
DECLARE
    cobertura_poliza float; 
BEGIN
        SELECT p.cobertura INTO cobertura_poliza
        FROM Poliza p
        WHERE p.ci_paciente = cedula_paciente AND p.nro_poliza = numero_poliza
        LIMIT 1;
    
    RETURN cobertura_poliza;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION insert_after_practica()
RETURNS TRIGGER AS $$
DECLARE
    cama_desocupada numeric;
    cama_disponible numeric;
    num_cama numeric;
    costo_cubre float;
    cant_dias numeric;
BEGIN
    
    SELECT getCamaDisponibleById(NEW.ci_medico) INTO cama_disponible; 
    SELECT getCamaDesocupadaById(NEW.ci_medico) INTO cama_desocupada; 
    SELECT floor(random() * 4 + 1) INTO cant_dias; 
    SELECT getCoberturaPoliza(NEW.ci_paciente, getPoliza(NEW.ci_paciente)) INTO costo_cubre; 
    
    IF cama_desocupada IS NOT NULL THEN 
        num_cama := cama_desocupada; 
    ELSE
        num_cama := cama_disponible; 
    END IF;

    INSERT INTO Ocupa 
    ( 
    ci_paciente,
    numero_cama, 
    fecha_inicio,
    cantidad_dias,
    dias_cubiertos_seguro,
    costo_diario,
    status
    ) VALUES
    (
        NEW.ci_paciente,
        num_cama,
        NEW.fecha,
        cant_dias,
        ROUND(costo_cubre / (NEW.costo / cant_dias)),
        (NEW.costo / cant_dias),
         
            CASE 
                WHEN (NEW.fecha + interval '1 day' * cant_dias) < CURRENT_DATE 
                    THEN LOWER('desocupada')
                ELSE LOWER('ocupada')
            END
    );

    INSERT INTO Factura (
        ci_paciente,
        ci_medico,
        area,
        numero_cama,
        tipo_servicio,
        estado_factura,
        nro_poliza,
        fecha_emision,
        fecha_vencimiento,
        fecha_pago,
        dias_cubiertos_seguro,
        costo_servicio,
        impuesto
    )
    VALUES (
        NEW.ci_paciente,
        NEW.ci_medico,
        (
            SELECT id_area 
            FROM Trabaja t
            WHERE t.ci_medico = NEW.ci_medico AND t.fecha <= NEW.fecha
            ORDER BY t.fecha DESC
  			LIMIT 1
        ),
        num_cama,
        (
            SELECT id_tipo_servicio 
            FROM Tipo_Servicio 
            WHERE LOWER(descripcion) = LOWER('intervencion')
        ),
        
        (
            SELECT id_estado_factura
            FROM Estado_Factura 
            WHERE LOWER(descripcion) = LOWER('PENDIENTE') 
            LIMIT 1
        ),
        getPoliza(NEW.ci_paciente),
        NEW.fecha,
        NEW.fecha + INTERVAL '30 days',
        NULL,
        ROUND(costo_cubre / (NEW.costo / cant_dias)),
        NEW.costo,
        NEW.costo * 0.12
    );

    RETURN NEW;
    
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION insert_before_practica()
RETURNS TRIGGER AS $$
DECLARE
    cama_desocupada numeric;
    cama_disponible numeric;
    num_cama numeric;
BEGIN
    
    SELECT getCamaDisponibleById(NEW.ci_medico) INTO cama_disponible; 
    SELECT getCamaDesocupadaById(NEW.ci_medico) INTO cama_desocupada; 
    
    IF cama_desocupada IS NOT NULL OR cama_disponible IS NOT NULL THEN 
        RETURN NEW; 
    ELSE
        RAISE EXCEPTION 'ERROR: no existen camas disponibles en esa área';
    END IF;

    RETURN NEW;
    
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_insert_factura_after_prescribe
AFTER INSERT ON PRESCRIBE
FOR EACH ROW
EXECUTE FUNCTION insert_factura_after_prescribe();

CREATE TRIGGER trigger_insert_factura_after_realiza
AFTER INSERT ON Realiza
FOR EACH ROW
EXECUTE FUNCTION insert_factura_after_realiza();

CREATE TRIGGER trigger_insert_factura_after_practica
AFTER INSERT ON Practica
FOR EACH ROW
EXECUTE FUNCTION insert_after_practica();

CREATE TRIGGER trigger_insert_factura_before_practica
BEFORE INSERT ON Practica
FOR EACH ROW
EXECUTE FUNCTION insert_before_practica();

---------------------------------------------------------------
-- * Procedimientos
---------------------------------------------------------------

CREATE OR REPLACE PROCEDURE actualizar_facturas()
AS $$
BEGIN

    UPDATE Factura
    SET estado_factura = (SELECT id_estado_factura FROM Estado_Factura WHERE LOWER(descripcion) = LOWER('pagada')),
        fecha_pago = fecha_emision + INTERVAL '1 days' * floor(random() * 4 + 1)  
    WHERE fecha_vencimiento < CURRENT_DATE AND fecha_pago IS NULL;

END;
$$ LANGUAGE plpgsql;
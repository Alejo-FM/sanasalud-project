---------------------------------------------------------------
-- * Database: `OLAP`
---------------------------------------------------------------

CREATE SCHEMA IF NOT EXISTS OLAP;

---------------------------------------------------------------
-- * Dimensiones:
---------------------------------------------------------------

CREATE TABLE IF NOT EXISTS OLAP.dim_tiempo (
    sk_dim_tiempo integer NOT NULL,
    fecha date NOT NULL,
    dia integer NOT NULL,
    mes integer NOT NULL,
    mes_desc varchar NOT NULL,
    anio integer NOT NULL,
    PRIMARY KEY (sk_dim_tiempo)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_tratamiento (
    sk_dim_tratamiento integer NOT NULL,
    id_tratamiento uuid NOT NULL,
    descripcion varchar NOT NULL,
    costo float NOT NULL,
    PRIMARY KEY (sk_dim_tratamiento)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_proveedor (
    sk_dim_proveedor integer NOT NULL,
    id_proveedor uuid NOT NULL,
    nombre_proveedor varchar NOT NULL,
    rif varchar NOT NULL,
    telefono varchar NOT NULL,
    fax varchar NOT NULL,
    direccion varchar NOT NULL,
    id_tipo_proveedor uuid NOT NULL,
    descripcion_tipo_proveedor varchar NOT NULL,
    id_ciudad uuid NOT NULL,
    descripcion_ciudad varchar NOT NULL,
    id_estado uuid NOT NULL,
    descripcion_estado varchar NOT NULL,
    PRIMARY KEY (sk_dim_proveedor)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_medicamento (
    sk_dim_medicamento integer NOT NULL,
    id_medicamento uuid NOT NULL,
    nombre_medicamento varchar NOT NULL,
    presentacion varchar NOT NULL,
    posologia varchar NOT NULL,
    efectos_secundarios varchar NOT NULL,
    id_proveedor integer NOT NULL,
    PRIMARY KEY (sk_dim_medicamento),
    CONSTRAINT "fk_proveedor" FOREIGN KEY (id_proveedor) REFERENCES OLAP.dim_proveedor(sk_dim_proveedor)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_intervencion (
    sk_dim_intervencion integer NOT NULL,
    id_intervencion uuid NOT NULL,
    descripcion varchar NOT NULL,
    tipo varchar NOT NULL,
    PRIMARY KEY (sk_dim_intervencion)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_diagnostico (
    sk_dim_diagnostico integer NOT NULL,
    id_diagnostico uuid NOT NULL,
    descripcion varchar NOT NULL,
    tipo varchar NOT NULL,
    costo float NOT NULL,
    PRIMARY KEY (sk_dim_diagnostico)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_paciente (
    sk_dim_paciente integer NOT NULL,
    cedula numeric NOT NULL, -- * Natural Key
    nombre_completo varchar NOT NULL, 
    fecha_nacimiento date NOT NULL,
    tipo_sangre varchar NOT NULL,
    id_sexo uuid NOT NULL,
    descripcion_sexo varchar NOT NULL,
    id_estado_civil uuid NOT NULL,
    descripcion_estado_civil varchar NOT NULL,
    nacionalidad varchar NOT NULL,
    PRIMARY KEY (sk_dim_paciente)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_area (
    sk_dim_area integer NOT NULL,
    id_area uuid NOT NULL,
    piso varchar NOT NULL,
    pasillo varchar NOT NULL,
    id_especialidad uuid NOT NULL,
    descripcion_especialidad varchar NOT NULL,
    PRIMARY KEY (sk_dim_area)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_riesgo (
    sk_dim_riesgo integer NOT NULL,
    id_riesgo integer NOT NULL,
    descripcion varchar NOT NULL,
    PRIMARY KEY (sk_dim_riesgo)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_tipo_servicio (
    sk_dim_tipo_servicio integer NOT NULL,
    id_tipo_servicio uuid NOT NULL,
    descripcion varchar NOT NULL,
    PRIMARY KEY (sk_dim_tipo_servicio)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_medico (
    sk_dim_medico integer NOT NULL,
    cedula numeric NOT NULL, -- * Natural Key
    cod_colegio_medico numeric NOT NULL,
    nombre_completo varchar NOT NULL,
    fecha_nacimiento date NOT NULL,
    fecha_contratacion date NOT NULL,
    id_sexo uuid NOT NULL,
    descripcion_sexo varchar NOT NULL,
    id_estado_civil uuid NOT NULL,
    descripcion_estado_civil varchar NOT NULL,
    anos_experiencia integer NOT NULL,
    id_area integer NOT NULL,   
    CONSTRAINT "fk_area" FOREIGN KEY (id_area) REFERENCES OLAP.dim_area(sk_dim_area),
    PRIMARY KEY (sk_dim_medico)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_poliza (
    sk_dim_poliza integer NOT NULL,
    nro_poliza numeric NOT NULL,
    empresa varchar NOT NULL,
    tipo_poliza varchar NOT NULL,
    hospitalizacion boolean NOT NULL,
    cirugia boolean NOT NULL,
    maternidad boolean NOT NULL,
    radiografias boolean NOT NULL,
    examenes boolean NOT NULL,
    ambulancia boolean NOT NULL,
    cobertura float NOT NULL,
    aprobada boolean NOT NULL,
    PRIMARY KEY (sk_dim_poliza)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_personal_sanit (
    sk_dim_personal_sanit integer NOT NULL,
    cedula numeric NOT NULL, -- * Natural Key
    nombre_completo varchar NOT NULL,
    funcion varchar NOT NULL,
    id_area integer NOT NULL,
    CONSTRAINT "fk_area" FOREIGN KEY (id_area) REFERENCES OLAP.dim_area(sk_dim_area),
    PRIMARY KEY (sk_dim_personal_sanit)
);

-- * Tabla puente para la relación de muchos a muchos entre medicina y tratamiento
CREATE TABLE IF NOT EXISTS OLAP.puente_medicina_tratamiento (
    medicamento integer NOT NULL,
    tratamiento integer NOT NULL,
    factor_peso float NOT NULL,
    PRIMARY KEY (medicamento, tratamiento),
    CONSTRAINT "fk_medicamento" FOREIGN KEY (medicamento) REFERENCES OLAP.dim_medicamento(sk_dim_medicamento),
    CONSTRAINT "fk_tratamiento" FOREIGN KEY (tratamiento) REFERENCES OLAP.dim_tratamiento(sk_dim_tratamiento)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_registro_epidemiologico (
    sk_dim_registro_epidemiologico integer NOT NULL,
    estado varchar(25) NOT NULL,
    cantidad_hab numeric NOT NULL,
    enfermedad varchar(25) NOT NULL,
    cant_casos numeric NOT NULL,
    situacion_actual varchar(15) NOT NULL,
    PRIMARY KEY (sk_dim_registro_epidemiologico)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_historia_medica (
    sk_dim_historia_medica integer NOT NULL,
    nro_historia numeric NOT NULL,
    cedula numeric NOT NULL,
    fecha_actualizacion date NOT NULL,
    peso_actual  float NOT NULL,
    peso_ideal float NOT NULL,
    tension varchar NOT NULL,
    fumador boolean NOT NULL,
    prob_respiratorio boolean NOT NULL,
    PRIMARY KEY (sk_dim_historia_medica)
);

CREATE TABLE IF NOT EXISTS OLAP.dim_estado_factura (
    sk_dim_estado_factura integer NOT NULL,
    id_estado_factura uuid NOT NULL,
    descripcion varchar NOT NULL,
    PRIMARY KEY (sk_dim_estado_factura)
);

---------------------------------------------------------------
-- * Hechos:
---------------------------------------------------------------

CREATE TABLE IF NOT EXISTS OLAP.fact_facturacion (
    id_factura uuid NOT NULL,
    medico integer NOT NULL,
    paciente integer NOT NULL,
    tipo_servicio integer NOT NULL,
    fecha_emision integer NOT NULL,
    fecha_culminacion integer NULL,
    estado_factura integer NOT NULL,
    poliza integer NULL,
    area integer NOT NULL,
    historia_medica integer NULL,
    cobertura_poliza_dias integer NULL,
    numero_cama numeric NULL,
    cant_dias integer NULL,
    costo_servicio float NOT NULL,
    impuesto float NOT NULL,
    monto_total float NOT NULL,
    PRIMARY KEY (id_factura),
    CONSTRAINT "fk_fecha_emision" FOREIGN KEY (fecha_emision) REFERENCES OLAP.dim_tiempo(sk_dim_tiempo),
    CONSTRAINT "fk_fecha_culminacion" FOREIGN KEY (fecha_culminacion) REFERENCES OLAP.dim_tiempo(sk_dim_tiempo),
    CONSTRAINT "fk_historia_medica" FOREIGN KEY (historia_medica) REFERENCES OLAP.dim_historia_medica(sk_dim_historia_medica),
    CONSTRAINT "fk_medico" FOREIGN KEY (medico) REFERENCES OLAP.dim_medico(sk_dim_medico),
    CONSTRAINT "fk_paciente" FOREIGN KEY (paciente) REFERENCES OLAP.dim_paciente(sk_dim_paciente),
    CONSTRAINT "fk_tipo_servicio" FOREIGN KEY (tipo_servicio) REFERENCES OLAP.dim_tipo_servicio(sk_dim_tipo_servicio),
    CONSTRAINT "fk_estado_factura" FOREIGN KEY (estado_factura) REFERENCES OLAP.dim_estado_factura(sk_dim_estado_factura),
    CONSTRAINT "fk_poliza" FOREIGN KEY (poliza) REFERENCES OLAP.dim_poliza(sk_dim_poliza),
    CONSTRAINT "fk_area" FOREIGN KEY (area) REFERENCES OLAP.dim_area(sk_dim_area)
);

CREATE TABLE IF NOT EXISTS OLAP.fact_intervencion (
    medico integer NOT NULL,
    paciente integer NOT NULL,
    intervencion integer NOT NULL,
    fecha_practicada integer NOT NULL,
    riesgo integer NOT NULL,
    personal_sanitario integer NOT NULL,
    gastos_equipos float NOT NULL,
    costo_intervecion float NOT NULL,
    honorario_equipo float NOT NULL,
    duracion float NOT NULL,
    PRIMARY KEY (medico, paciente, intervencion, fecha_practicada, riesgo, personal_sanitario),
    CONSTRAINT "fk_medico" FOREIGN KEY (medico) REFERENCES OLAP.dim_medico(sk_dim_medico),
    CONSTRAINT "fk_paciente" FOREIGN KEY (paciente) REFERENCES OLAP.dim_paciente(sk_dim_paciente),
    CONSTRAINT "fk_intervencion" FOREIGN KEY (intervencion) REFERENCES OLAP.dim_intervencion(sk_dim_intervencion),
    CONSTRAINT "fk_fecha_practicada" FOREIGN KEY (fecha_practicada) REFERENCES OLAP.dim_tiempo(sk_dim_tiempo),
    CONSTRAINT "fk_riesgo" FOREIGN KEY (riesgo) REFERENCES OLAP.dim_riesgo(sk_dim_riesgo),
    CONSTRAINT "fk_personal_sanitario" FOREIGN KEY (personal_sanitario) REFERENCES OLAP.dim_personal_sanit(sk_dim_personal_sanit)
);

CREATE TABLE IF NOT EXISTS OLAP.fact_tratamiento (
    tratamiento integer NOT NULL,
    fecha_inicio_medicamento integer NOT NULL,
    fecha_fin_medicamento integer NOT NULL,
    medico integer NOT NULL,
    paciente integer NOT NULL,
    fecha_elaboracion_tratamiento integer NOT NULL,
    cant_dias integer NOT NULL,
    num_ingreso numeric NOT NULL,
    PRIMARY KEY (tratamiento, fecha_inicio_medicamento, fecha_fin_medicamento, medico, paciente, fecha_elaboracion_tratamiento),
    CONSTRAINT "fk_tratamiento" FOREIGN KEY (tratamiento) REFERENCES OLAP.dim_tratamiento(sk_dim_tratamiento),
    CONSTRAINT "fk_fecha_inicio_medicamento" FOREIGN KEY (fecha_inicio_medicamento) REFERENCES OLAP.dim_tiempo(sk_dim_tiempo),
    CONSTRAINT "fk_fecha_fin_medicamento" FOREIGN KEY (fecha_fin_medicamento) REFERENCES OLAP.dim_tiempo(sk_dim_tiempo),
    CONSTRAINT "fk_medico" FOREIGN KEY (medico) REFERENCES OLAP.dim_medico(sk_dim_medico),
    CONSTRAINT "fk_paciente" FOREIGN KEY (paciente) REFERENCES OLAP.dim_paciente(sk_dim_paciente),
    CONSTRAINT "fk_fecha_elaboracion_tratamiento" FOREIGN KEY (fecha_elaboracion_tratamiento) REFERENCES OLAP.dim_tiempo(sk_dim_tiempo)
);

CREATE TABLE IF NOT EXISTS OLAP.fact_diagnostico (
    medico integer NOT NULL,
    paciente integer NOT NULL,
    diagnostico integer NOT NULL,
    fecha_diagnostico integer NOT NULL,
    num_ingreso numeric NOT NULL,
    PRIMARY KEY (medico, paciente, diagnostico ,fecha_diagnostico),
    CONSTRAINT "fk_medico" FOREIGN KEY (medico) REFERENCES OLAP.dim_medico(sk_dim_medico),
    CONSTRAINT "fk_paciente" FOREIGN KEY (paciente) REFERENCES OLAP.dim_paciente(sk_dim_paciente),
    CONSTRAINT "fk_diagnostico" FOREIGN KEY (diagnostico) REFERENCES OLAP.dim_diagnostico(sk_dim_diagnostico),
    CONSTRAINT "fk_fecha_diagnostico" FOREIGN KEY (fecha_diagnostico) REFERENCES OLAP.dim_tiempo(sk_dim_tiempo)
);
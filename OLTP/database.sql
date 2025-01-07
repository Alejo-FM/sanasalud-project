---------------------------------------------------------------
-- * Database: `OLTP`
---------------------------------------------------------------

CREATE TABLE IF NOT EXISTS Diagnostico (
    id_diagnostico uuid NOT NULL DEFAULT gen_random_uuid(),
    tipo varchar NOT NULL,
    nombre varchar NOT NULL,
    descripcion varchar NOT NULL,
    costo float NOT NULL,
    PRIMARY KEY (id_diagnostico)
);

CREATE TABLE IF NOT EXISTS Intervencion (
    id_intervencion uuid NOT NULL DEFAULT gen_random_uuid(),
    descripcion varchar NOT NULL,
    tipo varchar NOT NULL,
    PRIMARY KEY (id_intervencion)
);

CREATE TABLE IF NOT EXISTS Sexo (
    id_sexo uuid NOT NULL DEFAULT gen_random_uuid(),
    descripcion varchar NOT NULL,
    PRIMARY KEY (id_sexo)
);

CREATE TABLE IF NOT EXISTS Estado_Civil (
    id_estado_civil uuid NOT NULL DEFAULT gen_random_uuid(),
    descripcion varchar NOT NULL,
    PRIMARY KEY (id_estado_civil)
);

CREATE TABLE IF NOT EXISTS Tipo_Proveedor (
    id_tipo_proveedor uuid NOT NULL DEFAULT gen_random_uuid(),
    descripcion varchar NOT NULL,
    PRIMARY KEY (id_tipo_proveedor)
);

CREATE TABLE IF NOT EXISTS Especialidad (
    id_especialidad uuid NOT NULL DEFAULT gen_random_uuid(),
    descripcion varchar NOT NULL,
    PRIMARY KEY (id_especialidad)
);

CREATE TABLE IF NOT EXISTS Estado (
    id_estado uuid NOT NULL DEFAULT gen_random_uuid(),
    nombre varchar NOT NULL,
    PRIMARY KEY (id_estado)
);

CREATE TABLE IF NOT EXISTS Tratamiento (
    id_tratamiento uuid NOT NULL DEFAULT gen_random_uuid(),
    descripcion varchar NOT NULL,
    costo float NOT NULL,
    PRIMARY KEY (id_tratamiento)
);

CREATE TABLE IF NOT EXISTS Ciudad (
    id_ciudad uuid NOT NULL DEFAULT gen_random_uuid(),
    nombre varchar NOT NULL,
    id_estado uuid NOT NULL,
    PRIMARY KEY (id_ciudad),
    CONSTRAINT "fk_estado" FOREIGN KEY (id_estado) REFERENCES Estado(id_estado)
);

CREATE TABLE IF NOT EXISTS Paciente (
    cedula numeric NOT NULL,
    nombre varchar NOT NULL,
    apellido varchar NOT NULL,
    fecha_nacimiento date NOT NULL,
    tipo_sangre varchar NOT NULL,
    nacionalidad varchar NOT NULL,
    estado_civil uuid NOT NULL,
    sexo uuid NOT NULL,
    id_ciudad uuid NOT NULL,
    PRIMARY KEY (cedula),
    CONSTRAINT "fk_estado_civil" FOREIGN KEY (estado_civil) REFERENCES Estado_Civil(id_estado_civil),
    CONSTRAINT "fk_sexo" FOREIGN KEY (sexo) REFERENCES Sexo(id_sexo),
    CONSTRAINT "fk_ciudad" FOREIGN KEY (id_ciudad) REFERENCES Ciudad(id_ciudad)
);

CREATE TABLE IF NOT EXISTS Medico (
    cedula numeric NOT NULL,
    cod_colegio_medico numeric NOT NULL,
    nombre varchar NOT NULL,
    apellido varchar NOT NULL,
    fecha_nacimiento date NOT NULL,
    fecha_contratacion date NOT NULL,
    sexo uuid NOT NULL,
    estado_civil uuid NOT NULL,
    id_especialidad uuid NOT NULL,
    id_ciudad uuid NOT NULL,
    PRIMARY KEY (cedula),
    CONSTRAINT "fk_estado_civil_medico" FOREIGN KEY (estado_civil) REFERENCES Estado_Civil(id_estado_civil),
    CONSTRAINT "fk_sexo_medico" FOREIGN KEY (sexo) REFERENCES Sexo(id_sexo),
    CONSTRAINT "fk_ciudad_medico" FOREIGN KEY (id_ciudad) REFERENCES Ciudad(id_ciudad),
    CONSTRAINT "fk_especialidad" FOREIGN KEY (id_especialidad) REFERENCES Especialidad(id_especialidad)
);

CREATE TABLE IF NOT EXISTS Proveedor (
    id_proveedor uuid NOT NULL DEFAULT gen_random_uuid(),
    nombre varchar NOT NULL,
    rif varchar NOT NULL,
    telefono varchar NOT NULL,
    fax varchar NOT NULL,
    tipo_proveedor uuid NOT NULL,
    id_ciudad uuid NOT NULL,
    direccion varchar NOT NULL,
    PRIMARY KEY (id_proveedor),
    CONSTRAINT "fk_tipo_proveedor" FOREIGN KEY (tipo_proveedor) REFERENCES Tipo_Proveedor(id_tipo_proveedor),
    CONSTRAINT "fk_ciudad_proveedor" FOREIGN KEY (id_ciudad) REFERENCES Ciudad(id_ciudad)
);

CREATE TABLE IF NOT EXISTS Medicamento (
    id_medicamento uuid NOT NULL DEFAULT gen_random_uuid(),
    nombre varchar NOT NULL,
    presentacion varchar NOT NULL,
    posologia varchar NOT NULL,
    efectos_secundarios varchar NOT NULL,
    proveedor uuid NOT NULL,
    PRIMARY KEY (id_medicamento),
    CONSTRAINT "fk_proveedor" FOREIGN KEY (proveedor) REFERENCES Proveedor(id_proveedor)
);

CREATE TABLE IF NOT EXISTS Area (
    id_area uuid NOT NULL DEFAULT gen_random_uuid(),
    piso varchar NOT NULL,
    pasillo varchar NOT NULL,
    especialidad uuid NOT NULL,
    ci_medico_encargado numeric NOT NULL,
    PRIMARY KEY (id_area),
    CONSTRAINT "fk_especialidad_area" FOREIGN KEY (especialidad) REFERENCES Especialidad(id_especialidad),
    CONSTRAINT "fk_medico_encargado" FOREIGN KEY (ci_medico_encargado) REFERENCES Medico(cedula)
);

CREATE TABLE IF NOT EXISTS Personal_Sanitario (
    ci_personal numeric NOT NULL,
    nombre varchar NOT NULL,
    apellido varchar NOT NULL,
    funcion varchar NOT NULL,
    id_area uuid NOT NULL,
    PRIMARY KEY (ci_personal),
    CONSTRAINT "fk_area_personal" FOREIGN KEY (id_area) REFERENCES Area(id_area)
);

CREATE TABLE IF NOT EXISTS Cama (
    numero_cama numeric NOT NULL,
    area_hospital uuid NOT NULL,
    PRIMARY KEY (numero_cama), -- ! Chekear si area_hospital es PK
    CONSTRAINT "fk_area_hospital" FOREIGN KEY (area_hospital) REFERENCES Area(id_area)
);

CREATE TABLE IF NOT EXISTS Aplica (
    medicamento uuid NOT NULL,
    tratamiento uuid NOT NULL,
    cant_dias numeric NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    PRIMARY KEY (medicamento, tratamiento, fecha_inicio),
    CONSTRAINT "fk_medicamento" FOREIGN KEY (medicamento) REFERENCES Medicamento(id_medicamento),
    CONSTRAINT "fk_tratamiento" FOREIGN KEY (tratamiento) REFERENCES Tratamiento(id_tratamiento)
);


CREATE TABLE IF NOT EXISTS Tiene (
    ci_medico numeric NOT NULL,
    id_especialidad uuid NOT NULL,
    años_experiencia numeric NOT NULL,
    PRIMARY KEY (ci_medico, id_especialidad),
    CONSTRAINT "fk_medico_tiene" FOREIGN KEY (ci_medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_especialidad_tiene" FOREIGN KEY (id_especialidad) REFERENCES Especialidad(id_especialidad)
);

CREATE TABLE IF NOT EXISTS Trabaja (
    ci_medico numeric NOT NULL,
    id_area uuid NOT NULL,
    fecha date NOT NULL,
    PRIMARY KEY (ci_medico, id_area, fecha),
    CONSTRAINT "fk_medico_trabaja" FOREIGN KEY (ci_medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_area_trabaja" FOREIGN KEY (id_area) REFERENCES Area(id_area)
);

CREATE TABLE IF NOT EXISTS Practica (
    ci_medico numeric NOT NULL,
    ci_paciente numeric NOT NULL,
    intervencion uuid NOT NULL,
    personal_sanitario numeric NOT NULL,
    fecha date NOT NULL,
    riesgo varchar NOT NULL,
    duracion numeric NOT NULL,
    gasto_equipos float NOT NULL,
    costo float NOT NULL,
    honorario_equipo float NOT NULL,
    costo_cubre float NULL,
    nro_poliza numeric NULL,
    PRIMARY KEY (ci_medico, ci_paciente, intervencion, personal_sanitario, fecha),
    CONSTRAINT "fk_medico_practica" FOREIGN KEY (ci_medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_paciente_practica" FOREIGN KEY (ci_paciente) REFERENCES Paciente(cedula),
    CONSTRAINT "fk_intervencion_practica" FOREIGN KEY (intervencion) REFERENCES Intervencion(id_intervencion),
    CONSTRAINT "fk_personal_sanitario_practica" FOREIGN KEY (personal_sanitario) REFERENCES Personal_Sanitario(ci_personal)
);

CREATE TABLE IF NOT EXISTS PRESCRIBE (
    ci_medico numeric NOT NULL,
    ci_paciente numeric NOT NULL,
    tratamiento uuid NOT NULL,
    numero_ingreso numeric NOT NULL,
    fecha_elaboracion date NOT NULL,
    PRIMARY KEY (ci_medico, ci_paciente, tratamiento, fecha_elaboracion),
    CONSTRAINT "fk_medico" FOREIGN KEY (ci_medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_paciente" FOREIGN KEY (ci_paciente) REFERENCES Paciente(cedula),
    CONSTRAINT "fk_tratamiento_prescribe" FOREIGN KEY (tratamiento) REFERENCES Tratamiento(id_tratamiento)
);

CREATE TABLE IF NOT EXISTS Realiza (
    ci_medico numeric NOT NULL,
    ci_paciente numeric NOT NULL,
    diagnostico uuid NOT NULL,
    numero_ingreso numeric NOT NULL,
    fecha_elaboracion date NOT NULL,
    PRIMARY KEY (ci_medico, ci_paciente, diagnostico, fecha_elaboracion),
    CONSTRAINT "fk_medico_realiza" FOREIGN KEY (ci_medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_paciente_realiza" FOREIGN KEY (ci_paciente) REFERENCES Paciente(cedula),
    CONSTRAINT "fk_diagnostico_realiza" FOREIGN KEY (diagnostico) REFERENCES Diagnostico(id_diagnostico)
);

CREATE TABLE IF NOT EXISTS Ocupa (
    ci_paciente numeric NOT NULL,
    numero_cama numeric NOT NULL,
    fecha_inicio date NOT NULL,
    cantidad_dias numeric NOT NULL,
    dias_cubiertos_seguro numeric NOT NULL,
    costo_diario float NOT NULL,
    status varchar NOT NULL,
    CONSTRAINT chk_status_ocupa CHECK (LOWER(status) IN ('ocupada', 'desocupada')),
    PRIMARY KEY (ci_paciente, numero_cama, fecha_inicio),
    CONSTRAINT "fk_paciente_ocupa" FOREIGN KEY (ci_paciente) REFERENCES Paciente(cedula),
    CONSTRAINT "fk_cama_ocupa" FOREIGN KEY (numero_cama) REFERENCES Cama(numero_cama)
);

CREATE TABLE IF NOT EXISTS Tipo_Servicio (
    id_tipo_servicio uuid NOT NULL DEFAULT gen_random_uuid(),
    descripcion varchar NOT NULL,
    PRIMARY KEY (id_tipo_servicio)
);

CREATE TABLE IF NOT EXISTS Estado_Factura (
    id_estado_factura uuid NOT NULL DEFAULT gen_random_uuid(),
    descripcion varchar NOT NULL,
    PRIMARY KEY (id_estado_factura)
);

CREATE TABLE IF NOT EXISTS Factura (
    id_factura uuid NOT NULL DEFAULT gen_random_uuid(),
    ci_paciente numeric NOT NULL,
    ci_medico numeric NOT NULL,
    area uuid NOT NULL,
    numero_cama numeric NULL,
    tipo_servicio uuid NOT NULL,
    estado_factura uuid NOT NULL,
    nro_poliza integer NULL,
    fecha_emision date NOT NULL,
    fecha_vencimiento date NOT NULL,
    fecha_pago date NULL,
    dias_cubiertos_seguro numeric NULL,
    costo_servicio float NOT NULL,
    impuesto float NOT NULL,
    PRIMARY KEY (id_factura),
    CONSTRAINT "fk_paciente" FOREIGN KEY (ci_paciente) REFERENCES Paciente(cedula),
    CONSTRAINT "fk_medico" FOREIGN KEY (ci_medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_area" FOREIGN KEY (area) REFERENCES Area(id_area),
    CONSTRAINT "fk_cama_ocupa" FOREIGN KEY (numero_cama) REFERENCES Cama(numero_cama),
    CONSTRAINT "fk_tipo_servicio" FOREIGN KEY (tipo_servicio) REFERENCES Tipo_Servicio(id_tipo_servicio),
    CONSTRAINT "fk_estado_factura" FOREIGN KEY (estado_factura) REFERENCES Estado_Factura(id_estado_factura)
);
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
    cedula number NOT NULL,
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
    cedula number NOT NULL,
    cod_colegio_medico number NOT NULL,
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
    ci_medico_encargado number NOT NULL,
    PRIMARY KEY (id_area),
    CONSTRAINT "fk_especialidad_area" FOREIGN KEY (especialidad) REFERENCES Especialidad(id_especialidad),
    CONSTRAINT "fk_medico_encargado" FOREIGN KEY (ci_medico_encargado) REFERENCES Medico(cedula)
);

CREATE TABLE IF NOT EXISTS Personal_Sanitario (
    ci_personal number NOT NULL,
    nombre varchar NOT NULL,
    apellido varchar NOT NULL,
    funcion varchar NOT NULL,
    id_area uuid NOT NULL,
    PRIMARY KEY (ci_personal),
    CONSTRAINT "fk_area_personal" FOREIGN KEY (id_area) REFERENCES Area(id_area)
);

CREATE TABLE IF NOT EXISTS Cama (
    numero_cama number NOT NULL,
    area_hospital uuid NOT NULL,
    PRIMARY KEY (numero_cama, area_hospital),
    CONSTRAINT "fk_area_hospital" FOREIGN KEY (area_hospital) REFERENCES Area(id_area)
);

CREATE TABLE IF NOT EXISTS Aplica (
    medicamento uuid NOT NULL,
    tratamiento uuid NOT NULL,
    cant_dias number NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    PRIMARY KEY (medicamento, tratamiento),
    CONSTRAINT "fk_medicamento" FOREIGN KEY (medicamento) REFERENCES Medicamento(id_medicamento),
    CONSTRAINT "fk_tratamiento" FOREIGN KEY (tratamiento) REFERENCES Tratamiento(id_tratamiento)
);

CREATE TABLE IF NOT EXISTS PRESCRIBE (
    ci_medico number NOT NULL,
    ci_paciente number NOT NULL,
    tratamiento uuid NOT NULL,
    numero_ingreso number NOT NULL,
    fecha_elaboracion date NOT NULL,
    PRIMARY KEY (ci_medico, ci_paciente, tratamiento),
    CONSTRAINT "fk_medico" FOREIGN KEY (medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_paciente" FOREIGN KEY (paciente) REFERENCES Paciente(cedula),
    CONSTRAINT "fk_tratamiento_prescribe" FOREIGN KEY (tratamiento) REFERENCES Tratamiento(id_tratamiento)
);

CREATE TABLE IF NOT EXISTS Tiene (
    ci_medico number NOT NULL,
    id_especialidad uuid NOT NULL,
    años_experiencia number NOT NULL,
    PRIMARY KEY (ci_medico, id_especialidad),
    CONSTRAINT "fk_medico_tiene" FOREIGN KEY (ci_medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_especialidad_tiene" FOREIGN KEY (id_especialidad) REFERENCES Especialidad(id_especialidad)
);

CREATE TABLE IF NOT EXISTS Trabaja (
    ci_medico number NOT NULL,
    id_area uuid NOT NULL,
    fecha date NOT NULL,
    PRIMARY KEY (ci_medico, id_area),
    CONSTRAINT "fk_medico_trabaja" FOREIGN KEY (ci_medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_area_trabaja" FOREIGN KEY (id_area) REFERENCES Area(id_area)
);

CREATE TABLE IF NOT EXISTS Practica (
    ci_medico number NOT NULL,
    ci_paciente number NOT NULL,
    intervencion uuid NOT NULL,
    personal_sanitario number NOT NULL,
    fecha date NOT NULL,
    riesgo varchar NOT NULL,
    duracion number NOT NULL,
    gasto_equipos float NOT NULL,
    costo float NOT NULL,
    honorario_equipo float NOT NULL,
    PRIMARY KEY (ci_medico, ci_paciente, intervencion, personal_sanitario),
    CONSTRAINT "fk_medico_practica" FOREIGN KEY (ci_medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_paciente_practica" FOREIGN KEY (ci_paciente) REFERENCES Paciente(cedula),
    CONSTRAINT "fk_intervencion_practica" FOREIGN KEY (intervencion) REFERENCES Intervencion(id_intervencion),
    CONSTRAINT "fk_personal_sanitario_practica" FOREIGN KEY (personal_sanitario) REFERENCES Personal_Sanitario(ci_personal)
);

CREATE TABLE IF NOT EXISTS Realiza (
    ci_medico number NOT NULL,
    ci_paciente number NOT NULL,
    diagnostico uuid NOT NULL,
    numero_ingreso number NOT NULL,
    fecha_elaboracion date NOT NULL,
    PRIMARY KEY (ci_medico, ci_paciente, diagnostico),
    CONSTRAINT "fk_medico_realiza" FOREIGN KEY (ci_medico) REFERENCES Medico(cedula),
    CONSTRAINT "fk_paciente_realiza" FOREIGN KEY (ci_paciente) REFERENCES Paciente(cedula),
    CONSTRAINT "fk_diagnostico_realiza" FOREIGN KEY (diagnostico) REFERENCES Diagnostico(id_diagnostico)
);

CREATE TABLE IF NOT EXISTS Ocupa (
    ci_paciente number NOT NULL,
    numero_cama number NOT NULL,
    fecha_inicio date NOT NULL,
    cantidad_dias number NOT NULL,
    dias_cubiertos_seguro number NOT NULL,
    costo_diario float NOT NULL,
    status varchar NOT NULL,
    PRIMARY KEY (ci_paciente, numero_cama),
    CONSTRAINT "fk_paciente_ocupa" FOREIGN KEY (ci_paciente) REFERENCES Paciente(cedula),
    CONSTRAINT "fk_cama_ocupa" FOREIGN KEY (numero_cama) REFERENCES Cama(numero_cama)
);
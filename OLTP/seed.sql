BEGIN;

-- ===========================================
--          *Inserts de tablas sin FK*
-- ===========================================

INSERT INTO Sexo ("id_sexo","descripcion") VALUES
('71eb17bb-2d12-5660-90f2-b4e0a0a3caac','Masculino'),
('3fef0ae6-9c32-5113-af41-86ad8006607f','Femenino');

INSERT INTO Diagnostico ("id_diagnostico","tipo","nombre","descripcion","costo") VALUES
-- Cardiología
('84a9c401-ac17-50d2-a52e-15cb86d86344','Clínico','Electrocardiografía (ECG)','Estudio de la actividad eléctrica del corazón utilizando electrodos ajustados a brazos, piernas y tórax',300.00),
('20bd7d02-58ff-5d1b-9fd8-7ac17e3c9ca8','Clínico','Auscultación','Auscultar con un fonendoscopio para detectar los ruidos anómalos del corazón',300.00),
('260083cb-670a-5d0c-bddf-666f8286dcca','Imagenología','Ecocardiografía','Exploración de la estructura y de la función cardíaca utilizando ultrasonidos',300.00),

-- Cirugía
('fe6d16da-cc06-43fa-893e-c787ec4e3d8a', 'laboratorio', 'Análisis de sangre completo', 'Evaluación de diversos componentes sanguíneos', 800),
('b5b49948-2d98-4e60-be41-4a21b513dc33', 'clínico', 'Diabetes mellitus tipo 2', 'Enfermedad crónica que afecta la forma en que el cuerpo convierte el azúcar en energía', 1200),
('fbc4e9a6-4d94-4c48-9bce-3588ffc6130c', 'imagenología', 'Radiografía de tórax', 'Imagen del tórax para evaluar el corazón y los pulmones', 500),

-- Dermatología
('9b7d2dea-a00b-522d-89d8-6b92336b5f3f', 'Laboratorio', 'Pruebas cutáneas de alergia','Pruebas para detectar alergias realizadas mediante la colocación de una solución que contiene un posible alérgeno sobre la piel y pinchando a continuación la piel con una aguja',300.00),
('c3fbe171-c95f-5221-9532-01c5bc127337', 'Laboratorio', 'Biopsia de piel','Extracción y examen de una muestra de piel en el microscopio para detectar un cáncer u otra anomalía',300.00),

-- Endocrinología
('43d5655c-2c4a-5bc2-84bd-78a3ce2aef22', 'Laboratorio', 'Prueba de anticuerpos antitiroideos','Mide ciertos anticuerpos tiroideos (indicadores en la sangre). Esta prueba puede ayudar a diagnosticar trastornos tiroideos autoinmunes',300.00),
('989103ec-e4bc-5e2d-ae9d-b7b47116c7dc', 'Imagenología', 'Gammagrafía de tiroides','Utiliza pequeñas cantidades de material radiactivo para crear una imagen de la tiroides, mostrando su tamaño, forma y posición. Puede ayudar a encontrar la causa del hipertiroidismo y detectar nódulos tiroideos (protuberancias en la tiroides)',300.00),
('238dc22b-395b-5b28-89fc-9dca0bcdae52', 'Laboratorio', 'Prueba de captación tiroidea','Comprueba cómo la tiroides está funcionando y puede ayudar a encontrar la causa de hipertiroidismo',300.00),

-- Gastroenterología
('57b96acd-9f7a-5fae-b79d-8f8305fdf533', 'Imagenología', 'Endoscopia','Examen visual directo de las estructuras internas utilizando un tubo de visión flexible',300.00),
('ea270555-ed7e-50a2-b761-38db82fd797c', 'Laboratorio', 'Análisis para detectar sangre oculta','Prueba para detectar sangre en las heces',300.00),
('57827498-0c2c-58fe-ab6c-81ec8e1ac5d7', 'Imagenología', 'Sigmoidoscopia','Inspección visual directa mediante una sonda óptica para detectar tumores u otras anomalías',300.00),

-- Neurología
('560c09c1-79d1-5118-ae40-fd1578602040', 'Clínico', 'Electroencefalografía (EEG)','Estudio de la actividad eléctrica del cerebro utilizando electrodos conectados al cuero cabelludo',300.00),
('988f03de-66d2-5468-9e9e-b8fa30b680be', 'Imagenología', 'Arteriografía','Examen de los vasos sanguíneos del cerebro.',300.00),
('c371a149-5999-5a6f-8096-5b3735eefd34', 'Imagenología', 'Resonancia magnética (MRI):','Imágenes detalladas del cerebro y sistema nervioso.',300.00),

-- Pediatría
('5c027911-4ec9-5b6c-aa42-775b6cefb73c', 'Clínico', 'Examen de visión','Evaluación de la capacidad visual en niños.',300.00),
('62e51f45-1325-5438-8254-74881b902317', 'Clínico', 'Prueba de audición','Evaluación de la audición en pacientes pediátricos.',300.00),
('ed0a6509-be91-5a48-87bf-766830041148', 'Clínico', 'Prueba de desarrollo infantil.','Evaluación del desarrollo físico y mental en niños',300.00),

-- Psiquiatría
('9825a99c-445e-5f38-bbc7-5369f889d52e', 'Clínico', 'Evaluación psicológica','Análisis de la salud mental del paciente.',300.00),
('9f8599a6-ffbd-5cfd-b43e-ce6884908266', 'Clínico', 'Prueba de función cognitiva','Evaluación de las funciones mentales y cognitivas.',300.00),
('d626c0dd-716a-5c1f-a391-c91230522d69', 'Clínico', 'Prueba de personalidad','Evaluación de rasgos y estilos de personalidad.',300.00),

-- Radioterapia
('7ff7f8df-bf84-51cc-9229-69315cccc559', 'Imagenología', 'Imagenología para radioterapia.','Estudio de imágenes para planificar el tratamiento',300.00),
('01786bda-8319-5b93-b487-2f073b8b8b53', 'Imagenología', 'Escáner PET','Evaluación de la actividad metabólica de los tejidos para detectar cáncer',300.00),

-- Traumatología
('3f3e700a-f855-558a-a7c6-d34068c18130', 'Imagenología', 'Radiografía de extremidades','Examen de rayos X para evaluar fracturas y lesiones.',300.00),
('81fbb6b8-3d71-5fc6-854a-8183234e31b9', 'Imagenología', 'Tomografía computarizada (TAC)','Imágenes detalladas para evaluar lesiones internas.',300.00),
('995fbe33-5d80-5512-ab78-732fcd154fc4', 'Clínico', 'Examen físico','Evaluación general del paciente para identificar lesiones musculoesqueléticas.',300.00);

INSERT INTO Intervencion ("id_intervencion","tipo","descripcion") VALUES
('88304d3d-6d0c-5994-aca0-3f33840f379e','Cateterismo cardiaco', 'Procedimiento para examinar y tratar enfermedades del corazón.'),
('a7dc07c2-e580-528f-a9dd-fb5a0d4e698f','Apendicectomía', 'Cirugía para extirpar el apéndice.'),
('f11a5a29-9b46-50bf-9969-b4d8ec2b5c62','Escisión de melanoma', 'Extirpación quirúrgica de un melanoma maligno.'),
('4a9c6a79-9add-5abb-85f9-feff7584b329','Tireoidectomía', 'Cirugía para remover parte o toda la glándula tiroides.'),
('0957307c-277f-545b-a53c-5ddcc164ee19','Gastrectomía', 'Extirpación parcial o total del estómago.'),
('488110c3-1a7c-5580-a6f7-cd720fba29f8','Craneotomía', 'Cirugía que implica la apertura del cráneo.'),
('d2a1eb63-31fe-530a-8c25-a0dc9ffa7916','Reparación de hernia umbilical', 'Procedimiento para corregir una hernia en la región del ombligo.'),
('66bf0e44-b3f2-5f07-9244-92af1e51138d','Terapia electroconvulsiva', 'Tratamiento psiquiátrico que utiliza corrientes eléctricas para inducir convulsiones.'),
('c3dcc2c5-08e9-536c-8f12-1d687e144527','Radiocirugía estereotáctica', 'Tratamiento no invasivo que utiliza radiación para eliminar tumores.'),
('6baa7c90-cf72-5e4f-a491-013af27cadb1','Reparación de ligamento', 'Intervención para reparar un ligamento lesionado.');

INSERT INTO Estado_Civil ("id_estado_civil","descripcion") VALUES
('e6269b0c-41cb-5a23-9398-8ba72edb7d5e','Soltero'),
('0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','Casado'),
('b11caa7b-a474-52a4-a839-e67104e25b46','Divorciado'),
('aa988cdd-cce5-576f-a9c6-949ef1e94ee3','Viudo');

INSERT INTO Tipo_Proveedor ("id_tipo_proveedor","descripcion") VALUES
('6d0ed8bc-d713-5c0f-90f1-17375b06ba66','Clínica pública'),
('87c995bf-de0d-539a-bb59-fa1b5546c3f4','Clínica privada'),
('f9c3a75d-366c-53f6-9799-d4fee6ac2965','Insumos y Equipos Médicos'),
('5ac3e9b5-8139-5923-9689-44293003fec7','Imagenología'),
('6b9577cf-f181-565e-997e-5a6b1a949af7','Laboratorio');

INSERT INTO Especialidad ("id_especialidad","descripcion") VALUES
('7d0940f4-00f5-5b49-80a8-2e2e9808f125','Cardiología'), 
('e9547c38-c134-52ea-b1ed-867d43886a79','Cirugía'), 
('92780479-9be4-5846-aa22-161960ee7226','Dermatología'),
('8a63f894-a753-538d-9827-70712e136713','Endocrinología'), 
('27775682-5acd-59e3-aacf-7b3ad39619d7','Gastroenterología'), 
('4276c64b-54e3-5097-9961-f62ae43b1697','Neurología'), 
('a73fa555-a0a4-5ca3-9b28-8c35353c323f','Pediatría'), 
('70d03f8d-d066-58e7-aaa1-052ff217da68','Psiquiatría'), 
('63dd25c5-2fd7-5dd2-bef8-a044fec513d8','Radioterapia'),
('4173e088-7620-5f19-8486-4c8d265974f2','Traumatología');

INSERT INTO Tratamiento ("id_tratamiento","descripcion","costo") VALUES
-- Cardiología
('686d6b61-3fa1-5444-bf9a-d6ed6b6ce5ee','Angioplastia coronaria', 5000.00),
('16442917-012f-5e52-9c33-24f811d21e81','Implante de marcapasos para regular los latidos del corazón.', 5000.00),

-- Cirugía
('cb12980d-2672-4498-af23-d51cd3951705', 'Tratamiento de apendicitis', 1500.00),
('8d89328e-476c-4861-9332-dbb5b46dfdd2', 'Colecistectomía laparoscópica', 3000.00),
('2c93145e-bcb9-4db9-ae0d-2949790b30f9', 'Reconstrucción de ligamentos', 4500.00),

-- Dermatología
('c9741d12-443f-541f-a66f-63bf210c9c75','Tratamiento tópico para acne',5000.00),
('1704d4d1-5b42-5d08-86ca-55355b64b24c','Tratamiento láser para remover cicatrices',5000.00),

-- Endocrinología
('ad1cf50f-6f91-5ffa-ab66-d607ab7ffaa2','Tratamiento hormonal para la diabetes',5000.00),
('770281f9-b350-5716-8f92-158bfc6516ae','Tratamiento para el crecimiento hormonal',5000.00),

-- Gastroenterología
('0925a3b0-cc4c-54a0-9b5c-445a35830943','Tratamiento de úlceras gástricas', 5000.00),
('13928637-577d-5ae1-a2d5-6b30b78ad458','Tratamiento de reflujo gastroesofágico', 5000.00),

-- Neurología
('265b06ad-f4f1-5e5b-bb85-dcab397b8d80','Terapia de estimulación cerebral profunda.', 5000.00),
('ddaaec73-7992-5201-85a7-5c504cd34d2d','Tratamiento de la migraña',5000.00),

-- Pediatría
('e5f4e296-b281-57f3-b2ad-5ad12aa1ac7c','Vacunación infantil contra enfermedades comunes.', 5000.00),
('21d0bde6-3955-5998-8083-fdbda64d8a2d','Tratamiento para la fiebre alta en niños',5000.00),

-- Psiquiatría
('b4c820e5-6cb3-5300-810a-af7f59ce466a','Tratamiento para la esquizofrenia', 5000.00),
('b4279c47-0b59-5633-91da-2a6779d930fe','Tratamiento para la depresión',5000.00),

-- Radioterapia
('4d627ab3-1c0f-5487-b1b1-016f0b550784','Tratamiento de radioterapia para el cáncer',5000.00),
('c1d06188-1762-5c6d-86dc-10de044de704','Tratamiento de quimioterapia para el cáncer',5000.00),

-- Traumatología
('7362d20d-9cb7-5d95-849f-2916e4022a7c','Tratamiento para la rehabilitación de lesiones deportivas',5000.00),
('28b4cb18-944d-5d44-8162-5a56d1a6295a','Inyecciones de corticosteroides', 5000.00);

INSERT INTO Estado ("id_estado","nombre") VALUES
('1ae9acfc-ef48-57c6-a57f-a03dfac413ed','Amazonas'),
('36ce9a76-52e4-5e96-8f68-ce64ae6c26c2','Anzoátegui'),
('ce67a160-ba3f-59d4-b4e0-8f6d25fee2df','Apure'),
('1614b033-4eaa-530d-9ddd-0a20bf5237b5','Sucre'),
('cf26107c-a719-52c3-88ca-611c0e9744e1','Vargas'),
('9eccee73-cb39-5715-ba6d-0ca349f1cf3d','Yaracuy'),
('843a91b9-f2aa-5fc9-95e5-fdb450868cf4','Zulia'),
('6966a590-25dd-5a0d-b26e-a834ba4981ed','Miranda'),
('56310c80-f559-5466-94dd-fb0c6393d166','Distrito Capital');

-- ===========================================
--          *Inserts de tablas con FK*
-- ===========================================

INSERT INTO Ciudad ("id_ciudad","nombre", "id_estado") VALUES
('17aec501-ed9c-53f9-95f3-6248e3de76c1','Puerto Ayacucho','1ae9acfc-ef48-57c6-a57f-a03dfac413ed'),
('37836684-af6d-53ce-a31d-0a4396f4033c','Puerto La Cruz','36ce9a76-52e4-5e96-8f68-ce64ae6c26c2'),
('39c85287-6aec-57cc-9d18-eec87914804b','San Fernando de Apure','ce67a160-ba3f-59d4-b4e0-8f6d25fee2df'),
('79ae4e2c-3f2e-5163-9a62-f608607d40a6','Macuto','1614b033-4eaa-530d-9ddd-0a20bf5237b5'),
('7fadcc54-031d-5a2b-b4fb-d1b0ef19f2a4','Cumaná','cf26107c-a719-52c3-88ca-611c0e9744e1'),
('b2d48eb9-a788-5a88-abf4-43222457932f','San Felipe','9eccee73-cb39-5715-ba6d-0ca349f1cf3d'),
('a22447ad-b66b-5726-9517-103c2c1a0b11','Maracaibo','843a91b9-f2aa-5fc9-95e5-fdb450868cf4'),

-- Miranda
('c855650a-a5bd-56d0-ace2-90750ae0998d','Los Teques','6966a590-25dd-5a0d-b26e-a834ba4981ed'),
('76d933a6-cec5-5ac2-9582-a17aa89b23d5','Guatire','6966a590-25dd-5a0d-b26e-a834ba4981ed'),
('aca1b866-10c3-53dc-a3d2-33a44a7fe1a9','Guarenas','6966a590-25dd-5a0d-b26e-a834ba4981ed'),
('1b1b2411-e421-5960-a8bb-7c1f5c301f51','Charallave','6966a590-25dd-5a0d-b26e-a834ba4981ed'),

('89349ce9-6552-52f2-88b5-c2feaa47463a','Caracas','56310c80-f559-5466-94dd-fb0c6393d166');

INSERT INTO Paciente ("cedula","nombre","apellido","fecha_nacimiento","tipo_sangre","nacionalidad", "estado_civil","sexo","id_ciudad" ) VALUES
(16428665, 'Juan', 'González', '1983-02-12', 'O+', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', 'c855650a-a5bd-56d0-ace2-90750ae0998d'),
(19099695, 'Carlos', 'Hernández', '1988-09-10', 'B+', 'Venezolano', 'b11caa7b-a474-52a4-a839-e67104e25b46', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '76d933a6-cec5-5ac2-9582-a17aa89b23d5'),
(7046720, 'Luis', 'García', '1970-09-17', 'O-', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', 'aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(16612540, 'Pedro', 'López', '1984-12-13', 'B-', 'Venezolano', 'b11caa7b-a474-52a4-a839-e67104e25b46', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '1b1b2411-e421-5960-a8bb-7c1f5c301f51'),
(17023670, 'Jorge', 'Gómez', '1986-09-11', 'O+', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(16678412, 'Rafael', 'Torres', '1985-07-19', 'B-', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', 'aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(7181920, 'Héctor', 'Flores', '1970-09-18', 'AB+', 'Venezolano', 'b11caa7b-a474-52a4-a839-e67104e25b46', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '76d933a6-cec5-5ac2-9582-a17aa89b23d5'),
(18789012, 'Óscar', 'Mendoza', '1988-05-15', 'B+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '1b1b2411-e421-5960-a8bb-7c1f5c301f51'),
(18901234, 'Gabriel', 'Pineda', '1987-06-26', 'AB-', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', 'a22447ad-b66b-5726-9517-103c2c1a0b11'),
(15012345, 'Lucía', 'Cortés', '1982-04-10', 'A+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '3fef0ae6-9c32-5113-af41-86ad8006607f', '1b1b2411-e421-5960-a8bb-7c1f5c301f51'),
(17404058, 'Silvia', 'González', '1985-10-14', 'O-', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '3fef0ae6-9c32-5113-af41-86ad8006607f', '76d933a6-cec5-5ac2-9582-a17aa89b23d5'),
(16111456, 'Fernando', 'Díaz', '1984-12-04', 'B-', 'Venezolano', 'b11caa7b-a474-52a4-a839-e67104e25b46', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', 'b2d48eb9-a788-5a88-abf4-43222457932f'),
(19345678, 'Roberto', 'Hernández', '1988-12-06', 'AB+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '76d933a6-cec5-5ac2-9582-a17aa89b23d5'),
(20345678, 'Juan', 'Pérez', '1989-03-04', 'O+', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(12678901, 'Ana', 'Hernández', '1978-08-11', 'AB-', 'Venezolano', 'b11caa7b-a474-52a4-a839-e67104e25b46', '3fef0ae6-9c32-5113-af41-86ad8006607f', 'aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(26456789, 'María', 'González', '1998-04-09', 'A-', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '3fef0ae6-9c32-5113-af41-86ad8006607f', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(20567890, 'José', 'Martínez', '1992-01-01', 'B+', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', 'aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(23789012, 'Luis', 'Ramírez', '1995-08-28', 'O-', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(25901234, 'Andrés', 'Cruz', '1997-01-24', 'B-', 'Venezolano', 'aa988cdd-cce5-576f-a9c6-949ef1e94ee3', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(20890123, 'Carla', 'Torres', '1992-12-28', 'A+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '3fef0ae6-9c32-5113-af41-86ad8006607f', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(26012345, 'Sofía', 'Vásquez', '1998-10-11', 'AB+', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '3fef0ae6-9c32-5113-af41-86ad8006607f', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(27678902, 'Paola', 'Castillo', '1999-02-01', 'A+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '3fef0ae6-9c32-5113-af41-86ad8006607f', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(26890124, 'Valentina', 'Rojas', '1999-04-20', 'AB+', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '3fef0ae6-9c32-5113-af41-86ad8006607f', 'c855650a-a5bd-56d0-ace2-90750ae0998d'),
(24789013, 'David', 'Salas', '1996-09-11', 'B-', 'Venezolano', 'aa988cdd-cce5-576f-a9c6-949ef1e94ee3', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', 'c855650a-a5bd-56d0-ace2-90750ae0998d'),
(19901235, 'Santiago', 'Ortega', '1991-10-03', 'O+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(28123457, 'Manuel', 'Mora', '2001-06-27', 'B+', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(30123465, 'Gabriela', 'Alvarez', '2003-07-05', 'A-', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '3fef0ae6-9c32-5113-af41-86ad8006607f', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(29234568, 'Natalia', 'Paredes', '2002-09-18', 'AB-', 'Venezolano', 'b11caa7b-a474-52a4-a839-e67104e25b46', '3fef0ae6-9c32-5113-af41-86ad8006607f', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(29586555, 'Javier', 'Serrano', '2002-05-01', 'O-', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(27224935, 'Fernando', 'Mendoza', '2000-07-07', 'O+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', 'aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(26497615, 'Andrés', 'Mora', '1999-08-12', 'B+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', 'aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(27038761, 'Miguel', 'Brito', '2000-04-02', 'A+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', 'aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(27586901, 'Gabriela', 'Flores', '2000-04-02', 'O-', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '3fef0ae6-9c32-5113-af41-86ad8006607f', '89349ce9-6552-52f2-88b5-c2feaa47463a'),

-- Niños/Pediatría
(34158314, 'Isabela', 'González', '2014-12-19', 'A+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '3fef0ae6-9c32-5113-af41-86ad8006607f', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(35425897, 'Sofía', 'Castillo', '2015-09-03', 'AB+', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '3fef0ae6-9c32-5113-af41-86ad8006607f', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(34125252, 'Lucía', 'Rojas', '2015-04-30', 'A+', 'Venezolano', '0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc', '3fef0ae6-9c32-5113-af41-86ad8006607f', '89349ce9-6552-52f2-88b5-c2feaa47463a'),
(34168748, 'María', 'Cárdenas', '2016-05-29', 'AB+', 'Venezolano', 'e6269b0c-41cb-5a23-9398-8ba72edb7d5e', '3fef0ae6-9c32-5113-af41-86ad8006607f', 'aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(34222578, 'David', 'Castillo', '2015-02-19', 'B-', 'Venezolano', 'aa988cdd-cce5-576f-a9c6-949ef1e94ee3', '71eb17bb-2d12-5660-90f2-b4e0a0a3caac', '1b1b2411-e421-5960-a8bb-7c1f5c301f51');

INSERT INTO Medico ("cedula","cod_colegio_medico","nombre","apellido","fecha_nacimiento","fecha_contratacion",  "sexo","estado_civil","id_especialidad","id_ciudad" ) VALUES
-- Cardiología
(12647863,101,'José','Contrareas','1980-07-24','2021-01-01',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','7d0940f4-00f5-5b49-80a8-2e2e9808f125','89349ce9-6552-52f2-88b5-c2feaa47463a'),
(18676295,102,'Carlos','Morales','1989-08-26','2021-01-01',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','b11caa7b-a474-52a4-a839-e67104e25b46','7d0940f4-00f5-5b49-80a8-2e2e9808f125','aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(15526267,103,'Juan','Herrera','1984-12-14','2021-01-01',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','7d0940f4-00f5-5b49-80a8-2e2e9808f125','89349ce9-6552-52f2-88b5-c2feaa47463a'),

-- Cirugía
(11240089,104,'Luis','Vargas','1977-07-10','2021-01-02',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','b11caa7b-a474-52a4-a839-e67104e25b46','e9547c38-c134-52ea-b1ed-867d43886a79','aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(19269386,105,'Jesús','Méndez','1991-11-30','2021-01-02',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','e9547c38-c134-52ea-b1ed-867d43886a79','89349ce9-6552-52f2-88b5-c2feaa47463a'),
(16676423,106,'Pedro','Parra','1986-06-15','2021-01-02',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','e9547c38-c134-52ea-b1ed-867d43886a79','89349ce9-6552-52f2-88b5-c2feaa47463a'),

-- Dermatología
(13963902,107,'Eduarda','Ruiz','1981-08-15','2021-01-03',  '3fef0ae6-9c32-5113-af41-86ad8006607f','b11caa7b-a474-52a4-a839-e67104e25b46','92780479-9be4-5846-aa22-161960ee7226','89349ce9-6552-52f2-88b5-c2feaa47463a'),
(18647497,108,'Ángela','Ramos','1988-06-18','2021-01-03',  '3fef0ae6-9c32-5113-af41-86ad8006607f','0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','92780479-9be4-5846-aa22-161960ee7226','89349ce9-6552-52f2-88b5-c2feaa47463a'),
(15099081,109,'Francisco','Blanco','1982-04-11','2021-01-03',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','92780479-9be4-5846-aa22-161960ee7226','89349ce9-6552-52f2-88b5-c2feaa47463a'),

-- Endocrinología
(16314856,110,'Adriana','Rivero','1985-01-14','2021-01-04',  '3fef0ae6-9c32-5113-af41-86ad8006607f','0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','8a63f894-a753-538d-9827-70712e136713','c855650a-a5bd-56d0-ace2-90750ae0998d'),
(19472345,111,'Mónica','Quintero','1989-08-06','2021-01-04',  '3fef0ae6-9c32-5113-af41-86ad8006607f','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','8a63f894-a753-538d-9827-70712e136713','c855650a-a5bd-56d0-ace2-90750ae0998d'),
(20643559,112,'Fermín','Briceño','1990-06-05','2021-01-04',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','b11caa7b-a474-52a4-a839-e67104e25b46','8a63f894-a753-538d-9827-70712e136713','89349ce9-6552-52f2-88b5-c2feaa47463a'),

-- Gastroenterología
(16827489,113,'Nicolás','Reyes','1984-01-13','2021-01-05',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','27775682-5acd-59e3-aacf-7b3ad39619d7','89349ce9-6552-52f2-88b5-c2feaa47463a'),
(17537759,114,'Joaquín','Zambrano','1986-01-24','2021-01-05',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','27775682-5acd-59e3-aacf-7b3ad39619d7','89349ce9-6552-52f2-88b5-c2feaa47463a'),
(17879229,115,'Facundo','Vásquez','1986-01-29','2021-01-05',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','b11caa7b-a474-52a4-a839-e67104e25b46','27775682-5acd-59e3-aacf-7b3ad39619d7','89349ce9-6552-52f2-88b5-c2feaa47463a'),

-- Neurología
(18471502,116,'Maximiliano','León','1987-07-25','2021-01-06',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','4276c64b-54e3-5097-9961-f62ae43b1697','89349ce9-6552-52f2-88b5-c2feaa47463a'),
(20889460,117,'Sebastián','Delgado','1991-12-10','2021-01-06',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','4276c64b-54e3-5097-9961-f62ae43b1697','aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(20736082,118,'Ricardo','Rondón','1991-08-10','2021-01-06',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','4276c64b-54e3-5097-9961-f62ae43b1697','c855650a-a5bd-56d0-ace2-90750ae0998d'),

-- Pediatría
(14662267,119,'Fernanda','Marcano','1982-04-05','2021-01-07',  '3fef0ae6-9c32-5113-af41-86ad8006607f','aa988cdd-cce5-576f-a9c6-949ef1e94ee3','a73fa555-a0a4-5ca3-9b28-8c35353c323f','76d933a6-cec5-5ac2-9582-a17aa89b23d5'),
(19787057,120,'Pablo','Castro','1990-01-03','2021-01-07',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','a73fa555-a0a4-5ca3-9b28-8c35353c323f','aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(15632673,121,'Hugo','Acosta','1985-12-10','2021-01-07',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','a73fa555-a0a4-5ca3-9b28-8c35353c323f','1b1b2411-e421-5960-a8bb-7c1f5c301f51'),

-- Psiquiatría
(11569434,122,'Oscar','Tovar','1978-06-14','2021-01-08',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','70d03f8d-d066-58e7-aaa1-052ff217da68','c855650a-a5bd-56d0-ace2-90750ae0998d'),
(12777597,123,'Emiliana','Barrios','1980-04-01','2021-01-08',  '3fef0ae6-9c32-5113-af41-86ad8006607f','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','70d03f8d-d066-58e7-aaa1-052ff217da68','1b1b2411-e421-5960-a8bb-7c1f5c301f51'),
(11495302,124,'Andrés','Alvarado','1979-08-19','2021-01-08',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','aa988cdd-cce5-576f-a9c6-949ef1e94ee3','70d03f8d-d066-58e7-aaa1-052ff217da68','1b1b2411-e421-5960-a8bb-7c1f5c301f51'),

-- Radioterapia
(10024729,125,'Jorge','Gil','1976-11-05','2021-01-09',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','63dd25c5-2fd7-5dd2-bef8-a044fec513d8','aca1b866-10c3-53dc-a3d2-33a44a7fe1a9'),
(16037159,126,'Manuel','Marín','1985-12-16','2021-01-09',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','63dd25c5-2fd7-5dd2-bef8-a044fec513d8','89349ce9-6552-52f2-88b5-c2feaa47463a'),
(16424732,127,'Luis','Mora','1984-08-26','2021-01-09',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','63dd25c5-2fd7-5dd2-bef8-a044fec513d8','89349ce9-6552-52f2-88b5-c2feaa47463a'),

-- Traumatología
(14928128,128,'Gabriela','Colmenares','1982-08-31','2021-01-10',  '3fef0ae6-9c32-5113-af41-86ad8006607f','b11caa7b-a474-52a4-a839-e67104e25b46','4173e088-7620-5f19-8486-4c8d265974f2','89349ce9-6552-52f2-88b5-c2feaa47463a'),
(19086367,129,'Mauricio','Brito','1991-03-09','2021-01-10',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','e6269b0c-41cb-5a23-9398-8ba72edb7d5e','4173e088-7620-5f19-8486-4c8d265974f2','1b1b2411-e421-5960-a8bb-7c1f5c301f51'),
(19272213,130,'Bruno','Mora','1990-06-25','2021-01-10',  '71eb17bb-2d12-5660-90f2-b4e0a0a3caac','0f72c24c-dd9c-562a-b4b2-3ba7cd347ccc','4173e088-7620-5f19-8486-4c8d265974f2','c855650a-a5bd-56d0-ace2-90750ae0998d');

INSERT INTO Tiene ("ci_medico","id_especialidad","años_experiencia") VALUES
-- Cardiología
(12647863,'7d0940f4-00f5-5b49-80a8-2e2e9808f125',16),
(18676295,'7d0940f4-00f5-5b49-80a8-2e2e9808f125',4),
(15526267,'7d0940f4-00f5-5b49-80a8-2e2e9808f125',9),

-- Cirugía
(11240089,'e9547c38-c134-52ea-b1ed-867d43886a79',18),
(19269386,'e9547c38-c134-52ea-b1ed-867d43886a79',5),
(16676423,'e9547c38-c134-52ea-b1ed-867d43886a79',8),

-- Dermatología
(13963902,'92780479-9be4-5846-aa22-161960ee7226',17),
(18647497,'92780479-9be4-5846-aa22-161960ee7226',7),
(15099081,'92780479-9be4-5846-aa22-161960ee7226',14),

-- Endocrinología
(16314856,'8a63f894-a753-538d-9827-70712e136713',11),
(19472345,'8a63f894-a753-538d-9827-70712e136713',8),
(20643559,'8a63f894-a753-538d-9827-70712e136713',3),

-- Gastroenterología
(16827489,'27775682-5acd-59e3-aacf-7b3ad39619d7',12),
(17537759,'27775682-5acd-59e3-aacf-7b3ad39619d7',11),
(17879229,'27775682-5acd-59e3-aacf-7b3ad39619d7',11),

-- Neurología
(18471502,'4276c64b-54e3-5097-9961-f62ae43b1697',13),
(20889460,'4276c64b-54e3-5097-9961-f62ae43b1697',5),
(20736082,'4276c64b-54e3-5097-9961-f62ae43b1697',4),

-- Pediatría
(14662267,'a73fa555-a0a4-5ca3-9b28-8c35353c323f',14),
(19787057,'a73fa555-a0a4-5ca3-9b28-8c35353c323f',6),
(15632673,'a73fa555-a0a4-5ca3-9b28-8c35353c323f',10),

-- Psiquiatría
(11569434,'70d03f8d-d066-58e7-aaa1-052ff217da68',17),
(12777597,'70d03f8d-d066-58e7-aaa1-052ff217da68',14),
(11495302,'70d03f8d-d066-58e7-aaa1-052ff217da68',17),

-- Radioterapia
(10024729,'63dd25c5-2fd7-5dd2-bef8-a044fec513d8',17),
(16037159,'63dd25c5-2fd7-5dd2-bef8-a044fec513d8',12),
(16424732,'63dd25c5-2fd7-5dd2-bef8-a044fec513d8',10),

-- Traumatología
(14928128,'4173e088-7620-5f19-8486-4c8d265974f2',14),
(19086367,'4173e088-7620-5f19-8486-4c8d265974f2',6),
(19272213,'4173e088-7620-5f19-8486-4c8d265974f2',6);

INSERT INTO Area ("id_area","piso","pasillo",  "especialidad","ci_medico_encargado" ) VALUES
('45a95721-127d-5be9-a7e3-56bf55e643e8','01','01','7d0940f4-00f5-5b49-80a8-2e2e9808f125',12647863),
('2cf1a1d0-2a19-5339-a332-d93bac00a98d','02','01','e9547c38-c134-52ea-b1ed-867d43886a79',11240089),
('15ef6e25-6807-5d26-b2d1-8ec8c187b44a','03','01','92780479-9be4-5846-aa22-161960ee7226',13963902),
('cd239601-589a-54d5-ba01-03044463b958','04','01','8a63f894-a753-538d-9827-70712e136713',16314856),
('704fa345-b8d8-5eca-8c03-e0b708f4bbd1','05','01','27775682-5acd-59e3-aacf-7b3ad39619d7',16827489),
('1950f7ac-c0af-5887-a787-375b68aad619','06','01','4276c64b-54e3-5097-9961-f62ae43b1697',18471502),
('e1fb6175-5f93-500a-9a91-4347ac73ea47','07','01','a73fa555-a0a4-5ca3-9b28-8c35353c323f',14662267),
('3bea1212-952e-5763-8018-99103ba3f1d1','08','01','70d03f8d-d066-58e7-aaa1-052ff217da68',11569434),
('cf114459-5f00-5781-9064-15635f1cd024','09','01','63dd25c5-2fd7-5dd2-bef8-a044fec513d8',10024729),
('b704034e-99f7-5b55-89df-22a5fafb777b','10','01','4173e088-7620-5f19-8486-4c8d265974f2',14928128);

INSERT INTO Trabaja ( "ci_medico","id_area", "fecha") VALUES
-- Cardiología
(12647863,'45a95721-127d-5be9-a7e3-56bf55e643e8','2021-01-01'),
(18676295,'45a95721-127d-5be9-a7e3-56bf55e643e8','2021-01-01'),
(15526267,'45a95721-127d-5be9-a7e3-56bf55e643e8','2021-01-01'),

-- Cirugía
(11240089,'2cf1a1d0-2a19-5339-a332-d93bac00a98d','2021-01-02'),
(19269386,'2cf1a1d0-2a19-5339-a332-d93bac00a98d','2021-01-02'),
(16676423,'2cf1a1d0-2a19-5339-a332-d93bac00a98d','2021-01-02'),

-- Dermatología
(13963902,'15ef6e25-6807-5d26-b2d1-8ec8c187b44a','2021-01-03'),
(18647497,'15ef6e25-6807-5d26-b2d1-8ec8c187b44a','2021-01-03'),
(15099081,'15ef6e25-6807-5d26-b2d1-8ec8c187b44a','2021-01-03'),

-- Endocrinología
(16314856,'cd239601-589a-54d5-ba01-03044463b958','2021-01-04'),
(19472345,'cd239601-589a-54d5-ba01-03044463b958','2021-01-04'),
(20643559,'cd239601-589a-54d5-ba01-03044463b958','2021-01-04'),

-- Gastroenterología
(16827489,'704fa345-b8d8-5eca-8c03-e0b708f4bbd1','2021-01-05'),
(17537759,'704fa345-b8d8-5eca-8c03-e0b708f4bbd1','2021-01-05'),
(17879229,'704fa345-b8d8-5eca-8c03-e0b708f4bbd1','2021-01-05'),

-- Neurología
(18471502,'1950f7ac-c0af-5887-a787-375b68aad619','2021-01-06'),
(20889460,'1950f7ac-c0af-5887-a787-375b68aad619','2021-01-06'),
(20736082,'1950f7ac-c0af-5887-a787-375b68aad619','2021-01-06'),

-- Pediatría
(14662267,'e1fb6175-5f93-500a-9a91-4347ac73ea47','2021-01-07'),
(19787057,'e1fb6175-5f93-500a-9a91-4347ac73ea47','2021-01-07'),
(15632673,'e1fb6175-5f93-500a-9a91-4347ac73ea47','2021-01-07'),

-- Psiquiatría
(11569434,'3bea1212-952e-5763-8018-99103ba3f1d1','2021-01-08'),
(12777597,'3bea1212-952e-5763-8018-99103ba3f1d1','2021-01-08'),
(11495302,'3bea1212-952e-5763-8018-99103ba3f1d1','2021-01-08'),

-- Radioterapia
(10024729,'cf114459-5f00-5781-9064-15635f1cd024','2021-01-09'),
(16037159,'cf114459-5f00-5781-9064-15635f1cd024','2021-01-09'),
(16424732,'cf114459-5f00-5781-9064-15635f1cd024','2021-01-09'),

-- Traumatología
(14928128,'b704034e-99f7-5b55-89df-22a5fafb777b','2021-01-10'),
(19086367,'b704034e-99f7-5b55-89df-22a5fafb777b','2021-01-10'),
(19272213,'b704034e-99f7-5b55-89df-22a5fafb777b','2021-01-10');

INSERT INTO Proveedor ("id_proveedor","nombre","rif","telefono","fax","direccion", "tipo_proveedor","id_ciudad" ) VALUES
('c2264c59-9d2a-562a-a9f4-856cf4675bc1','Centro Clínico Santa Ana, C.A','J-08024763-9','0281-5009262','0281-5009262','Av ppal edif clinica santa ana pb local 43 urb pto la cruz','6d0ed8bc-d713-5c0f-90f1-17375b06ba66','37836684-af6d-53ce-a31d-0a4396f4033c'),
('2a4be819-7573-55e4-9468-319584fc2df5','Centro Médico Total Puerto La Cruz (Centro Médico Total, C.A.)','J-301263634','0281-2657322','0281-2657322','Calle Freites, Edif. Centro Médico Total, Piso PB, Sector. Centro Puerto La Cruz','6d0ed8bc-d713-5c0f-90f1-17375b06ba66','37836684-af6d-53ce-a31d-0a4396f4033c'),
('81389e84-8708-55fa-8b40-2aedb1ac9ae4','Centro Médico del Sur, C.A.','J-30513598-3','0247-3415262','0247-3415262','Av. Revolución, Edificio Centro Médico del Sur, San Fernando Estado Apure. 7001','6d0ed8bc-d713-5c0f-90f1-17375b06ba66','39c85287-6aec-57cc-9d18-eec87914804b'),
('9c0fdfe5-ed01-5399-ad97-f6532484ac99','Centro Clínico Pediátrico Glamar, C.A','J-30541118-2','0212-3554792','0212-3554792','Urb. Álamo Entre Calle Cantera Y Av. España Macuto ','6d0ed8bc-d713-5c0f-90f1-17375b06ba66','79ae4e2c-3f2e-5163-9a62-f608607d40a6'),
('d1341626-ad3d-5156-8a4e-01112b094342','Centro Clínico Santa Rosa, C.A.','J-80136187-2','0293-4313473','0293-4313473','Calle Santa Rosa Casa N 25 Sector santa rosa Carupano Sucre','6d0ed8bc-d713-5c0f-90f1-17375b06ba66','7fadcc54-031d-5a2b-b4fb-d1b0ef19f2a4'),
('1fd615ac-e981-552e-abee-15417657f343','Unidad Médico Quirúrgica Yurubí (Clínica IMD San Felipe - Grupo de Clínicas IDB)','J-30372913-4','0251-4464595','0251-4464595','avenida villareal diagonal al hospital central edificio imd planta baja','6d0ed8bc-d713-5c0f-90f1-17375b06ba66','b2d48eb9-a788-5a88-abf4-43222457932f'),
('4ebfecc2-fec6-569a-9c51-679a35451c9f','Laboratorio Clínico Sha, C.A.','J-402535546','0261-4235993','0261-4235993','Av. 15 las Delicias con calle 82, edif. Mayo, PB, Local-2 (Maracaibo).','6b9577cf-f181-565e-997e-5a6b1a949af7','a22447ad-b66b-5726-9517-103c2c1a0b11'),
('6a7f2d9d-53c1-592b-adb9-93646a5dd06d','Medical Surgical M&G, C.A','J296922012','0414-6379274','0414-6379274','Av. 15 las Delicias con calle 81','f9c3a75d-366c-53f6-9799-d4fee6ac2965','a22447ad-b66b-5726-9517-103c2c1a0b11'),
('e35409d2-d213-525b-9396-ae89a7f5a78e','Suministros Médicos M&V Compañia Anónima (SUMIMECA) ','J295133545','0424-1427962','0424-1427962','calle 58a, casa n° 4-75, sector zapara ii','f9c3a75d-366c-53f6-9799-d4fee6ac2965','a22447ad-b66b-5726-9517-103c2c1a0b11'),
('8db9229d-bfe5-5189-b27d-512b7379863c','Supply Clínicos de Occidente C.A','J307677880','0261-7980351','0261-7980351','av rondon entre calle aramendi y cedeño edis servimed','f9c3a75d-366c-53f6-9799-d4fee6ac2965','a22447ad-b66b-5726-9517-103c2c1a0b11'),
('36cfb899-aff7-5165-9fe9-1a660136cb77','Unidad Diagnóstica Paraíso, C.A. (Diagnológico)','J418566991','0261-7523766','0261-7523766','Av. E, Residencias Diamante III, PB. El Paraíso. (Al lado de crema paraíso, Caracas 1020, Distrito Capital','5ac3e9b5-8139-5923-9689-44293003fec7','a22447ad-b66b-5726-9517-103c2c1a0b11'),
('31694426-79a9-5a96-a724-a4345080f876','Asociación Civil Federico Ozanam (Centro Médico Asistencial Federico Ozanam, CEMAFOZ)','J303804691','0212-3416733','0212-3416733','Calle Los Bucares, Edif. Cemafoz, Guatire 1221, Miranda','87c995bf-de0d-539a-bb59-fa1b5546c3f4','76d933a6-cec5-5ac2-9582-a17aa89b23d5'),
('43b85ba7-190d-5035-b007-b28ebb9cdcc2','Centro Médico Docente El Paso, C.A','J-30189706-4','0212-7005000','0212-7005000','Sector Punta Brava, C. Guaicaipuro, Los Teques 1201, Miranda','87c995bf-de0d-539a-bb59-fa1b5546c3f4','c855650a-a5bd-56d0-ace2-90750ae0998d'),
('27342e98-4f96-57a7-8bc5-2858a9c9df8c','Ávila Rayos X, C.A.','J-00170847-2','0212-2761555','0212-2761555','av san bosco 6 transversal clinica avila mezzanina. ciudad, altamira','5ac3e9b5-8139-5923-9689-44293003fec7','89349ce9-6552-52f2-88b5-c2feaa47463a'),
('e4f30bf3-28fa-5059-9f77-60b04ba6c1bd','Centro Clínico de Extereotaxia Ceclines, C.A','J-30328353-5','0212-7074411','0212-7074411','Centro Coinasa, C. San Felipe, Caracas 1060, Miranda','5ac3e9b5-8139-5923-9689-44293003fec7','89349ce9-6552-52f2-88b5-c2feaa47463a'),
('228abc46-cf5d-58bf-ae8a-1a80b4b20d57','Cardioritmo, C.A.','J307671432','0212-2352821','0212-2352821','Qta Armonía, Avenida 3, Caracas 1071, Miranda','f9c3a75d-366c-53f6-9799-d4fee6ac2965','89349ce9-6552-52f2-88b5-c2feaa47463a'),
('b63a6db3-09c9-5f3d-b8f5-22162023b1cd','Bones Medical Instruments, C.A.','J-315499363','0212-6934631','0212-6934631','El valle, Avenida Intercomunal del Valle, Edificio Radio Valle 1, piso 4.','f9c3a75d-366c-53f6-9799-d4fee6ac2965','89349ce9-6552-52f2-88b5-c2feaa47463a'),
('a03940e5-ecc9-5a75-881f-504e8b207382','American Bios Services C.A','J-410168471','0212-2666696','0212-2666696','Av. San Felipe, Torre Bancaracas, piso 8, Ofic. 803, Urbanización La Castellana, Caracas','6b9577cf-f181-565e-997e-5a6b1a949af7','89349ce9-6552-52f2-88b5-c2feaa47463a'),
('7cd3a6d0-d045-57c7-b406-57357f6da271','Centro Clínico La Urbina (Servicios Médicos Asis Med, C.A.)','J-002439912','0212-2413089','0212-2413089','Calle 6 con calle 7, Edif. Sassalca, La Urbina, Caracas.','87c995bf-de0d-539a-bb59-fa1b5546c3f4','89349ce9-6552-52f2-88b5-c2feaa47463a');

INSERT INTO Tipo_Servicio ("id_tipo_servicio","descripcion") VALUES
('76a97e6a-8bcc-509f-8c8c-3954f5936c7b','tratamiento'),
('cf5c3af5-21a3-5ee1-b5e3-6497075ea42e','diagnostico'),
('37ff1d6c-67fc-5743-b370-1220705bd0fd','intervencion');

INSERT INTO Estado_Factura ("id_estado_factura","descripcion") VALUES
('f2e6421f-13f6-5e5e-829c-0cd93b56939e','pendiente'),
('2c82cc1a-9d72-5514-a01f-511c14aa3ece','vencida'),
('7dd009ca-9161-5fdd-9cfd-ab8fd1617576','pagada');


INSERT INTO Medicamento ("id_medicamento","nombre","presentacion","posologia","efectos_secundarios", "proveedor" ) VALUES
-- Cardiología
('e5a7432d-fb95-5f9a-9d1f-09e7593422ad','Aspirina','Tabletas','Adultos: 75-325 mg una vez al día para prevención de eventos cardiovasculares.','Puede causar irritación gástrica, sangrado y alergias.','d1341626-ad3d-5156-8a4e-01112b094342'),
('f45e2897-9e21-5894-b44d-6f5438bf7e36','Atorvastatina','Tabletas','Adultos: 10-80 mg una vez al día por vía oral.','Dolores musculares, náuseas y elevación de enzimas hepáticas.','c2264c59-9d2a-562a-a9f4-856cf4675bc1'),

-- Cirugía
('3b67f7e2-94e5-58e5-a79c-71a62c3a2b3a','Ceftriaxona','Inyectable','Adultos: 1-2 g cada 24 horas.','Reacciones alérgicas, dolor en el sitio de inyección y diarrea.','81389e84-8708-55fa-8b40-2aedb1ac9ae4'),
('7c5d3e90-b03b-5b70-9238-bd764e8fb57e','Metronidazol','Tabletas','500 mg cada 8 horas durante 7-10 días.','Náuseas, sabor metálico en la boca y neuropatía periférica.','e35409d2-d213-525b-9396-ae89a7f5a78e'),

-- Dermatología
('8cb7f94d-07eb-5cf3-bbe2-1dbf3d7e9587','Clobetasol','Crema','Aplicar una capa fina sobre la zona afectada 1-2 veces al día.','Irritación local, adelgazamiento de la piel y decoloración.','9c0fdfe5-ed01-5399-ad97-f6532484ac99'),
('f317eb7d-bdcc-510c-b0ef-b5b1f4dff45d','Isotretinoína','Cápsulas','0.5-1 mg/kg al día en dos tomas.','Sequedad en la piel, labios agrietados y fotosensibilidad.','36cfb899-aff7-5165-9fe9-1a660136cb77'),

-- Endocrinología
('da92763c-8f9c-56c1-bb85-b97bf61862d4','Levotiroxina','Tabletas','Adultos: 50-200 mcg una vez al día en ayunas.','Nerviosismo, insomnio y palpitaciones.','1fd615ac-e981-552e-abee-15417657f343'),
('aeb85d74-bf63-541f-b8d3-1271b347fd6b','Metformina','Tabletas','500-1000 mg dos veces al día con alimentos.','Diarrea, náuseas y acidosis láctica (raro).','6a7f2d9d-53c1-592b-adb9-93646a5dd06d'),

-- Gastroenterología
('8f45e37b-69f9-5715-b0db-cd6343f6b23c','Omeprazol','Cápsulas','20-40 mg una vez al día antes del desayuno.','Dolor de cabeza, diarrea y molestias abdominales.','43b85ba7-190d-5035-b007-b28ebb9cdcc2'),
('c3d75b19-97d9-5039-936d-c54f2dc6a26c','Loperamida','Tabletas','2 mg después de cada evacuación diarreica. Máximo 8 mg al día.','Estreñimiento y sequedad de boca.','e4f30bf3-28fa-5059-9f77-60b04ba6c1bd'),

-- Neurología
('7b1c67f2-bb67-510c-90c2-9234f7c6e819','Gabapentina','Cápsulas','Inicial: 300 mg al día, aumentar progresivamente hasta 1800 mg diarios.','Somnolencia, mareos y fatiga.','b63a6db3-09c9-5f3d-b8f5-22162023b1cd'),
('29c87e12-45db-5bf0-9826-cf8f7d6a5c73','Carbamazepina','Tabletas','200 mg dos veces al día.','Somnolencia, mareos y visión borrosa.','27342e98-4f96-57a7-8bc5-2858a9c9df8c'),

-- Pediatría
('4b879c5d-f18c-512e-b0d9-3a6b65d2c819','Paracetamol','Jarabe','10-15 mg/kg cada 6 horas.','Daño hepático a dosis altas.','228abc46-cf5d-58bf-ae8a-1a80b4b20d57'),
('fd23e65a-b89e-507e-98c6-dc87f2b1c953','Amoxicilina','Suspensión','50-90 mg/kg al día divididos en 2-3 dosis.','Diarrea, náuseas y reacciones alérgicas.','31694426-79a9-5a96-a724-a4345080f876'),

-- Psiquiatría
('a4f6937b-aa7b-5baf-b6e8-01f821f96b57','Olanzapina','Tabletas','Adultos: 10 mg una vez al día. Aumentar hasta 15 mg al día si es necesario (máx. 20 mg al día).','puede producir síntomas tales como somnolencia, mareo o alteraciones en la vista y disminuir la capacidad de reacción. Estos efectos, así como la propia enfermedad pueden dificultar su capacidad para conducir vehículos o manejar máquinas.', '7cd3a6d0-d045-57c7-b406-57357f6da271' ),

-- Radioterapia
('8c97e5b6-75f3-53e9-b5d2-cd7b623e9f28','Dexametasona','Inyectable','4-20 mg cada 12 horas dependiendo del caso.','Retención de líquidos, hipertensión e insomnio.','27342e98-4f96-57a7-8bc5-2858a9c9df8c'),

-- Traumatología
('b95d37c1-29c8-5e10-9d76-cd723f6b1d93','Diclofenaco','Tabletas','50 mg cada 8-12 horas según necesidad.','Irritación gástrica, mareos y náuseas.','e35409d2-d213-525b-9396-ae89a7f5a78e'),
('dcf7b6a3-9827-563f-b1d8-c92e7f5a1b82','Tramadol','Cápsulas','50-100 mg cada 4-6 horas. Máximo 400 mg al día.','Somnolencia, mareos y náuseas.','4ebfecc2-fec6-569a-9c51-679a35451c9f');

INSERT INTO Personal_Sanitario ("ci_personal","nombre","apellido","funcion",  "id_area" ) VALUES
(19392230,'Luis','Ortega','Enfermero cardiovascular',  '45a95721-127d-5be9-a7e3-56bf55e643e8' ), 
(17846520,'Miguel','Paredes','Técnico de electrocardiografía',  '45a95721-127d-5be9-a7e3-56bf55e643e8' ), 

(16213723,'Juan','Serrano','Anestesista',  '2cf1a1d0-2a19-5339-a332-d93bac00a98d' ), 
(16218903,'Carlos','Mendoza','Enfermero instrumentista',  '2cf1a1d0-2a19-5339-a332-d93bac00a98d' ),

(20228329,'Pedro','González','Dermatólogo',  '15ef6e25-6807-5d26-b2d1-8ec8c187b44a' ), 
(18003453,'José','Martínez','Esteticista',  '15ef6e25-6807-5d26-b2d1-8ec8c187b44a' ),

(16561400,'Gabriel','Cruz','Nutricionista',  'cd239601-589a-54d5-ba01-03044463b958' ), 
(19506551,'Rubén','Castillo','Técnico de laboratorio',  'cd239601-589a-54d5-ba01-03044463b958' ),

(18105584,'David','Rojas','Técnico en endoscopia',  '704fa345-b8d8-5eca-8c03-e0b708f4bbd1' ), 
(16890514,'Luisa','Salas','Dietista',  '704fa345-b8d8-5eca-8c03-e0b708f4bbd1' ),

(18618180,'Eduardo','Hernández','Enfermero neurológica',  '1950f7ac-c0af-5887-a787-375b68aad619' ), 
(19285078,'Andrés','Díaz','Técnico de electroencefalografía',  '1950f7ac-c0af-5887-a787-375b68aad619' ),

(18425987,'Rómulo','Cortés','Técnico de vacunación',  'e1fb6175-5f93-500a-9a91-4347ac73ea47' ), 
(19027393,'María','Díaz','Psicólogo infantil',  'e1fb6175-5f93-500a-9a91-4347ac73ea47' ),

(19546398,'Marcos','Pérez','Enfermero de psiquiatría',  '3bea1212-952e-5763-8018-99103ba3f1d1' ), 
(17847485,'John','Pineda','Terapeuta ocupacional',  '3bea1212-952e-5763-8018-99103ba3f1d1' ),

(17421228,'Rafael','Flores','Dosimetrista',  'cf114459-5f00-5781-9064-15635f1cd024' ), 
(16432228,'Sandra','Flores','Técnico de radioterapia',  'cf114459-5f00-5781-9064-15635f1cd024' ),

(21886813,'Arturo','Mendoza','Fisioterapeuta',  'b704034e-99f7-5b55-89df-22a5fafb777b' ), 
(18299753,'Valentina','Pérez','Enfermero de traumatología',  'b704034e-99f7-5b55-89df-22a5fafb777b' );

INSERT INTO Cama ("numero_cama","area_hospital") VALUES
(0101,'45a95721-127d-5be9-a7e3-56bf55e643e8'),
(0102,'45a95721-127d-5be9-a7e3-56bf55e643e8'),
(0103,'45a95721-127d-5be9-a7e3-56bf55e643e8'),
(0104,'45a95721-127d-5be9-a7e3-56bf55e643e8'),

(0201,'2cf1a1d0-2a19-5339-a332-d93bac00a98d'),
(0202,'2cf1a1d0-2a19-5339-a332-d93bac00a98d'),
(0203,'2cf1a1d0-2a19-5339-a332-d93bac00a98d'),
(0204,'2cf1a1d0-2a19-5339-a332-d93bac00a98d'),

(0301,'15ef6e25-6807-5d26-b2d1-8ec8c187b44a'),
(0302,'15ef6e25-6807-5d26-b2d1-8ec8c187b44a'),
(0303,'15ef6e25-6807-5d26-b2d1-8ec8c187b44a'),
(0304,'15ef6e25-6807-5d26-b2d1-8ec8c187b44a'),

(0401,'cd239601-589a-54d5-ba01-03044463b958'),
(0402,'cd239601-589a-54d5-ba01-03044463b958'),
(0403,'cd239601-589a-54d5-ba01-03044463b958'),
(0404,'cd239601-589a-54d5-ba01-03044463b958'),

(0501,'704fa345-b8d8-5eca-8c03-e0b708f4bbd1'),
(0502,'704fa345-b8d8-5eca-8c03-e0b708f4bbd1'),
(0503,'704fa345-b8d8-5eca-8c03-e0b708f4bbd1'),
(0504,'704fa345-b8d8-5eca-8c03-e0b708f4bbd1'),

(0601,'1950f7ac-c0af-5887-a787-375b68aad619'),
(0602,'1950f7ac-c0af-5887-a787-375b68aad619'),
(0603,'1950f7ac-c0af-5887-a787-375b68aad619'),
(0604,'1950f7ac-c0af-5887-a787-375b68aad619'),

(0701,'e1fb6175-5f93-500a-9a91-4347ac73ea47'),
(0702,'e1fb6175-5f93-500a-9a91-4347ac73ea47'),
(0703,'e1fb6175-5f93-500a-9a91-4347ac73ea47'),
(0704,'e1fb6175-5f93-500a-9a91-4347ac73ea47'),

(0801,'3bea1212-952e-5763-8018-99103ba3f1d1'),
(0802,'3bea1212-952e-5763-8018-99103ba3f1d1'),
(0803,'3bea1212-952e-5763-8018-99103ba3f1d1'),
(0804,'3bea1212-952e-5763-8018-99103ba3f1d1'),

(0901,'cf114459-5f00-5781-9064-15635f1cd024'),
(0902,'cf114459-5f00-5781-9064-15635f1cd024'),
(0903,'cf114459-5f00-5781-9064-15635f1cd024'),
(0904,'cf114459-5f00-5781-9064-15635f1cd024'),

(1001,'b704034e-99f7-5b55-89df-22a5fafb777b'),
(1002,'b704034e-99f7-5b55-89df-22a5fafb777b'),
(1003,'b704034e-99f7-5b55-89df-22a5fafb777b'),
(1004,'b704034e-99f7-5b55-89df-22a5fafb777b');

INSERT INTO Poliza (nro_poliza, ci_paciente, empresa, titular, tipo_poliza, hospitalizacion, cirugia, maternidad, radiografias, examenes, ambulancia, cobertura, aprobada) VALUES
(1001, 16428665, 'Seguros Caracas', true, 'principal', true, true, false, true, true, true, 10000.00, true),
(1002, 19099695, 'Seguros La Previsora', true, 'principal', true, true, true, true, true, true, 15000.00, true),
(1003, 7046720, 'Seguros Mercantil', true, 'principal', true, true, false, true, true, false, 8000.00, true),
(1004, 16612540, 'Seguros Caracas', true, 'principal', true, true, true, true, true, true, 12000.00, true),
(1005, 17023670, 'Seguros La Previsora', true, 'principal', true, true, false, true, true, true, 9000.00, true),
(1006, 16678412, 'Seguros Mercantil', true, 'principal', true, true, true, true, true, false, 11000.00, true),
(1007, 7181920, 'Seguros Caracas', true, 'principal', true, true, false, true, true, true, 10000.00, true),
(1008, 18789012, 'Seguros La Previsora', true, 'principal', true, true, true, true, true, true, 15000.00, true),
(1009, 18901234, 'Seguros Mercantil', true, 'principal', true, true, false, true, true, false, 8000.00, true),
(1010, 15012345, 'Seguros Caracas', true, 'principal', true, true, true, true, true, true, 12000.00, true),
(1011, 17404058, 'Seguros La Previsora', true, 'principal', true, true, false, true, true, true, 9000.00, true),
(1012, 16111456, 'Seguros Mercantil', true, 'principal', true, true, true, true, true, false, 11000.00, true),
(1013, 19345678, 'Seguros Caracas', true, 'principal', true, true, false, true, true, true, 10000.00, true),
(1014, 20345678, 'Seguros La Previsora', true, 'principal', true, true, true, true, true, true, 15000.00, true),
(1015, 12678901, 'Seguros Mercantil', true, 'principal', true, true, false, true, true, false, 8000.00, true),
(1016, 26456789, 'Seguros Caracas', true, 'principal', true, true, true, true, true, true, 12000.00, true),
(1017, 20567890, 'Seguros La Previsora', true, 'principal', true, true, false, true, true, true, 9000.00, true),
(1018, 23789012, 'Seguros Mercantil', true, 'principal', true, true, true, true, true, false, 11000.00, true),
(1019, 25901234, 'Seguros Caracas', true, 'principal', true, true, false, true, true, true, 10000.00, true),
(1020, 20890123, 'Seguros La Previsora', true, 'principal', true, true, true, true, true, true, 15000.00, true),
(1021, 26012345, 'Seguros Mercantil', true, 'principal', true, true, false, true, true, false, 8000.00, true),
(1022, 27678902, 'Seguros Caracas', true, 'principal', true, true, true, true, true, true, 12000.00, true),
(1023, 26890124, 'Seguros La Previsora', true, 'principal', true, true, false, true, true, true, 9000.00, true),
(1024, 24789013, 'Seguros Mercantil', true, 'principal', true, true, true, true, true, false, 11000.00, true),
(1025, 19901235, 'Seguros Caracas', true, 'principal', true, true, false, true, true, true, 10000.00, true),
(1026, 28123457, 'Seguros La Previsora', true, 'principal', true, true, true, true, true, true, 15000.00, true),
(1027, 30123465, 'Seguros Mercantil', true, 'principal', true, true, false, true, true, false, 8000.00, true),
(1028, 29234568, 'Seguros Caracas', true, 'principal', true, true, true, true, true, true, 12000.00, true),
(1029, 29586555, 'Seguros La Previsora', true, 'principal', true, true, false, true, true, true, 9000.00, true),
(1030, 27224935, 'Seguros Mercantil', true, 'principal', true, true, true, true, true, false, 11000.00, true),
(1031, 16428665, 'Seguros Caracas', false, 'secundaria', true, true, false, true, true, true, 5000.00, true),
(1032, 19099695, 'Seguros La Previsora', false, 'secundaria', true, true, true, true, true, true, 7500.00, true),
(1033, 7046720, 'Seguros Mercantil', false, 'secundaria', true, true, false, true, true, false, 4000.00, true),
(1034, 16612540, 'Seguros Caracas', false, 'secundaria', true, true, true, true, true, true, 6000.00, true),
(1035, 17023670, 'Seguros La Previsora', false, 'secundaria', true, true, false, true, true, true, 4500.00, true),
(1036, 16678412, 'Seguros Mercantil', false, 'secundaria', true, true, true, true, true, false, 5500.00, true),
(1037, 7181920, 'Seguros Caracas', false, 'secundaria', true, true, false, true, true, true, 5000.00, true),
(1038, 18789012, 'Seguros La Previsora', false, 'secundaria', true, true, true, true, true, true, 7500.00, true),
(1039, 18901234, 'Seguros Mercantil', false, 'secundaria', true, true, false, true, true, false, 4000.00, true),
(1040, 15012345, 'Seguros Caracas', false, 'secundaria', true, true, true, true, true, true, 6000.00, true);



INSERT INTO Realiza ( "ci_medico","ci_paciente","diagnostico", "numero_ingreso","fecha_elaboracion") VALUES
-- Cardiología
(12647863, 16428665, '84a9c401-ac17-50d2-a52e-15cb86d86344', 1234567890, '2021-03-15'),
(18676295, 19099695, '20bd7d02-58ff-5d1b-9fd8-7ac17e3c9ca8', 1234567891, '2021-04-20'),
(15526267, 7046720, '260083cb-670a-5d0c-bddf-666f8286dcca', 1234567892, '2021-05-25'),

-- Cirugía
(11240089, 16612540, 'fe6d16da-cc06-43fa-893e-c787ec4e3d8a', 1234567893, '2021-06-30'),
(19269386, 17023670, 'b5b49948-2d98-4e60-be41-4a21b513dc33', 1234567894, '2021-07-15'),
(16676423, 16678412, 'fbc4e9a6-4d94-4c48-9bce-3588ffc6130c', 1234567895, '2021-08-10'),

-- Dermatología
(13963902, 7181920, '9b7d2dea-a00b-522d-89d8-6b92336b5f3f', 1234567896, '2021-09-05'),
(18647497, 18789012, 'c3fbe171-c95f-5221-9532-01c5bc127337', 1234567897, '2021-10-01'),
(15099081, 18901234, '9b7d2dea-a00b-522d-89d8-6b92336b5f3f', 1234567898, '2021-11-20'),

-- Endocrinología
(16314856, 15012345, '43d5655c-2c4a-5bc2-84bd-78a3ce2aef22', 1234567899, '2021-12-15'),
(19472345, 17404058, '989103ec-e4bc-5e2d-ae9d-b7b47116c7dc', 1234567900, '2022-01-10'),
(20643559, 16111456, '238dc22b-395b-5b28-89fc-9dca0bcdae52', 1234567901, '2022-02-05'),

-- Gastroenterología
(16827489, 19345678, '57b96acd-9f7a-5fae-b79d-8f8305fdf533', 1234567902, '2022-03-01'),
(17537759, 20345678, 'ea270555-ed7e-50a2-b761-38db82fd797c', 1234567903, '2022-04-20'),
(17879229, 12678901, '57827498-0c2c-58fe-ab6c-81ec8e1ac5d7', 1234567904, '2022-05-15'),

-- Neurología
(18471502, 26456789, '560c09c1-79d1-5118-ae40-fd1578602040', 1234567905, '2022-06-10'),
(20889460, 20567890, '988f03de-66d2-5468-9e9e-b8fa30b680be', 1234567906, '2022-07-05'),
(20736082, 23789012, 'c371a149-5999-5a6f-8096-5b3735eefd34', 1234567907, '2022-08-01'),

-- Pediatría
(14662267, 25901234, '5c027911-4ec9-5b6c-aa42-775b6cefb73c', 1234567908, '2022-09-20'),
(19787057, 20890123, '62e51f45-1325-5438-8254-74881b902317', 1234567909, '2022-10-15'),
(15632673, 26012345, 'ed0a6509-be91-5a48-87bf-766830041148', 1234567910, '2022-11-10'),

-- Radioterapia
(10024729, 27678902, '7ff7f8df-bf84-51cc-9229-69315cccc559', 1234567911, '2022-12-05'),
(16037159, 26890124, '01786bda-8319-5b93-b487-2f073b8b8b53', 1234567912, '2023-01-01'),
(16424732, 24789013, '7ff7f8df-bf84-51cc-9229-69315cccc559', 1234567913, '2023-02-20'),

-- Traumatología
(14928128, 19901235, '3f3e700a-f855-558a-a7c6-d34068c18130', 1234567914, '2023-03-15'),
(19086367, 28123457, '81fbb6b8-3d71-5fc6-854a-8183234e31b9', 1234567915, '2023-04-10'),
(19272213, 30123465, '995fbe33-5d80-5512-ab78-732fcd154fc4', 1234567916, '2023-05-05'),

-- Psiquiatría
(12777597,29234568,'9825a99c-445e-5f38-bbc7-5369f889d52e',59723052022,'2022-05-22'),
(11495302,29586555,'9f8599a6-ffbd-5cfd-b43e-ce6884908266',59723052023,'2022-06-15'),
(11569434,27224935,'d626c0dd-716a-5c1f-a391-c91230522d69',59723052024,'2022-07-10');

INSERT INTO PRESCRIBE ( "ci_medico","ci_paciente","tratamiento", "numero_ingreso","fecha_elaboracion") VALUES
-- Cardiología
(12647863, 16428665, '686d6b61-3fa1-5444-bf9a-d6ed6b6ce5ee', 1234567890, '2021-03-15'),
(18676295, 19099695, '16442917-012f-5e52-9c33-24f811d21e81', 1234567891, '2021-04-20'),

-- Cirugía
(11240089, 16612540, 'cb12980d-2672-4498-af23-d51cd3951705', 1234567893, '2021-06-30'),
(19269386, 17023670, '8d89328e-476c-4861-9332-dbb5b46dfdd2', 1234567894, '2021-07-15'),

-- Dermatología
(13963902, 7181920, 'c9741d12-443f-541f-a66f-63bf210c9c75', 1234567896, '2021-09-05'),
(18647497, 18789012, '1704d4d1-5b42-5d08-86ca-55355b64b24c', 1234567897, '2021-10-01'),

-- Endocrinología
(16314856, 15012345, 'ad1cf50f-6f91-5ffa-ab66-d607ab7ffaa2', 1234567899, '2021-12-15'),
(19472345, 17404058, '770281f9-b350-5716-8f92-158bfc6516ae', 1234567900, '2022-01-10'),

-- Gastroenterología
(16827489, 19345678, '0925a3b0-cc4c-54a0-9b5c-445a35830943', 1234567902, '2022-03-01'),
(17537759, 20345678, '13928637-577d-5ae1-a2d5-6b30b78ad458', 1234567903, '2022-04-20'),

-- Neurología
(18471502, 26456789, '265b06ad-f4f1-5e5b-bb85-dcab397b8d80', 1234567905, '2022-06-10'),
(20889460, 20567890, 'ddaaec73-7992-5201-85a7-5c504cd34d2d', 1234567906, '2022-07-05'),

-- Pediatría
(14662267, 25901234, 'e5f4e296-b281-57f3-b2ad-5ad12aa1ac7c', 1234567908, '2022-09-20'),
(19787057, 20890123, '21d0bde6-3955-5998-8083-fdbda64d8a2d', 1234567909, '2022-10-15'),

-- Radioterapia
(10024729, 27678902, '4d627ab3-1c0f-5487-b1b1-016f0b550784', 1234567911, '2022-12-05'),
(16037159, 26890124, 'c1d06188-1762-5c6d-86dc-10de044de704', 1234567912, '2023-01-01'),

-- Traumatología
(14928128, 19901235, '7362d20d-9cb7-5d95-849f-2916e4022a7c', 1234567914, '2023-03-15'),
(19086367, 28123457, '28b4cb18-944d-5d44-8162-5a56d1a6295a', 1234567915, '2023-04-10'),

-- Psiquiatría
(11495302, 29586555, 'b4279c47-0b59-5633-91da-2a6779d930fe', 59723052023, '2022-06-15'),
(12777597, 29234568, 'b4c820e5-6cb3-5300-810a-af7f59ce466a', 59723052022, '2022-05-22');

INSERT INTO Aplica ( "medicamento","tratamiento", "cant_dias","fecha_inicio","fecha_fin") VALUES
-- Psiquiatría
('a4f6937b-aa7b-5baf-b6e8-01f821f96b57','b4c820e5-6cb3-5300-810a-af7f59ce466a',5,'2022-05-23','2022-05-28'),
('a4f6937b-aa7b-5baf-b6e8-01f821f96b57','b4279c47-0b59-5633-91da-2a6779d930fe',10,'2022-06-16','2022-06-26'),

-- Cardiología
('e5a7432d-fb95-5f9a-9d1f-09e7593422ad','686d6b61-3fa1-5444-bf9a-d6ed6b6ce5ee', 10, '2021-03-16', '2021-03-25'),
('f45e2897-9e21-5894-b44d-6f5438bf7e36','16442917-012f-5e52-9c33-24f811d21e81', 15, '2021-04-21', '2021-05-05'),

-- Cirugía
('3b67f7e2-94e5-58e5-a79c-71a62c3a2b3a','cb12980d-2672-4498-af23-d51cd3951705', 7, '2021-07-01', '2021-07-07'),
('7c5d3e90-b03b-5b70-9238-bd764e8fb57e','8d89328e-476c-4861-9332-dbb5b46dfdd2', 10, '2021-07-16', '2021-07-25'),

-- Dermatología
('8cb7f94d-07eb-5cf3-bbe2-1dbf3d7e9587','c9741d12-443f-541f-a66f-63bf210c9c75', 14, '2021-09-06', '2021-09-19'),
('f317eb7d-bdcc-510c-b0ef-b5b1f4dff45d','1704d4d1-5b42-5d08-86ca-55355b64b24c', 20, '2021-10-02', '2021-10-21'),

-- Endocrinología
('da92763c-8f9c-56c1-bb85-b97bf61862d4','ad1cf50f-6f91-5ffa-ab66-d607ab7ffaa2', 30, '2021-12-16', '2022-01-14'),
('aeb85d74-bf63-541f-b8d3-1271b347fd6b','770281f9-b350-5716-8f92-158bfc6516ae', 25, '2022-01-11', '2022-02-04'),

-- Gastroenterología
('8f45e37b-69f9-5715-b0db-cd6343f6b23c','0925a3b0-cc4c-54a0-9b5c-445a35830943', 15, '2022-03-02', '2022-03-16'),
('c3d75b19-97d9-5039-936d-c54f2dc6a26c','13928637-577d-5ae1-a2d5-6b30b78ad458', 20, '2022-04-21', '2022-05-10'),

-- Neurología
('7b1c67f2-bb67-510c-90c2-9234f7c6e819','265b06ad-f4f1-5e5b-bb85-dcab397b8d80', 10, '2022-06-11', '2022-06-20'),
('29c87e12-45db-5bf0-9826-cf8f7d6a5c73','ddaaec73-7992-5201-85a7-5c504cd34d2d', 15, '2022-07-06', '2022-07-20'),

-- Pediatría
('4b879c5d-f18c-512e-b0d9-3a6b65d2c819','e5f4e296-b281-57f3-b2ad-5ad12aa1ac7c', 7, '2022-09-21', '2022-09-27'),
('fd23e65a-b89e-507e-98c6-dc87f2b1c953','21d0bde6-3955-5998-8083-fdbda64d8a2d', 10, '2022-10-16', '2022-10-25'),

-- Radioterapia
('8c97e5b6-75f3-53e9-b5d2-cd7b623e9f28','4d627ab3-1c0f-5487-b1b1-016f0b550784', 20, '2022-12-06', '2022-12-25'),
('8c97e5b6-75f3-53e9-b5d2-cd7b623e9f28','c1d06188-1762-5c6d-86dc-10de044de704', 15, '2023-01-02', '2023-01-16'),

-- Traumatología
('b95d37c1-29c8-5e10-9d76-cd723f6b1d93','7362d20d-9cb7-5d95-849f-2916e4022a7c', 10, '2023-03-16', '2023-03-25'),
('dcf7b6a3-9827-563f-b1d8-c92e7f5a1b82','28b4cb18-944d-5d44-8162-5a56d1a6295a', 7, '2023-04-11', '2023-04-17');


-- INSERT INTO Practica ( "ci_medico","ci_paciente","intervencion","personal_sanitario", "fecha","riesgo","duracion","gasto_equipos","costo","honorario_equipo") VALUES
-- -- Cardiología
-- (12647863, 16428665, '88304d3d-6d0c-5994-aca0-3f33840f379e', 19392230, '2022-03-15', 'bajo', 2.5, 500, 3000, 2000),
-- (18676295, 19099695, '88304d3d-6d0c-5994-aca0-3f33840f379e', 17846520, '2023-04-20', 'medio', 3.0, 700, 3500, 2500),

-- -- Cirugía
-- (11240089, 16612540, 'a7dc07c2-e580-528f-a9dd-fb5a0d4e698f', 16213723, '2022-06-30', 'alto', 4.0, 1000, 5000, 4000),
-- (19269386, 17023670, 'a7dc07c2-e580-528f-a9dd-fb5a0d4e698f', 16218903, '2023-07-15', 'medio', 3.5, 800, 4500, 3500),

-- -- Dermatología
-- (13963902, 7181920, 'f11a5a29-9b46-50bf-9969-b4d8ec2b5c62', 20228329, '2022-09-05', 'bajo', 1.5, 300, 2000, 1500),
-- (18647497, 18789012, 'f11a5a29-9b46-50bf-9969-b4d8ec2b5c62', 18003453, '2023-10-01', 'medio', 2.0, 400, 2500, 2000),

-- -- Endocrinología
-- (16314856, 15012345, '4a9c6a79-9add-5abb-85f9-feff7584b329', 16561400, '2022-12-15', 'alto', 3.0, 600, 4000, 3000),
-- (19472345, 17404058, '4a9c6a79-9add-5abb-85f9-feff7584b329', 19506551, '2023-01-10', 'medio', 2.5, 500, 3500, 2500),

-- -- Gastroenterología
-- (16827489, 19345678, '0957307c-277f-545b-a53c-5ddcc164ee19', 18105584, '2022-03-01', 'bajo', 2.0, 400, 3000, 2000),
-- (17537759, 20345678, '0957307c-277f-545b-a53c-5ddcc164ee19', 16890514, '2023-04-20', 'medio', 2.5, 500, 3500, 2500),

-- -- Neurología
-- (18471502, 26456789, '488110c3-1a7c-5580-a6f7-cd720fba29f8', 18618180, '2022-06-10', 'alto', 3.5, 700, 4500, 3500),
-- (20889460, 20567890, '488110c3-1a7c-5580-a6f7-cd720fba29f8', 19285078, '2023-07-05', 'medio', 3.0, 600, 4000, 3000),

-- -- Pediatría
-- (14662267, 25901234, 'd2a1eb63-31fe-530a-8c25-a0dc9ffa7916', 18425987, '2022-09-20', 'bajo', 1.5, 300, 2000, 1500),
-- (19787057, 20890123, 'd2a1eb63-31fe-530a-8c25-a0dc9ffa7916', 19027393, '2023-10-15', 'medio', 2.0, 400, 2500, 2000),

-- -- Radioterapia
-- (10024729, 27678902, '66bf0e44-b3f2-5f07-9244-92af1e51138d', 17421228, '2022-12-05', 'alto', 4.0, 1000, 5000, 4000),
-- (16037159, 26890124, '66bf0e44-b3f2-5f07-9244-92af1e51138d', 16432228, '2023-01-01', 'medio', 3.5, 800, 4500, 3500),

-- -- Traumatología
-- (14928128, 19901235, 'c3dcc2c5-08e9-536c-8f12-1d687e144527', 21886813, '2023-03-15', 'bajo', 2.5, 500, 3000, 2000),
-- (19086367, 28123457, 'c3dcc2c5-08e9-536c-8f12-1d687e144527', 18299753, '2023-04-10', 'medio', 3.0, 600, 3500, 2500),

-- -- Psiquiatría
-- (11569434, 27224935, '66bf0e44-b3f2-5f07-9244-92af1e51138d', 19546398, '2022-07-10', 'alto', 3.5, 700, 4500, 3500),
-- (12777597, 29234568, '66bf0e44-b3f2-5f07-9244-92af1e51138d', 17847485, '2022-05-22', 'medio', 3.0, 600, 4000, 3000);


-- INSERT INTO Ocupa ( "ci_paciente","numero_cama", "fecha_inicio","cantidad_dias","dias_cubiertos_seguro","costo_diario") VALUES

COMMIT;
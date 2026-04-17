
DROP TABLE IF EXISTS TO001_Alumno;

--  Creación de la tabla TO001_Alumno
CREATE TABLE TO001_Alumno (
    FN_id_alumno           SERIAL PRIMARY KEY, 
    FN_matricula           INTEGER NOT NULL,
    FV_nombre              VARCHAR(100) NOT NULL,
    FV_primer_apellido     VARCHAR(100) NOT NULL,
    FV_segundo_apellido    VARCHAR(100),
    FV_carrera             VARCHAR(100),
    FD_fecha_nacimiento    DATE,
    FV_curp                VARCHAR(20),
    FV_direccion           VARCHAR(255),
    FV_nss                 VARCHAR(20),
    FV_telefono            VARCHAR(20),
    FV_escuela_procedencia VARCHAR(150),
    FV_correo_electronico  VARCHAR(150),
    FN_semestre_actual     INTEGER
);

--  Inserción de datos iniciales
INSERT INTO TO001_Alumno (FN_matricula, FV_primer_apellido, FV_segundo_apellido, FV_nombre, FV_carrera, FD_fecha_nacimiento, FV_curp, FV_direccion, FV_nss, FV_telefono, FV_escuela_procedencia, FV_correo_electronico, FN_semestre_actual)
VALUES 
(20260001, 'Garcia', 'Lopez', 'Juan', 'Ingeniería en Sistemas', '2002-05-15', 'GALJ020515HDFRRN01', 'Calle Falsa 123', '12345678901', '5512345678', 'Prepa 5', 'juan.garcia@mail.com', 4),
(20260002, 'Martinez', 'Sanches', 'Maria', 'Derecho', '2003-08-20', 'MASM030820MDFRRN02', 'Av. Universidad 50', '23456789012', '5523456789', 'Bachilleres 1', 'maria.mtz@mail.com', 2),
(20260003, 'Rodriguez', 'Perez', 'Pedro', 'Administración', '2001-12-10', 'ROPP011210HDFRRN03', 'Paseo de la Reforma 1', '34567890123', '5534567890', 'CETIS 10', 'pedro.rod@mail.com', 6),
(20260004, 'Hernandez', 'Gomez', 'Ana', 'Medicina', '2004-01-25', 'HEGA040125MDFRRN04', 'Insurgentes Sur 200', '45678901234', '5545678901', 'Prepa 9', 'ana.her@mail.com', 1),
(20260005, 'Soto', 'Mejia', 'Luis', 'Arquitectura', '2002-03-30', 'SOML020330HDFRRN05', 'Eje Central 45', '56789012345', '5556789012', 'VOCA 3', 'luis.soto@mail.com', 5),
(20260006, 'Villanueva', 'Castro', 'Elena', 'Psicología', '2003-06-12', 'VICE030612MDFRRN06', 'Calzada del Hueso 12', '67890123456', '5567890123', 'Prepa 2', 'elena.villa@mail.com', 3),
(20260007, 'Ortega', 'Reyes', 'Javier', 'Contaduría', '2002-11-05', 'OERJ021105HDFRRN07', 'Periférico Norte 99', '78901234567', '5578901234', 'Bachilleres 4', 'javier.ort@mail.com', 4),
(20260008, 'Ramirez', 'Diaz', 'Sofia', 'Diseño Gráfico', '2004-04-18', 'RADS040418MDFRRN08', 'Colonia Roma 5', '89012345678', '5589012345', 'CCH Sur', 'sofia.ram@mail.com', 1),
(20260009, 'Blanco', 'Nuñez', 'Roberto', 'Ingeniería Civil', '2001-09-22', 'BANR010922HDFRRN09', 'Lomas de Chapultepec', '90123456789', '5590123456', 'Prepa 1', 'rob.blanco@mail.com', 7),
(20260010, 'Torres', 'Luna', 'Lucia', 'Economía', '2003-02-14', 'TOLL030214MDFRRN10', 'Santa Fe 300', '01234567890', '5501234567', 'VOCA 9', 'lucia.torres@mail.com', 3);
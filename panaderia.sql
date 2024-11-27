create database panaderia
use panaderia

create table producto (
id_producto int primary key,
nombre varchar(20),
fechaproducto date,
fechaven date
);
create table cliente(
id_cliente int not null,
nombre varchar(30),
apellido varchar(40),
telefono varchar(12),
email  varchar(20)

);

Alter table cliente
add constraint  PK_enlace_cliente
primary key (id_cliente);

drop table materiaprima

create table proveedor(
id_proveedor int primary key not null,
nombre varchar(30),
apellido varchar(30),
telefono varchar(12),
direccion varchar(40)
);

create table compra (
id_compra int not null,
constraint PK_enlace_compra primary key
(id_compra),
id_cliente int not null,
foreign key (id_cliente) REFERENCES cliente(id_cliente),
id_producto int not null,
foreign key (id_producto) REFERENCES producto(id_producto),
fecha date,
valor varchar(50)
);

create table materiaprima(
cod_materiap int primary key not null,
id_proveedor int not null,
foreign key (id_proveedor) REFERENCES proveedor(id_proveedor),
id_panaderia int not null,
foreign key (id_panaderia) REFERENCES panaderia(id_panaderia),
fechaentrega date,
nombremateria varchar(30),
);

create table panaderia (
id_panaderia int primary key not null,
nombre varchar(30),
direccion varchar(20)
);

alter table producto add id_panaderia int foreign key (id_panaderia) REFERENCES panaderia(id_panaderia);



exec sp_rename 'materiaprima', 'proveedor';

INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES 
(1, 'Juan', 'Pérez', '3001234567', 'juan.perez@example.com'),
(2, 'María', 'Gómez', '3002345678', 'maria.gomez@example.com'),
(3, 'Carlos', 'Rodríguez', '3003456789', 'carlos.rodriguez@example.com'),
(4, 'Ana', 'Martínez', '3004567890', 'ana.martinez@example.com'),
(5, 'Luis', 'Fernández', '3005678901', 'luis.fernandez@example.com'),
(6, 'Pedro', 'López', '3006789012', 'pedro.lopez@example.com'),
(7, 'Laura', 'Ramírez', '3007890123', 'laura.ramirez@example.com'), 
(8, 'Jorge', 'Hernández', '3008901234', 'jorge.hernandez@example.com'),
(9, 'Sofía', 'Torres', '3009012345', 'sofia.torres@example.com'),
(10, 'Miguel', 'Sánchez', '3000123456', 'miguel.sanchez@example.com'),
(11, 'Valeria', 'Castro', '3009876543', 'valeria.castro@example.com'),
(12, 'Andrés', 'Moreno', '3008765432', 'andres.moreno@example.com'),
(13, 'Lucía', 'Vargas', '3007654321', 'lucia.vargas@example.com'),
(14, 'Diego', 'Ramos', '3006543210', 'diego.ramos@example.com'),
(15, 'Elena', 'Ortiz', '3005432109', 'elena.ortiz@example.com'),
(16, 'Fernando', 'Silva', '3004321098', 'fernando.silva@example.com'),
(17, 'Gabriela', 'Mendoza', '3003210987', 'gabriela.mendoza@example.com'),
(18, 'Héctor', 'Romero', '3002109876', 'hector.romero@example.com'),
(19, 'Isabel', 'García', '3001098765', 'isabel.garcia@example.com'),
(20, 'Javier', 'Reyes', '3000987654', 'javier.reyes@example.com'),
(21, 'Karla', 'Flores', '3009876543', 'karla.flores@example.com'),
(22, 'Luis', 'Gutiérrez', '3008765432', 'luis.gutierrez@example.com'),
(23, 'Mariana', 'Paredes', '3007654321', 'mariana.paredes@example.com'),
(24, 'Nicolás', 'Soto', '3006543210', 'nicolas.soto@example.com'), 
(25, 'Olivia', 'Vega', '3005432109', 'olivia.vega@example.com'),
(26, 'Pablo', 'Cruz', '3004321098', 'pablo.cruz@example.com'), 
(27, 'Quintín', 'Rojas', '3003210987', 'quintin.rojas@example.com'), (28, 'Raquel', 'Navarro', '3002109876', 'raquel.navarro@example.com'), (29, 'Santiago', 'Lara', '3001098765', 'santiago.lara@example.com'), (30, 'Teresa', 'Molina', '3000987654', 'teresa.molina@example.com'), (31, 'Ulises', 'Campos', '3009876543', 'ulises.campos@example.com'), (32, 'Victoria', 'Peña', '3008765432', 'victoria.pena@example.com'), (33, 'Walter', 'Salazar', '3007654321', 'walter.salazar@example.com'), (34, 'Ximena', 'Delgado', '3006543210', 'ximena.delgado@example.com'), (35, 'Yolanda', 'Figueroa', '3005432109', 'yolanda.figueroa@example.com'), (36, 'Zacarías', 'Mejía', '3004321098', 'zacarias.mejia@example.com'), (37, 'Alberto', 'Núñez', '3003210987', 'alberto.nunez@example.com'), (38, 'Beatriz', 'Ponce', '3002109876', 'beatriz.ponce@example.com'), (39, 'César', 'Quintero', '3001098765', 'cesar.quintero@example.com'), (40, 'Daniela', 'Rivas', '3000987654', 'daniela.rivas@example.com'), (41, 'Esteban', 'Serrano', '3009876543', 'esteban.serrano@example.com'), (42, 'Fabiola', 'Tovar', '3008765432', 'fabiola.tovar@example.com'), (43, 'Gustavo', 'Ulloa', '3007654321', 'gustavo.ulloa@example.com'), (44, 'Hilda', 'Valencia', '3006543210', 'hilda.valencia@example.com'), (45, 'Iván', 'Zamora', '3005432109', 'ivan.zamora@example.com'), (46, 'Julia', 'Acosta', '3004321098', 'julia.acosta@example.com'), (47, 'Kevin', 'Barrera', '3003210987', 'kevin.barrera@example.com'), (48, 'Laura', 'Cabrera', '3002109876', 'laura.cabrera@example.com'), (49, 'Manuel', 'Díaz', '3001098765', 'manuel.diaz@example.com'), (50, 'Natalia', 'Espinoza', '3000987654', 'natalia.espinoza@example.com'), (51, 'Oscar', 'Fuentes', '3009876543', 'oscar.fuentes@example.com'), (52, 'Patricia', 'Gómez', '3008765432', 'patricia.gomez@example.com'), (53, 'Ramón', 'Hernández', '3007654321', 'ramon.hernandez@example.com'), (54, 'Sara', 'Iglesias', '3006543210', 'sara.iglesias@example.com'), (55, 'Tomás', 'Jiménez', '3005432109', 'tomas.jimenez@example.com'), (56, 'Úrsula', 'Klein', '3004321098', 'ursula.klein@example.com'), (57, 'Víctor', 'López', '3003210987', 'victor.lopez@example.com'), (58, 'Wendy', 'Martínez', '3002109876', 'wendy.martinez@example.com'), (59, 'Xavier', 'Nava', '3001098765', 'xavier.nava@example.com'), (60, 'Yadira', 'Ochoa', '3000987654', 'yadira.ochoa@example.com'), (61, 'Zulema', 'Pérez', '3009876543', 'zulema.perez@example.com'), (62, 'Alonso', 'Quintana', '3008765432', 'alonso.quintana@example.com'), (63, 'Blanca', 'Ramírez', '3007654321', 'blanca.ramirez@example.com'), (64, 'Carlos', 'Sánchez', '3006543210', 'carlos.sanchez@example.com'), (65, 'Diana', 'Torres', '3005432109', 'diana.torres@example.com'), (66, 'Eduardo', 'Urbina', '3004321098', 'eduardo.urbina@example.com'), (67, 'Felipe', 'Vargas', '3003210987', 'felipe.vargas@example.com'), (68, 'Gloria', 'Wong', '3002109876', 'gloria.wong@example.com'), (69, 'Hugo', 'Ximénez', '3001098765', 'hugo.ximenez@example.com'), (70, 'Inés', 'Yáñez', '3000987654', 'ines.yanez@example.com'), (71, 'Jorge', 'Zapata', '3009876543', 'jorge.zapata@example.com'), (72, 'Karla', 'Alvarado', '3008765432', 'karla.alvarado@example.com'), (73, 'Luis', 'Bautista', '3007654321', 'luis.bautista@example.com'), (74, 'María', 'Castaño', '3006543210', 'maria.castano@example.com'), (75, 'Nicolás', 'Duarte', '3005432109', 'nicolas.duarte@example.com'), (76, 'Olga', 'Escobar', '3004321098', 'olga.escobar@example.com');

SELECT * FROM cliente;
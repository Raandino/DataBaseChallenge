-- Unidades de Masa
insert into Unidad values ('Lb')
insert into Unidad values ('gr')
insert into Unidad values ('Kg')
-- Unidades de Liquido
insert into Unidad values ('ml')
insert into Unidad values ('L')
-- Unidades Volumetricas
insert into Unidad values ('tsp')
insert into Unidad values ('Tbsp')
insert into Unidad values ('Taza')
--Factura


--Usuario
insert into Usuario 
values
('alex',CAST('SaladoPescado10' as BINARY(32)), 'Alex','Cuadra'),
('rodolfo',CAST('SaladoPescado10' as BINARY(32)), 'Rodolfo','Andrino'),
('jacobo',CAST('SaladoPescado10' as BINARY(32)), 'Jacobo','Amador'),
('roberto',CAST('SaladoPescado10' as BINARY(32)), 'Roberto','Sanchez')

--Permiso
insert into Permiso values('lmao',3),
('g3thack3d',4),
('xdxddd',2)
-- Usuario_Permiso

--Inventario
insert into Inventario values('Tomate',1,2)

--Platillo
insert into Platillo values('Pizza',25,0)

-- Platilo_Ingrediente
INSERT into Platillo_Ingrediente values(1,1,2,25)


--Factura
select * from Factura
Insert into Factura
VALUES
(1,'roberto',123,0,'2019-11-07'),
(1,'alex',500,0,'2019-12-07'),
(2,'rodolfo',420,0,'2019-10-11'),
(2,'jacobo',333,0,'2019-9-30'),
(3,'josue',75,0,'2019-10-15'),
(3,'carlos',100,0,'2019-10-08'),
(3,'marco',120,0,'2019-10-06')

Select year(fecha), month(fecha), day(fecha)
from Factura;
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
Insert into Factura
VALUES
('roberto',123,0,'2019-11-07'),
('alex',500,0,'2019-12-07'),
('rodolfo',420,0,'2019-10-11'),
('jacobo',333,0,'2019-9-30'),
('josue',75,0,'2019-10-15'),
('carlos',100,0,'2019-10-08'),
('marco',120,0,'2019-10-06')

Select year(fecha), month(fecha), day(fecha)
from Factura;
SELECT * 
FROM clientes
WHERE estado = 'activo';

SELECT c.nombre, c.apellidos, cl.nombre AS clase, r.fecha, r.estado
FROM reservas r
JOIN clientes c ON r.id_cliente = c.id_cliente
JOIN clases cl ON r.id_clase = cl.id_clase;

SELECT cl.nombre AS clase, e.nombre AS entrenador
FROM clases cl
JOIN entrenadores e ON cl.id_entrenador = e.id_entrenador;

SELECT c.nombre, SUM(p.importe) AS total_pagado
FROM pagos p
JOIN clientes c ON p.id_cliente = c.id_cliente
GROUP BY c.id_cliente;

SELECT * 
FROM clientes
WHERE nombre LIKE '%Juan%';

SELECT * 
FROM reservas
WHERE estado = 'activa';

mysqldump -u usuario -p olimpoh > backup.sql

SELECT * FROM clientes
INTO OUTFILE 'clientes.csv'
FIELDS TERMINATED BY ',';

CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, INSERT ON olimpoh.* TO 'usuario'@'localhost';



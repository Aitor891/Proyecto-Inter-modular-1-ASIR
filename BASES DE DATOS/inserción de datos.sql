INSERT INTO clientes (nombre, apellidos, dni, telefono, email, fecha_alta, estado) VALUES
('Juan', 'Pérez', '12345678A', '600111222', 'juan@olimpoh.com', '2024-01-10', 'activo'),
('María', 'López', '87654321B', '600333444', 'maria@olimpoh.com', '2024-02-15', 'activo'),
('Carlos', 'García', '11223344C', '600555666', 'carlos@olimpoh.com', '2024-03-20', 'inactivo');

INSERT INTO entrenadores (nombre, apellidos, especialidad, telefono) VALUES
('Laura', 'Martínez', 'Fitness', '611111111'),
('Pedro', 'Sánchez', 'Crossfit', '622222222');

INSERT INTO rutinas (nombre, descripcion, nivel, id_entrenador) VALUES
('Rutina Básica', 'Entrenamiento para principiantes', 'basico', 1),
('Rutina Avanzada', 'Entrenamiento intensivo', 'avanzado', 2);

INSERT INTO clases (nombre, horario, capacidad, id_entrenador) VALUES
('Spinning', '2024-06-01 10:00:00', 15, 1),
('Yoga', '2024-06-02 18:00:00', 10, 2);

INSERT INTO reservas (id_cliente, id_clase, fecha, estado) VALUES
(1, 1, '2024-06-01', 'activa'),
(2, 2, '2024-06-02', 'activa'),
(1, 2, '2024-06-02', 'cancelada');

INSERT INTO pagos (id_cliente, importe, fecha, metodo_pago) VALUES
(1, 50.00, '2024-01-10', 'tarjeta'),
(2, 45.00, '2024-02-15', 'efectivo'),
(1, 50.00, '2024-03-10', 'transferencia');


-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2026 a las 18:38:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `olimpoh`
--

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id_clase`, `nombre`, `horario`, `capacidad`, `id_entrenador`) VALUES
(1, 'Spinning', '2024-06-01 10:00:00', 15, 1),
(2, 'Yoga', '2024-06-02 18:00:00', 10, 2);

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellidos`, `dni`, `telefono`, `email`, `fecha_alta`, `estado`) VALUES
(1, 'Juan', 'Pérez', '12345678A', '600111222', 'juan@olimpoh.com', '2024-01-10', 'activo'),
(2, 'María', 'López', '87654321B', '600333444', 'maria@olimpoh.com', '2024-02-15', 'activo'),
(3, 'Carlos', 'García', '11223344C', '600555666', 'carlos@olimpoh.com', '2024-03-20', 'inactivo');

--
-- Volcado de datos para la tabla `entrenadores`
--

INSERT INTO `entrenadores` (`id_entrenador`, `nombre`, `apellidos`, `especialidad`, `telefono`) VALUES
(1, 'Laura', 'Martínez', 'Fitness', '611111111'),
(2, 'Pedro', 'Sánchez', 'Crossfit', '622222222');

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `id_cliente`, `importe`, `fecha`, `metodo_pago`) VALUES
(1, 1, 50.00, '2024-01-10', 'tarjeta'),
(2, 2, 45.00, '2024-02-15', 'efectivo'),
(3, 1, 50.00, '2024-03-10', 'transferencia');

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_cliente`, `id_clase`, `fecha`, `estado`) VALUES
(1, 1, 1, '2024-06-01', 'activa'),
(2, 2, 2, '2024-06-02', 'activa'),
(3, 1, 2, '2024-06-02', 'cancelada');

--
-- Volcado de datos para la tabla `rutinas`
--

INSERT INTO `rutinas` (`id_rutina`, `nombre`, `descripcion`, `nivel`, `id_entrenador`) VALUES
(1, 'Rutina Básica', 'Entrenamiento para principiantes', 'basico', 1),
(2, 'Rutina Avanzada', 'Entrenamiento intensivo', 'avanzado', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2023 a las 18:38:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uncoderdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biometric`
--

CREATE TABLE `biometric` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `c_ojos` varchar(255) NOT NULL,
  `c_cabello` varchar(255) NOT NULL,
  `t_zapato` int(11) NOT NULL,
  `genero` int(11) NOT NULL,
  `tipo_tatuaje` int(11) NOT NULL,
  `f_entrada` int(11) NOT NULL,
  `h_entrada` int(11) NOT NULL,
  `f_salida` int(11) NOT NULL,
  `h_salida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `biometric`
--

INSERT INTO `biometric` (`id`, `nombre`, `c_ojos`, `c_cabello`, `t_zapato`, `genero`, `tipo_tatuaje`, `f_entrada`, `h_entrada`, `f_salida`, `h_salida`) VALUES
(1018, ' Andrea Garcia', ' Azul', ' Rubio', 36, 0, 0, 4, 20, 4, 21),
(1220, 'Franci Sanchez Zambrano', 'Marron oscuro', 'Negro', 37, 0, 0, 27, 21, 27, 21),
(1285, ' Laura Rodriguez', ' Verde', ' Castano', 37, 0, 0, 5, 8, 5, 9),
(1389, ' Alejandro Morales', ' Azul', ' Rubio', 41, 0, 0, 12, 5, 12, 6),
(1484, ' Daniel Sanchez', ' Azul', ' Rubio', 44, 0, 0, 22, 4, 22, 5),
(1548, ' Juan Lopez', ' Marron', ' Negro', 41, 0, 0, 20, 16, 20, 17),
(1556, ' Paula Martin', ' Verde', ' Rubio', 38, 0, 0, 18, 12, 18, 12),
(1662, ' Maria Torres', ' Azul', ' Rubio', 37, 0, 0, 20, 20, 20, 20),
(1792, ' Carolina Silva', ' Verde', ' Castano', 37, 0, 0, 31, 16, 31, 16),
(1874, ' Sofia Ramirez', ' Verde', ' Castano', 37, 0, 0, 7, 22, 7, 23),
(1945, ' Ricardo Gomez', ' Marron', ' Pelirrojo', 42, 0, 0, 19, 14, 19, 14),
(1957, ' Sofia Delgado', ' Verde', ' Rubio', 39, 0, 0, 12, 11, 12, 11),
(2049, ' Laura Garcia', ' Azul', ' Rubio', 36, 0, 0, 3, 12, 3, 12),
(2075, ' Isabel Torres', ' Azul', ' Castano', 39, 0, 0, 16, 6, 16, 6),
(2197, 'Sara', 'Marron Verdoso', 'Azul O Verde', 40, 0, 0, 27, 15, 27, 16),
(2219, 'Marta Lopez', ' Marron', ' Rubio', 38, 0, 0, 15, 7, 15, 7),
(2260, ' Carlos Mendez', ' Marron', ' Negro', 42, 0, 0, 3, 19, 3, 19),
(2267, ' Andrea Rodriguez', ' Verde', ' Castano', 36, 0, 0, 21, 9, 21, 10),
(2342, 'Melanie Rodriguez Perez', 'Marron oscuro', 'Castano obscuro', 41, 0, 0, 28, 22, 28, 23),
(2421, ' Paula Lopez', ' Azul', ' Rubio', 39, 0, 0, 11, 13, 11, 13),
(2444, ' Sergio Ramirez', ' Marron', ' Pelirrojo', 42, 0, 0, 10, 5, 10, 6),
(2496, ' Sergio Gomez', ' Marron', ' Pelirrojo', 42, 0, 0, 11, 3, 11, 3),
(2560, 'Chiarita', 'Castano', 'Castano', 38, 0, 0, 30, 1, 30, 2),
(2620, ' Marta Garcia', ' Verde', ' Castano', 37, 0, 0, 21, 23, 21, 0),
(2678, ' Alejandro Torres', ' Verde', ' Castano', 37, 0, 0, 4, 13, 4, 13),
(2711, 'Leydy Garcia', 'Marron Oscuro', 'Negro', 38, 0, 0, 4, 18, 4, 19),
(2720, ' Sergio Vargas', ' Marron', ' Negro', 43, 0, 0, 17, 7, 17, 7),
(3020, ' Daniel Perez', ' Marron', ' Negro', 43, 0, 0, 12, 22, 12, 22),
(3065, ' Laura Lopez', ' Marron', ' Rubio', 37, 0, 0, 7, 20, 7, 21),
(3118, ' Daniel Ramirez', ' Marron', ' Castano', 42, 0, 0, 7, 5, 7, 5),
(3232, ' Juan Pablo Vargas', ' Azul', ' Rubio', 43, 0, 0, 22, 8, 22, 9),
(3234, ' Mario Lopez', ' Marron', ' Castano', 42, 0, 0, 26, 13, 26, 13),
(3265, ' Daniela Torres', ' Marron', ' Rubio', 37, 0, 0, 25, 21, 25, 22),
(3279, ' Laura Gonzalez', ' Marron', ' Negro', 38, 0, 0, 11, 14, 11, 14),
(3281, 'Marcela Romero', 'Cafe Claro', 'Chocolate', 39, 0, 0, 26, 15, 26, 16),
(3314, ' Alberto Ramirez', ' Marron', ' Castano', 42, 0, 0, 15, 2, 15, 3),
(3316, ' David Torres', ' Marron', ' Negro', 41, 0, 0, 12, 16, 12, 17),
(3329, ' Victoria Ramirez', ' Azul', ' Rubio', 37, 0, 0, 19, 12, 19, 12),
(3407, ' Pedro Ramirez', ' Marron', ' Negro', 40, 0, 0, 15, 10, 15, 10),
(3485, ' Francisco Ruiz', ' Marron', ' Rubio', 37, 0, 0, 6, 19, 6, 20),
(3561, ' Gael Silva', ' Marron', ' Rubio', 37, 0, 0, 9, 7, 9, 8),
(3570, ' Antonella Lopez', ' Azul', ' Rubio', 43, 0, 0, 5, 18, 5, 19),
(3583, 'Gabriela', 'castano', 'castano', 40, 0, 0, 29, 2, 29, 3),
(3590, ' Camila Mendoza', ' Marron', ' Negro', 42, 0, 0, 5, 19, 5, 20),
(3601, ' Laura Torres', ' Azul', ' Rubio', 37, 0, 0, 19, 14, 19, 15),
(3653, ' Diego Garcia', ' Marron', ' Castano', 42, 0, 0, 19, 7, 19, 7),
(3709, 'Jorge', 'Verdes', 'Negro', 45, 0, 0, 2, 11, 2, 12),
(3860, ' Santiago Herrera', ' Azul', ' Negro', 42, 0, 0, 16, 1, 16, 1),
(4248, ' Hugo Paredes', ' Marron', ' Castano', 42, 0, 0, 28, 19, 28, 19),
(4308, ' Daniel Lopez', ' Marron', ' Negro', 40, 0, 0, 20, 15, 20, 16),
(4315, ' Adrian Ortega', ' Verde', ' Rubio', 39, 0, 0, 10, 4, 10, 5),
(4441, ' Sofia Ramos', ' Verde', ' Rubio', 38, 0, 0, 25, 20, 25, 20),
(4456, ' Juan Morales', ' Marron', ' Negro', 41, 0, 0, 20, 10, 20, 10),
(4753, 'Eva', 'Negros', 'Negro', 41, 0, 0, 1, 0, 1, 0),
(4920, ' Luciana Morales', ' Verde', ' Castano', 36, 0, 0, 16, 14, 16, 14),
(5063, 'Cyma', 'Verde', 'Pelirroja', 37, 0, 0, 28, 5, 28, 6),
(5067, ' Ana Martinez', ' Verde', ' Castano', 37, 0, 0, 17, 20, 17, 21),
(5200, ' Alejandro Sanchez', ' Azul', ' Rubio', 43, 0, 0, 6, 14, 6, 15),
(5295, 'Greiskel', 'Negro', 'Negro', 37, 0, 0, 27, 13, 27, 16),
(5549, ' Sebastian Cruz', ' Verde', ' Rubio', 39, 0, 0, 10, 15, 10, 16),
(5556, ' Javier Garcia', ' Marron', ' Pelirrojo', 42, 0, 0, 10, 22, 10, 22),
(5576, ' Carla Rodriguez', ' Azul', ' Rubio', 37, 0, 0, 15, 10, 15, 11),
(5694, 'Zoraida Manzanares Jimenez', 'Marron', 'Castano Oscuro', 38, 0, 0, 8, 22, 8, 23),
(5792, ' Valeria Ortega', ' Azul', ' Rubio', 36, 0, 0, 29, 22, 29, 22),
(6036, ' Laura Martinez', ' Verde', ' Rubio', 39, 0, 0, 12, 9, 12, 9),
(6125, ' Mateo Vidal', ' Azul', ' Rubio', 43, 0, 0, 1, 15, 1, 16),
(6273, ' Gabriela Paredes', ' Verde', ' Castano', 36, 0, 0, 20, 14, 20, 15),
(6446, 'Juan Carlos', 'Verde', 'Blanco', 42, 0, 0, 1, 18, 1, 19),
(6539, ' Matias Rojas', ' Azul', ' Rubio', 39, 0, 0, 19, 5, 19, 6),
(6563, ' Sofia Lopez', ' Marron', ' Rubio', 37, 0, 0, 14, 21, 14, 22),
(6581, ' Valentina Vargas', ' Marron', ' Pelirrojo', 43, 0, 0, 18, 1, 18, 1),
(6592, ' Leonardo Castro', ' Marron', ' Castano', 42, 0, 0, 15, 6, 15, 7),
(6603, ' Marta Sanchez', ' Marron', ' Rubio', 38, 0, 0, 18, 23, 18, 23),
(6696, 'Ana', 'Cafe', 'Cafe', 38, 0, 0, 3, 5, 3, 5),
(6708, ' Maria Ramirez', ' Marron', ' Rubio', 38, 0, 0, 22, 13, 22, 13),
(6750, ' Marta Fernandez', ' Verde', ' Rubio', 37, 0, 0, 9, 23, 9, 0),
(6755, 'Roberto Sanchez', ' Azul', ' Rubio', 44, 0, 0, 21, 18, 21, 18),
(6893, 'Mariama', 'Marron', 'Rubio', 38, 0, 0, 25, 2, 25, 2),
(7172, ' Adrian Torres', ' Marron', ' Negro', 42, 0, 0, 30, 6, 30, 7),
(7182, 'Alberto Diaz Esteban', 'Azul', 'Rubio', 43, 0, 0, 7, 17, 7, 18),
(7253, 'Liliana', 'Marron', 'Marron Con Mechas', 36, 0, 0, 6, 22, 6, 23),
(7365, ' Isabella Medina', ' Marron', ' Negro', 41, 0, 0, 20, 1, 20, 1),
(7415, ' Javier Lopez', ' Azul', ' Rubio', 43, 0, 0, 17, 14, 17, 15),
(7514, ' Natalia Rios', ' Azul', ' Rubio', 43, 0, 0, 8, 7, 8, 7),
(7582, ' Rodrigo Medina', ' Marron', ' Negro', 41, 0, 0, 26, 7, 26, 8),
(7588, ' Emiliano Pena', ' Marron', ' Negro', 42, 0, 0, 6, 17, 6, 18),
(7600, ' Juan Torres', ' Marron', ' Negro', 41, 0, 0, 9, 18, 9, 19),
(7663, 'Marisol', 'Verde', 'Rubio', 39, 0, 0, 5, 17, 5, 18),
(7731, ' Laura Sanchez', ' Marron', ' Rubio', 38, 0, 0, 14, 14, 14, 14),
(7825, 'Kibria', 'Negro', 'Negro', 40, 0, 0, 31, 6, 31, 7),
(8086, ' Miguel Gonzalez', ' Marron', ' Castano', 42, 0, 0, 14, 19, 14, 19),
(8179, ' Carlos Lopez', ' Marron', ' Negro', 42, 0, 0, 4, 23, 4, 23),
(8191, ' Miguel Ramirez', ' Marron', ' Pelirrojo', 44, 0, 0, 3, 9, 3, 10),
(8194, ' Adrian Perez', ' Marron', ' Castano', 42, 0, 0, 10, 20, 10, 20),
(8331, 'Bea', 'Marrones', 'Negro', 40, 0, 0, 1, 20, 1, 20),
(8468, ' Marina Vargas', ' Azul', ' Rubio', 39, 0, 0, 27, 14, 27, 15),
(8544, ' Javier Ramirez', ' Marron', ' Castano', 42, 0, 0, 30, 22, 30, 22),
(8569, ' Ana Rodriguez', ' Azul', ' Rubio', 37, 0, 0, 20, 13, 20, 14),
(8667, ' Valeria Jimenez', ' Azul', ' Rubio', 36, 0, 0, 12, 18, 12, 19),
(8976, ' Alejandro Ramirez', ' Marron', ' Pelirrojo', 42, 0, 0, 10, 15, 10, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230621150143', '2023-06-21 15:16:58', 133);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interview`
--

CREATE TABLE `interview` (
  `id` int(11) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `h_crimen` varchar(255) NOT NULL,
  `testigo` varchar(255) NOT NULL,
  `t_crimen` varchar(255) NOT NULL,
  `transcripcion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `interview`
--

INSERT INTO `interview` (`id`, `fecha`, `ciudad`, `h_crimen`, `testigo`, `t_crimen`, `transcripcion`) VALUES
(2260, ' 17 de junio de 2022', ' Pythonton', '00:22:34', 'Carlos Mendez', ' Asalto a mano armada', 'Estaba saliendo de la tienda cuando vi a dos hombres encapuchados entrar rapidamente con armas en la mano. Gritaron y amenazaron a todos los presentes, exigiendo que entregaramos nuestras pertenencias. El panico se apodero de la tienda mientras los asaltantes saqueaban las cajas registradoras y tomaban objetos de valor de los clientes. Temia por mi vida mientras trataba de mantenerme lo mas quieto posible'),
(2560, ' 9 de noviembre de 2022', ' Nodeburg', '22:42:27', 'Chiara Vigilante', ' Homicidio', 'Estaba caminando por el bosque cuando me tope con una escena macabra. Habia un cuerpo sin vida colgado de un arbol, rodeado de extra?os simbolos y velas. Me fui corriendo asustado y llame a la policia'),
(2678, '27 de marzo de 2023', 'Boostrap', '14:50:40', 'Juan Antonio Garcia', 'Homicidio', 'Escucho un grito agudo proveniente de la direccion de la biblioteca antes del crimen. El recuerda haber visto a una mujer apresurada salir del lugar, y noto que llevaba una bufanda de colores vibrantes envuelta alrededor de su mu?eca. Menciona haber visto a la misma mujer cerca del parque central antes del crimen. La mujer llevaba una camiseta con un estampado de gatos y una mochila. La mujer parecia nerviosa y constantemente se tocaba el pelo mientras caminaba por la zona. Aunque asegura recordar que el color de su credencial era rojo, este es solo para personas afiliadas hace mucho tiempo.'),
(5295, '27 de marzo de 2023', 'Boostrap', '14:50:40', 'Greiskel Sanchez', 'Homicidio', 'Menciona que vio a un hombre sospechoso de aspecto robusto merodeando cerca de la escena del crimen. El hombre llevaba una gorra oscura que ocultaba parcialmente su rostro, con unos grandes bolsos negros. Aunque asegura recordar que el color de su credencial era rojo, este es solo para personas afiliadas hace mucho tiempo. Ademas, Greiskel recuerda que durante la tarde del crimen, vio a una mujer con un cabello distintivo cerca de la biblioteca, pero por la conmocion del momento no recuerda algo mas exacto de la persona. Ella llevaba una credencial de biblioteca que colgaba de su cuello con un dise?o peculiar, con una imagen de un buho rodeado de libros. La mujer llevaba una mochila y zapatillas comodas, y parecia estar observando a alguien en particular con una mirada inquisitiva.'),
(5998, ' 3 de enero de 2023', ' Angularville', '14:33:40', 'Yeny Garcia', ' Robo a mano armada', 'Estaba caminando cerca del parque cuando vi a dos personas discutiendo acaloradamente. De repente, una de ellas saco un arma y disparo a la otra. Luego huyo del lugar a toda prisa'),
(6036, ' 8 de mayo de 2023', ' Laravelia', '13:55:07', 'Laura Martinez', ' Incendio intencional', 'Estaba pescando en el lago cercano cuando vi como se desataba un incendio forestal en la distancia. Las llamas se extendian rapidamente, creando un resplandor aterrador en el cielo nocturno. El sonido del fuego crepitando y los arboles colapsando era escalofriante. Las rafagas de viento avivaban las llamas y el humo dificultaba la respiracion. Fue devastador presenciar como la belleza natural se convertia en un escenario caotico'),
(6563, ' 17 de junio de 2022', ' Pythonton', '00:22:34', 'Sofia Lopez', ' Asalto a mano armada', 'Estaba dentro de la tienda comprando cuando de repente escuche un estruendo. Me di la vuelta y vi a dos hombres enmascarados irrumpir en el lugar con armas en sus manos. Todos entraron en panico y comenzaron a correr en todas las direcciones. Los asaltantes parecian estar bajo una gran presion, gritando y amenazando a la gente para que entregara su dinero y pertenencias. Me escondi detras de una estanteria, aterrada, mientras veia como los asaltantes saqueaban la tienda'),
(6755, ' 8 de mayo de 2023', ' Laravelia', '13:55:07', 'Roberto Sanchez', ' Incendio intencional', 'Estaba caminando por el sendero cuando note un fuerte olor a humo y vi columnas de humo negro elevandose hacia el cielo. Pronto, me di cuenta de que habia un incendio forestal en curso. Las llamas se propagaban rapidamente, devorando los arboles y la vegetacion. El fuego era imponente y el calor era sofocante. Llame a los servicios de emergencia de inmediato mientras observaba impotente como el fuego consumia el hermoso bosque'),
(7182, ' 3 de enero de 2023', ' Angularville', '14:33:40', 'Alberto Diaz', ' Robo a mano armada', 'Estaba en mi balcon cuando vi un coche chocar contra una farola. Dos hombres salieron del vehiculo y comenzaron a pelearse violentamente. Uno de ellos saco un objeto punzante y apu?alo al otro. Luego escaparon en direcciones opuestas'),
(7253, ' 12 de febrero de 2023', ' Reactburg', '05:54:30', 'Liliana Garcia', ' Homicidio', 'Vi a una figura sospechosa merodeando cerca del callejon a altas horas de la noche. De repente, escuche un grito y vi a un hombre caido en el suelo, aparentemente apu?alado. La figura se alejo rapidamente antes de que pudiera hacer algo'),
(7663, ' 12 de febrero de 2023', ' Reactburg', '05:54:30', 'Maria Soledad Piquer', ' Homicidio', 'Estaba en mi apartamento cuando escuche una fuerte discusion proveniente del piso de abajo. Baje rapidamente y vi a un hombre con sangre en las manos y una mujer inconsciente en el suelo. Parecia haber sido golpeada brutalmente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interview_biometric`
--

CREATE TABLE `interview_biometric` (
  `id` int(11) NOT NULL,
  `fk_interview_id` int(11) NOT NULL,
  `fk_biometric_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biometric`
--
ALTER TABLE `biometric`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `interview`
--
ALTER TABLE `interview`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `interview_biometric`
--
ALTER TABLE `interview_biometric`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_29B8CE51740B9F8C` (`fk_interview_id`),
  ADD KEY `IDX_29B8CE51DA4F008C` (`fk_biometric_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `biometric`
--
ALTER TABLE `biometric`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8977;

--
-- AUTO_INCREMENT de la tabla `interview`
--
ALTER TABLE `interview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7664;

--
-- AUTO_INCREMENT de la tabla `interview_biometric`
--
ALTER TABLE `interview_biometric`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `interview_biometric`
--
ALTER TABLE `interview_biometric`
  ADD CONSTRAINT `FK_29B8CE51740B9F8C` FOREIGN KEY (`fk_interview_id`) REFERENCES `interview` (`id`),
  ADD CONSTRAINT `FK_29B8CE51DA4F008C` FOREIGN KEY (`fk_biometric_id`) REFERENCES `biometric` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

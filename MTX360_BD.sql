USE [MTX360]
GO
/****** Object:  Table [dbo].[coordenadas]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coordenadas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[imagen] [varchar](100) NOT NULL,
	[piso] [int] NOT NULL,
	[coordenadas] [varchar](100) NOT NULL,
	[url] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flecha]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flecha](
	[id_flecha] [int] IDENTITY(1,1) NOT NULL,
	[id_imagen] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[posicion] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_flecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[imagen]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imagen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ruta] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[x] [int] NULL,
	[y] [int] NULL,
	[piso] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[Email] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[coordenadas] ON 

INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (1, N'Espartar', N'espartar.jpg', 0, N'242,65,285,152', 0)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (2, N'Laboratorio de física', N'fisica.jpg', 0, N'307,65,367,151', 1)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (3, N'Dept. Biología', N'biologia.jpg', 0, N'242,152,285,184', 2)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (4, N'Dept. F&Q', N'FyQ.jpg', 0, N'307,151,367,188', 3)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (5, N'Dept. Plástica', N'plastica.jpg', 0, N'242,184,285,219', 4)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (6, N'Cian', N'cian.jpg', 0, N'242,219,285,309', 5)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (7, N'Estetica 2', N'estetica2.jpg', 0, N'307,183,367,276', 6)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (8, N'Relatividad', N'relatividad.jpg', 0, N'307,276,367,340', 7)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (9, N'Biblioteca', N'biblioteca.jpg', 0, N'307,372,367,557', 8)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (10, N'Cortocircuito', N'corto.jpg', 0, N'312,619,367,739', 9)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (11, N'Dept. Tecnología', N'tec.jpg', 0, N'312,739,367,773', 10)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (12, N'Leonardo', N'leonardo.jpg', 0, N'312,773,367,888', 11)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (13, N'Magenta', N'magenta.jpg', 0, N'242,650,296,757', 12)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (14, N'Informática 5', N'info5.jpg', 0, N'242,758,296,824', 13)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (15, N'Informática 6', N'info6.jpg', 0, N'242,824,296,888', 14)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (16, N'Usos múltiples', N'usos.jpg', 3, N'128,374,180,528', 15)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (17, N'Cantina', N'cantina.jpg', 0, N'60,647,143,769', 16)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (18, N'Usos múltiples', N'usos.jpg', 3, N'128,374,180,528', 15)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (19, N'Informática 7', N'info7.jpg', 0, N'393,636,462,730', 18)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (20, N'Estética 1', N'estetica1.jpg', 0, N'462,636,528,730', 19)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (21, N'Curie', N'curie.jpg', 1, N'242,65,289,125', 20)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (22, N'Baladre', N'baladre.jpg', 1, N'242,124,289,184', 21)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (23, N'Pandora', N'pandora.jpg', 1, N'242,184,289,244', 22)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (24, N'Paname', N'paname.jpg', 1, N'242,245,289,309', 23)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (25, N'Galileo', N'galileo.jpg', 1, N'307,65,367,124', 24)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (26, N'Margalló', N'margallo.jpg', 1, N'307,124,367,183', 25)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (27, N'Quercus', N'quercus.jpg', 1, N'307,183,367,245', 26)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (28, N'Informática 8', N'info8.jpg', 1, N'307,246,368,300', 27)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (29, N'Informática 4', N'info4.jpg', 1, N'307,360,367,393', 28)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (30, N'Informática 3', N'info4.jpg', 1, N'307,393,367,445', 29)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (31, N'Informática 2', N'info2.jpg', 1, N'307,445,367,490', 30)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (32, N'Informática 1', N'info1.jpg', 1, N'307,490,367,553', 31)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (33, N'Arcoirirs', N'arcoiris.jpg', 1, N'307,553,368,587', 32)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (34, N'Altamira', N'altamira.jpg', 1, N'307,651.,367,710', 33)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (35, N'Iberia', N'iberia.jpg', 1, N'307,710,367,770', 34)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (36, N'ECO/FOL', N'ecofol.jpg', 1, N'307,770,667,829', 35)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (37, N'Ágora', N'agora.jpg', 1, N'307,829,367,888', 36)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (38, N'Guernica', N'guernica.jpg', 1, N'242,650,289,710', 37)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (39, N'Aitana', N'aitana.jpg', 1, N'242,710,289,770', 38)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (40, N'Sabios Oriente', N'sabios.jpg', 1, N'242,771,289,839', 39)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (41, N'Atenea', N'atenea.jpg', 1, N'242,829,289,888', 40)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (42, N'Sala Profesorado', N'profesorado.jpg', 1, N'128,374,180,589', 41)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (43, N'Ø', N'orara.jpg', 2, N'242,124,289,183', 42)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (44, N'Raíz cuadrada', N'raiz.jpg', 2, N'242,65,290,124', 43)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (45, N'Macondo', N'macondo.jpg', 2, N'242,183,289,245', 44)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (46, N'Oleza', N'oleza.jpg', 2, N'242,245,289,309', 45)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (47, N'M. M. Marçal', N'marcal.jpg', 2, N'242,650,289,710', 46)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (48, N'V. A. Estellés', N'estelles.jpg', 2, N'242,710,289,770', 47)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (49, N'London', N'london.jpg', 2, N'242,770,289,830', 48)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (50, N'Dublin', N'dublin.jpg', 2, N'242,829,289,888', 49)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (51, N'e', N'e.jpg', 2, N'307,65,367,123', 50)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (52, N'p', N'pi.jpg', 2, N'307,123,367,183', 51)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (53, N'La Regenta', N'regenta.jpg', 2, N'307,183,367,245', 52)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (54, N'Germinal', N'germinal.jpg', 2, N'307,245,367,300', 53)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (55, N'Musica 1', N'musica1.jpg', 2, N'307,360,367,465', 54)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (56, N'Dept. Musica', N'deptmusica.jpg', 2, N'307,465,367,492', 55)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (57, N'Musica 2', N'musica2.jpg', 2, N'307,492,367,587', 56)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (58, N'I. C. Simó', N'simo.jpg', 2, N'307,650,367,710', 57)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (59, N'Joan Fuster', N'joan.jpg', 2, N'307,710,367,770', 58)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (60, N'New York', N'newyork.jpg', 2, N'307,770,367,829', 59)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (61, N'Sidney', N'sidney.jpg', 2, N'307,829,367,888', 60)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (62, N'Dept. Francés Látin', N'frances.jpg', 2, N'128,364,180,403', 61)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (63, N'Dept. Informática', N'deptinformatica.jpg', 2, N'128,403,180,435', 62)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (64, N'Dept. Inglés', N'ingles.jpg', 2, N'128,435,180,465', 63)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (65, N'Matemáticas', N'matematicas.jpg', 2, N'128,465,180,494', 64)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (66, N'V. A. Geografía e História', N'geografia.jpg', 2, N'128,494,180,525', 65)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (67, N'Valenciano', N'valenciano.jpg', 2, N'128,525,180,555', 65)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (68, N'Castellano', N'castellano.jpg', 2, N'128,555,180,589', 67)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (69, N'Pasillo Azul', N'pasilloazul.jpg', 0, N'286,65,306,183', 89)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (70, N'Pasillo Azul', N'pasilloazul.jpg', 0, N'286,184,306,372', 86)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (71, N'hall', N'hall.jpg', 0, N'255,373,306,465', 84)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (72, N'hall', N'hall.jpg', 0, N'255,466,306,523', 83)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (73, N'hall', N'hall.jpg', 0, N'255,524,306,586', 82)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (74, N'Pasillo Verde', N'pasilloverde.jpg', 0, N'297,528,311,757', 81)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (75, N'Pasillo Verde', N'pasilloverde.jpg', 0, N'297,758,311,888', 79)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (76, N'Pasillo Naranja', N'pasillonaranja.jpg', 1, N'290,66,306,183', 100)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (77, N'Pasillo Naranja', N'pasillonaranja.jpg', 1, N'290,184,306,372', 97)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (78, N'Pasillo Centro', N'pasillocentro.jpg', 1, N'290,373,306,490', 96)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (79, N'Pasillo Centro', N'pasillocentro.jpg', 1, N'290,491,306,586', 94)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (80, N'Pasillo Rosa', N'pasillorosa.jpg', 1, N'290,587,306,770', 93)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (81, N'Pasillo Rosa', N'pasillorosa.jpg', 1, N'290,771,306,888', 91)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (82, N'Pasillo Amarillo', N'pasilloamarillo.jpg', 2, N'290,66,306,183', 78)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (83, N'Pasillo Amarillo', N'pasilloamarillo.jpg', 2, N'290,184,306,372', 74)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (84, N'Pasillo Centro', N'pasillocentro.jpg', 2, N'290,373,306,490', 109)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (85, N'Pasillo Centro', N'pasillocentro.jpg', 2, N'290,491,306,586', 73)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (86, N'Pasillo Rojo', N'pasillorojo.jpg', 2, N'290,587,306,770', 72)
INSERT [dbo].[coordenadas] ([id], [nombre], [imagen], [piso], [coordenadas], [url]) VALUES (87, N'Pasillo Rojo', N'pasillorojo.jpg', 2, N'290,771,306,888', 68)
SET IDENTITY_INSERT [dbo].[coordenadas] OFF
GO
SET IDENTITY_INSERT [dbo].[flecha] ON 

INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (1, 69, 70, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (2, 70, 69, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (3, 70, 71, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (4, 71, 70, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (5, 71, 72, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (6, 72, 71, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (7, 72, 73, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (8, 73, 72, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (9, 73, 74, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (10, 74, 73, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (11, 74, 110, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (12, 110, 74, N'55deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (13, 75, 76, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (14, 76, 75, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (15, 76, 77, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (16, 77, 76, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (17, 77, 78, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (18, 78, 77, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (19, 69, 61, N'220deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (20, 61, 69, N'123deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (21, 78, 79, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (22, 79, 78, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (23, 79, 44, N'220deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (24, 44, 79, N'150deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (25, 78, 51, N'350deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (26, 51, 78, N'150deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (27, 78, 43, N'170deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (28, 77, 45, N'170deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (29, 45, 77, N'150deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (30, 77, 52, N'350deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (31, 52, 77, N'150deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (32, 76, 46, N'170deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (33, 46, 76, N'150deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (34, 76, 53, N'350deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (35, 53, 76, N'150deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (36, 75, 98, N'170deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (37, 98, 75, N'150deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (38, 75, 54, N'350deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (39, 54, 75, N'150deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (40, 74, 56, N'0deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (41, 56, 74, N'180deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (42, 73, 47, N'340deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (43, 47, 73, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (44, 73, 94, N'35deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (45, 94, 73, N'40deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (46, 72, 48, N'340deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (47, 48, 72, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (49, 72, 58, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (50, 58, 72, N'130deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (51, 71, 49, N'340deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (52, 49, 71, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (53, 71, 59, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (54, 59, 71, N'130deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (55, 70, 50, N'340deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (56, 50, 70, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (57, 70, 60, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (58, 60, 70, N'130deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (64, 80, 81, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (65, 81, 80, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (66, 80, 81, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (67, 81, 80, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (68, 80, 81, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (69, 81, 80, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (70, 80, 81, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (71, 81, 80, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (72, 80, 81, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (73, 81, 80, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (74, 81, 82, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (75, 82, 81, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (76, 82, 83, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (77, 83, 82, N'10deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (78, 83, 84, N'200deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (79, 84, 83, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (80, 84, 85, N'345deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (81, 85, 84, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (82, 85, 86, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (83, 86, 85, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (84, 86, 87, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (85, 87, 86, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (86, 87, 88, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (87, 88, 87, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (88, 88, 89, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (89, 89, 88, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (90, 89, 90, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (91, 90, 89, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (94, 84, 97, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (95, 97, 84, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (96, 101, 100, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (97, 100, 101, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (98, 100, 99, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (99, 99, 100, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (100, 99, 98, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (101, 98, 99, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (102, 98, 97, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (103, 97, 98, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (104, 97, 96, N'40deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (105, 96, 97, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (106, 96, 95, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (107, 95, 96, N'280deg')
GO
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (108, 95, 94, N'115deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (109, 94, 95, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (110, 94, 93, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (111, 93, 94, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (112, 93, 92, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (113, 92, 93, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (114, 92, 91, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (115, 91, 92, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (118, 80, 15, N'0deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (119, 80, 12, N'220deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (120, 15, 80, N'220deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (121, 89, 1, N'220deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (122, 2, 89, N'140deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (123, 89, 2, N'340deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (124, 88, 7, N'0deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (125, 7, 88, N'200deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (126, 87, 6, N'220deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (127, 86, 8, N'0deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (128, 102, 85, N'195deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (129, 85, 102, N'200deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (130, 84, 9, N'30deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (131, 9, 84, N'150deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (132, 83, 103, N'110deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (133, 83, 109, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (134, 82, 13, N'350deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (135, 81, 14, N'350deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (136, 14, 81, N'130deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (137, 102, 103, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (138, 103, 102, N'200deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (139, 103, 83, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (140, 103, 105, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (141, 105, 103, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (142, 101, 21, N'250deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (143, 101, 25, N'40deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (144, 21, 101, N'330deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (145, 25, 101, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (146, 100, 26, N'340deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (147, 26, 100, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (148, 100, 23, N'170deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (149, 23, 100, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (150, 99, 27, N'340deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (151, 27, 99, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (152, 99, 24, N'170deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (153, 24, 99, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (154, 98, 28, N'340deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (155, 28, 98, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (156, 97, 42, N'180deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (157, 42, 97, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (158, 88, 5, N'170deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (159, 5, 88, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (160, 6, 87, N'140deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (161, 8, 86, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (162, 85, 106, N'30deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (163, 106, 85, N'320deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (164, 13, 82, N'140deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (165, 81, 11, N'220deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (166, 11, 81, N'260deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (167, 81, 10, N'150deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (168, 10, 81, N'120deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (169, 12, 80, N'120deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (170, 97, 29, N'0deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (171, 29, 97, N'70deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (172, 96, 30, N'330deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (173, 96, 31, N'30deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (174, 30, 96, N'70deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (175, 31, 96, N'130deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (176, 95, 32, N'330deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (177, 95, 33, N'30deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (180, 32, 95, N'230deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (181, 33, 95, N'40deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (182, 94, 38, N'330deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (183, 38, 94, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (184, 93, 34, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (185, 34, 93, N'140deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (186, 93, 39, N'340deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (187, 39, 93, N'140deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (188, 92, 36, N'160deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (189, 36, 92, N'140deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (190, 92, 41, N'340deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (191, 41, 92, N'140deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (192, 91, 37, N'180deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (193, 37, 91, N'140deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (194, 102, 107, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (195, 107, 102, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (196, 107, 108, N'120deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (197, 108, 107, N'40deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (198, 107, 115, N'190deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (199, 115, 107, N'90deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (200, 114, 115, N'200deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (201, 115, 114, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (202, 104, 109, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (203, 109, 104, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (204, 114, 104, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (205, 104, 114, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (206, 114, 113, N'0deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (207, 113, 114, N'140deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (208, 113, 111, N'70deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (209, 111, 113, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (210, 19, 111, N'270deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (211, 111, 19, N'40deg')
GO
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (212, 111, 109, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (213, 109, 111, N'180deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (214, 109, 83, N'280deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (215, 112, 113, N'110deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (216, 113, 112, N'0deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (217, 112, 103, N'0deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (218, 103, 112, N'0deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (219, 75, 110, N'95deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (220, 110, 75, N'300deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (221, 110, 97, N'90deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (222, 97, 110, N'130deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (223, 74, 55, N'315deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (224, 74, 57, N'45deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (225, 55, 74, N'120deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (226, 57, 74, N'250deg')
INSERT [dbo].[flecha] ([id_flecha], [id_imagen], [nodeId], [posicion]) VALUES (227, 1, 89, N'20deg')
SET IDENTITY_INSERT [dbo].[flecha] OFF
GO
SET IDENTITY_INSERT [dbo].[imagen] ON 

INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (1, N'espartar.JPG', N'Espartar', 260, 110, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (2, N'fisica.JPG', N'Laboratorio de física', 336, 114, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (3, N'deptbiologia.JPG', N'Dept. Biología', 262, 168, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (4, N'deptbiologia.JPG', N'Dept. F&Q', 336, 166, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (5, N'deptdibujo.JPG', N'Dept. Plástica', 260, 204, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (6, N'dibujo.JPG', N'Cian', 260, 267, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (7, N'estetica2.JPG', N'Estetica 2', 335, 230, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (8, N'germinal.JPG', N'Relatividad', 337, 312, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (9, N'biblioteca.JPG', N'Biblioteca', 333, 465, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (10, N'cortocircuito.JPG', N'Cortocircuito', 337, 682, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (11, N'depttec.JPG', N'Dept. Tecnología', 337, 755, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (12, N'leonardo.JPG', N'Leaonardo', 337, 825, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (13, N'magenta.JPG', N'Magenta', 270, 705, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (14, N'info5.JPG', N'Informática 5', 270, 794, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (15, N'info6.JPG', N'Informática 6', 270, 857, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (16, N'usos.JPG', N'Usos múltiples', 150, 458, 3)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (17, N'cantina.JPG', N'Cantina', 98, 708, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (18, N'usos2.JPG', N'Usos múltiples', 4000, 2000, 3)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (19, N'info7.JPG', N'Informática 7', 427, 681, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (20, N'estetica.JPG', N'Estética 1', 492, 681, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (21, N'curie.JPG', N'Curie', 1265, 1735, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (22, N'baladre.JPG', N'Baladre', 1265, 1795, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (23, N'pandora.JPG', N'Pandora', 1265, 1858, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (24, N'paname.JPG', N'Paname', 1265, 1921, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (25, N'galileo.JPG', N'Galileo', 1337, 1735, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (26, N'magallo.JPG', N'Margalló', 1337, 1795, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (27, N'quercus.JPG', N'Quercus', 1337, 1858, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (28, N'info8.JPG', N'Informática 8', 1337, 1915, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (29, N'info4.JPG', N'Informática 4', 1337, 2019, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (30, N'info3.JPG', N'Informática 3', 1337, 2063, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (31, N'info2.JPG', N'Informática 2', 1337, 2113, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (32, N'info1.JPG', N'Informática 1', 1337, 2166, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (33, N'arcoiris.JPG', N'Arcoíris', 1337, 2213, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (34, N'altamira.JPG', N'Altamira', 1337, 2320, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (35, N'iberia.JPG', N'Iberia', 1337, 2383, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (36, N'ecofol.JPG', N'ECO/FOL', 1337, 2444, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (37, N'agora.JPG', N'Ágora', 1337, 2501, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (38, N'guernica.JPG', N'Guernica', 1265, 2323, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (39, N'aitana.JPG', N'Aitana', 1265, 2383, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (40, N'sabiosoriente.JPG', N'Sabios Oriente', 1265, 2444, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (41, N'atenea.JPG', N'Atenea', 1265, 2501, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (42, N'salaprofesores.JPG', N'Sala Profesorado', 1156, 2118, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (43, N'o.JPG', N'Ø', 2265, 153, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (44, N'raiz.JPG', N'Raíz cuadrada', 2265, 93, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (45, N'macondo.JPG', N'Macondo', 2265, 213, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (46, N'oleza.JPG', N'Oleza', 2265, 278, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (47, N'marcal.JPG', N'M. M. Marçal', 2265, 680, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (48, N'estelles.JPG', N'V. A. Estellés', 2265, 740, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (49, N'london.JPG', N'London', 2265, 804, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (50, N'dublin.JPG', N'Dublin', 2265, 860, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (51, N'e.JPG', N'e', 2340, 93, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (52, N'pi.JPG', N'p', 2340, 153, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (53, N'regenta.JPG', N'La Regenta', 2340, 213, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (54, N'germinal.JPG', N'Germinal', 2340, 278, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (55, N'musica1.JPG', N'Musica 1', 2340, 411, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (56, N'deptmusica.JPG', N'Dept. Musica', 2340, 480, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (57, N'musica2.JPG', N'Musica 2', 2340, 541, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (58, N'simo.JPG', N'I. C. Simó', 2340, 680, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (59, N'fuster.JPG', N'Joan Fuster', 2340, 740, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (60, N'newyork.JPG', N'New York', 2340, 804, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (61, N'sidney.JPG', N'Sidney', 2340, 840, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (62, N'deptfrances.JPG', N'Dept. Francés Látin', 4000, 2000, 3)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (63, N'deptinfo.JPG', N'Dept. Informática', 4000, 2000, 3)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (64, N'ingles.JPG', N'Dept. Inglés', 4000, 2000, 3)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (65, N'matematicas.JPG', N'Matemáticas', 4000, 2000, 3)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (66, N'geografia.JPG', N'V. A. Geografía e História', 4000, 2000, 3)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (67, N'a', N'a', 4000, 2000, 3)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (68, N'castellano.JPG', N'Castellano', 4000, 2000, 3)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (69, N'pasillo3_1.JPG', N'Pasillo', 2295, 870, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (70, N'pasillo3_2.JPG', N'Pasillo', 2295, 799, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (71, N'pasillo3_3.JPG', N'Pasillo', 2295, 740, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (72, N'pasillo3_4.JPG', N'Pasillo', 2295, 690, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (73, N'pasillo3_5.JPG', N'Pasillo', 2295, 630, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (74, N'pasillo3_6.JPG', N'Pasillo', 2295, 470, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (75, N'pasillo3_7.JPG', N'Pasillo', 2295, 310, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (76, N'pasillo3_8.JPG', N'Pasillo', 2295, 260, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (77, N'pasillo3_9.JPG', N'Pasillo', 2295, 206, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (78, N'pasillo3_10.JPG', N'Pasillo', 2295, 136, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (79, N'pasillo3_11.JPG', N'Pasillo', 2295, 77, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (80, N'pasillo1_1.JPG', N'Pasillo', 304, 873, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (81, N'pasillo1_2.JPG', N'Pasillo', 304, 779, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (82, N'pasillo1_3.JPG', N'Pasillo', 304, 654, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (83, N'pasillo1_4.JPG', N'Pasillo', 287, 567, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (84, N'pasillo1_5.JPG', N'Pasillo', 287, 482, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (85, N'pasillo1_6.JPG', N'Pasillo', 296, 387, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (86, N'pasillo1_7.JPG', N'Pasillo', 296, 289, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (87, N'pasillo1_8.JPG', N'Pasillo', 296, 236, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (88, N'pasillo1_9.JPG', N'Pasillo', 296, 186, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (89, N'pasillo1_10.JPG', N'Pasillo', 296, 126, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (90, N'pasillo1_11.JPG', N'Pasillo', 296, 77, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (91, N'pasillo2_1.JPG', N'Pasillo', 1298, 2512, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (92, N'pasillo2_2.JPG', N'Pasillo', 1298, 2442, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (93, N'pasillo2_3.JPG', N'Pasillo', 1298, 2382, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (94, N'pasillo2_4.JPG', N'Pasillo', 1298, 2324, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (95, N'pasillo2_5.JPG', N'Pasillo', 1298, 2194, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (96, N'pasillo2_6.JPG', N'Pasillo', 1298, 2092, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (97, N'pasillo2_7.JPG', N'Pasillo', 1272, 2029, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (98, N'pasillo2_8.JPG', N'Pasillo', 1298, 1959, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (99, N'pasillo2_9.JPG', N'Pasillo', 1298, 1888, 1)
GO
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (100, N'pasillo2_10.JPG', N'Pasillo', 1298, 1818, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (101, N'pasillo2_11.JPG', N'Pasillo', 1298, 1719, 1)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (102, N'patio1.JPG', N'Patio', 215, 377, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (103, N'patio2.JPG', N'Patio', 210, 561, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (104, N'pasillo_conserjeria.JPG', N'Pasillo', 4000, 2000, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (105, N'patio3.JPG', N'Patio', 107, 560, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (106, N'aulabiblio.JPG', N'Aula Biblio', 335, 382, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (107, N'patio4.JPG', N'Patio', 211, 141, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (108, N'gimnasio.JPG', N'Gimnasio', 297, 14, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (109, N'entrada.JPG', N'Entrada', 380, 571, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (110, N'pasillo3_12.JPG', N'Pasillo', 2270, 387, 2)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (111, N'patio6.JPG', N'Patio', 381, 676, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (112, N'patio9.JPG', N'Patio', 200, 892, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (113, N'patio7.JPG', N'Patio', 460, 828, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (114, N'patio8.JPG', N'Patio', 535, 567, 0)
INSERT [dbo].[imagen] ([id], [ruta], [nombre], [x], [y], [piso]) VALUES (115, N'patio5.JPG', N'Patio', 465, 282, 0)
SET IDENTITY_INSERT [dbo].[imagen] OFF
GO
INSERT [dbo].[usuarios] ([Email], [Password]) VALUES (N'mael@gmail.com', N'1234')
GO
ALTER TABLE [dbo].[flecha]  WITH CHECK ADD FOREIGN KEY([id_imagen])
REFERENCES [dbo].[imagen] ([id])
GO
ALTER TABLE [dbo].[flecha]  WITH CHECK ADD FOREIGN KEY([id_imagen])
REFERENCES [dbo].[imagen] ([id])
GO
/****** Object:  StoredProcedure [dbo].[CrearFlecha]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[CrearFlecha] (@idimg int, @node int, @posicion varchar(10))
AS BEGIN
	INSERT INTO flecha
	VALUES(@idimg,@node,@posicion)
END
GO
/****** Object:  StoredProcedure [dbo].[CrearImagen]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[CrearImagen](@ruta varchar(250),@nombre varchar(250), @x int, @y int, @piso int)
AS BEGIN
	INSERT INTO imagen
	VALUES(@ruta,@nombre,@x,@y,@piso)
END
GO
/****** Object:  StoredProcedure [dbo].[EditarFlecha]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[EditarFlecha]
    @id INT,
    @idimg INT,
    @node INT,
    @posicion varchar(10)
AS
BEGIN
	UPDATE flecha
	SET id_imagen=@idimg,
	nodeId=@node,
	posicion=@posicion
	WHERE id_flecha=@id
END
GO
/****** Object:  StoredProcedure [dbo].[EditarImagen]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[EditarImagen]
    @id INT,
    @nombre varchar(255),
    @ruta varchar(255),
    @x int,
	@y int,
	@piso int
AS
BEGIN
	UPDATE imagen
	SET nombre=@nombre,
	ruta=@ruta,
	x=@x,
	y=@y,
	piso=@piso
	WHERE id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarFlecha]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[EliminarFlecha]
    @id INT
AS
BEGIN
	DELETE FROM flecha
	WHERE id_flecha=@id
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarImagen]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[EliminarImagen]
    @id INT
AS
BEGIN
	DELETE FROM imagen
	WHERE id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[SacarCoord]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[SacarCoord]
AS BEGIN
	SELECT * FROM coordenadas
END
GO
/****** Object:  StoredProcedure [dbo].[SacarFlecha]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[SacarFlecha]
AS BEGIN
	SELECT * FROM flecha
END
GO
/****** Object:  StoredProcedure [dbo].[SacarImagen]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[SacarImagen]
AS BEGIN
	SELECT * FROM imagen
END
GO
/****** Object:  StoredProcedure [dbo].[Verificar]    Script Date: 12/06/2024 21:57:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Verificar]
    @name VARCHAR(255),
    @pass VARCHAR(255)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM usuarios WHERE Email = @name AND Password = @pass)
        SELECT @name AS Result
    ELSE
        SELECT NULL AS Result
END
GO

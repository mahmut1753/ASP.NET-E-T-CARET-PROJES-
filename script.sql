USE [sacbakimi]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admink] [nvarchar](10) NOT NULL,
	[admins] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[durum]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[durum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[durum] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_durum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ilceler]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilceler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ilid] [int] NULL,
	[ilce] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[iller]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iller](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[il] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[kategoriler]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategoriler](
	[kategori_id] [int] IDENTITY(0,1) NOT NULL,
	[kategoriadi] [nvarchar](50) NOT NULL,
	[durumu] [int] NOT NULL,
 CONSTRAINT [PK_kategoriler] PRIMARY KEY CLUSTERED 
(
	[kategori_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[markalar]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[markalar](
	[marka_id] [int] IDENTITY(1,1) NOT NULL,
	[markaadı] [nvarchar](50) NOT NULL,
	[durumu] [int] NOT NULL,
 CONSTRAINT [PK_markalar] PRIMARY KEY CLUSTERED 
(
	[marka_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sepet]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sepet](
	[sepet_id] [int] IDENTITY(1,1) NOT NULL,
	[ürün_id] [int] NOT NULL,
	[üye_id] [int] NOT NULL,
	[ürün_adet] [int] NOT NULL,
 CONSTRAINT [PK_sepet] PRIMARY KEY CLUSTERED 
(
	[sepet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[siparis]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[siparis](
	[siparis_id] [int] IDENTITY(1,1) NOT NULL,
	[üye_id] [int] NOT NULL,
	[ürün_id] [int] NOT NULL,
	[ürün_adet] [int] NOT NULL,
	[tutar] [int] NOT NULL,
	[tarih] [nchar](50) NOT NULL,
	[durumu] [nvarchar](30) NOT NULL,
	[siparis_no] [nvarchar](50) NOT NULL,
	[il] [int] NOT NULL,
	[ilce] [int] NOT NULL,
	[adres] [nvarchar](300) NOT NULL,
	[ödeme_türü] [nvarchar](50) NOT NULL,
	[kargo] [nvarchar](50) NULL,
 CONSTRAINT [PK_siparis] PRIMARY KEY CLUSTERED 
(
	[siparis_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stok]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stok](
	[stok_id] [int] IDENTITY(1,1) NOT NULL,
	[tedarikci_id] [int] NOT NULL,
	[ürün_id] [int] NOT NULL,
	[ürün_adet] [int] NOT NULL,
	[suankiadet] [int] NOT NULL,
	[tarih] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_stok] PRIMARY KEY CLUSTERED 
(
	[stok_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stokcikis]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stokcikis](
	[stok_id] [int] IDENTITY(1,1) NOT NULL,
	[ürün_id] [int] NOT NULL,
	[adet] [int] NOT NULL,
	[sonadet] [int] NOT NULL,
	[tarih] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_stokcikis] PRIMARY KEY CLUSTERED 
(
	[stok_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tedarikci]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tedarikci](
	[tedarikci_id] [int] IDENTITY(1,1) NOT NULL,
	[tedarikci_adi] [nvarchar](50) NOT NULL,
	[adres] [nvarchar](200) NOT NULL,
	[telefon] [decimal](11, 0) NOT NULL,
 CONSTRAINT [PK_tedarikci] PRIMARY KEY CLUSTERED 
(
	[tedarikci_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ürünler]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ürünler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ürünadi] [nvarchar](50) NOT NULL,
	[markakodu] [int] NOT NULL,
	[kategorikodu] [int] NOT NULL,
	[fiyat] [decimal](10, 2) NOT NULL,
	[üründetayi] [nvarchar](150) NOT NULL,
	[adet] [int] NULL,
	[resmi] [nvarchar](256) NOT NULL,
	[durumu] [int] NOT NULL,
	[adetdüzeyi] [nvarchar](50) NULL,
 CONSTRAINT [PK_ürünler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[üyeler]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[üyeler](
	[üye_id] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](30) NOT NULL,
	[soyadi] [nvarchar](30) NOT NULL,
	[tcno] [decimal](11, 0) NOT NULL,
	[email] [nvarchar](30) NOT NULL,
	[parola] [nvarchar](18) NOT NULL,
	[telefon] [decimal](11, 0) NOT NULL,
	[sehir] [int] NOT NULL,
	[ilce] [int] NOT NULL,
	[adres] [nvarchar](100) NOT NULL,
	[durumu] [int] NOT NULL,
 CONSTRAINT [PK_üyeler] PRIMARY KEY CLUSTERED 
(
	[üye_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[yorumlar]    Script Date: 9.05.2019 03:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yorumlar](
	[yorum_id] [int] IDENTITY(1,1) NOT NULL,
	[ürün_id] [int] NOT NULL,
	[üye_id] [int] NOT NULL,
	[yorum] [nvarchar](300) NOT NULL,
	[tarih] [nvarchar](50) NOT NULL,
	[durumu] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_yorumlar] PRIMARY KEY CLUSTERED 
(
	[yorum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([admin_id], [admink], [admins]) VALUES (1, N'admin', N'1753')
SET IDENTITY_INSERT [dbo].[admin] OFF
SET IDENTITY_INSERT [dbo].[durum] ON 

INSERT [dbo].[durum] ([id], [durum]) VALUES (1, N'Aktif')
INSERT [dbo].[durum] ([id], [durum]) VALUES (2, N'Pasif')
SET IDENTITY_INSERT [dbo].[durum] OFF
SET IDENTITY_INSERT [dbo].[ilceler] ON 

INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (1, 1, N'Aladağ')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (2, 1, N'Ceyhan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (3, 1, N'Çukurova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (4, 1, N'Feke')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (5, 1, N'İmamoğlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (6, 1, N'Karaisalı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (7, 1, N'Karataş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (8, 1, N'Kozan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (9, 1, N'Pozantı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (10, 1, N'Saimbeyli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (11, 1, N'Sarıçam')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (12, 1, N'Tufanbeyli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (13, 1, N'Yumurtalık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (14, 1, N'Yüreğir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (15, 2, N'Besni')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (16, 2, N'Çelikhan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (17, 2, N'Gerger')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (18, 2, N'Gölbaşı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (19, 2, N'Kahta')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (20, 2, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (21, 2, N'Samsat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (22, 2, N'Sincik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (23, 2, N'Tut')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (24, 3, N'Başmakçı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (25, 3, N'Bayat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (26, 3, N'Bolvadin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (27, 3, N'Çay')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (28, 3, N'Çobanlar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (29, 3, N'Dazkırı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (30, 3, N'Dinar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (31, 3, N'Emirdağ')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (32, 3, N'Evciler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (33, 3, N'Hocalar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (34, 3, N'İhsaniye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (35, 3, N'İscehisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (36, 3, N'Kızılören')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (37, 3, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (38, 3, N'Sandıklı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (39, 3, N'Sultandağı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (40, 3, N'Şuhut')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (41, 4, N'Diyadin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (42, 4, N'Doğubayazıt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (43, 4, N'Eleşkirt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (44, 4, N'Hamur')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (45, 4, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (46, 4, N'Patnos')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (47, 4, N'Taşlıçay')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (48, 4, N'Tutak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (49, 5, N'Göynücek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (50, 5, N'Gümüşhacıköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (51, 5, N'Hamamözü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (52, 5, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (53, 5, N'Merzifon')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (54, 5, N'Suluova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (55, 5, N'Taşova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (56, 6, N'Akyurt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (57, 6, N'Altındağ')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (58, 6, N'Ayaş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (59, 6, N'Bala')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (60, 6, N'Beypazarı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (61, 6, N'Çamlıdere')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (62, 6, N'Çankaya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (63, 6, N'Çubuk')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (64, 6, N'Elmadağ')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (65, 6, N'Etimesgut')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (66, 6, N'Evren')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (67, 6, N'Gölbaşı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (68, 6, N'Güdül')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (69, 6, N'Haymana')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (70, 6, N'Kalecik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (71, 6, N'Kazan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (72, 6, N'Keçiören')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (73, 6, N'Kızılcahamam')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (74, 6, N'Mamak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (75, 6, N'Nallıhan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (76, 6, N'Polatlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (77, 6, N'Pursaklar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (78, 6, N'Sincan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (79, 6, N'Şereflikoçhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (80, 6, N'Yenimahalle')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (81, 7, N'Akseki')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (82, 7, N'Aksu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (83, 7, N'Alanya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (84, 7, N'Demre')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (85, 7, N'Döşemealtı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (86, 7, N'Elmalı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (87, 7, N'Finike')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (88, 7, N'Gazipaşa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (89, 7, N'Gündoğmuş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (90, 7, N'İbradı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (91, 7, N'Kaş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (92, 7, N'Kemer')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (93, 7, N'Kepez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (94, 7, N'Konyaaltı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (95, 7, N'Korkuteli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (96, 7, N'Kumluca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (97, 7, N'Manavgat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (98, 7, N'Muratpaşa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (99, 7, N'Serik')
GO
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (100, 8, N'Ardanuç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (101, 8, N'Arhavi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (102, 8, N'Borçka')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (103, 8, N'Hopa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (104, 8, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (105, 8, N'Murgul')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (106, 8, N'Şavşat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (107, 8, N'Yusufeli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (108, 9, N'Bozdoğan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (109, 9, N'Buharkent')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (110, 9, N'Çine')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (111, 9, N'Didim')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (112, 9, N'Efeler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (113, 9, N'Germencik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (114, 9, N'İncirliova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (115, 9, N'Karacasu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (116, 9, N'Karpuzlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (117, 9, N'Koçarlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (118, 9, N'Köşk')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (119, 9, N'Kuşadası')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (120, 9, N'Kuyucak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (121, 9, N'Nazilli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (122, 9, N'Söke')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (123, 9, N'Sultanhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (124, 9, N'Yenipazar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (125, 10, N'Altıeylül')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (126, 10, N'Ayvalık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (127, 10, N'Balya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (128, 10, N'Bandırma')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (129, 10, N'Bigadiç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (130, 10, N'Burhaniye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (131, 10, N'Dursunbey')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (132, 10, N'Edremit')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (133, 10, N'Erdek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (134, 10, N'Gömeç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (135, 10, N'Gönen')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (136, 10, N'Havran')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (137, 10, N'İvrindi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (138, 10, N'Karesi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (139, 10, N'Kepsut')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (140, 10, N'Manyas')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (141, 10, N'Marmara')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (142, 10, N'Savaştepe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (143, 10, N'Sındırgı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (144, 10, N'Susurluk')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (145, 11, N'Bozüyük')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (146, 11, N'Gölpazarı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (147, 11, N'İnhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (148, 11, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (149, 11, N'Osmaneli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (150, 11, N'Pazaryeri')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (151, 11, N'Söğüt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (152, 11, N'Yenipazar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (153, 12, N'Adaklı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (154, 12, N'Genç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (155, 12, N'Karlıova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (156, 12, N'Kiğı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (157, 12, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (158, 12, N'Solhan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (159, 12, N'Yayladere')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (160, 12, N'Yedisu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (161, 13, N'Adilcevaz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (162, 13, N'Ahlat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (163, 13, N'Güroymak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (164, 13, N'Hizan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (165, 13, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (166, 13, N'Mutki')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (167, 13, N'Tatvan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (168, 14, N'Dörtdivan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (169, 14, N'Gerede')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (170, 14, N'Göynük')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (171, 14, N'Kıbrıscık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (172, 14, N'Mengen')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (173, 14, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (174, 14, N'Mudurnu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (175, 14, N'Seben')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (176, 14, N'Yeniçağa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (177, 15, N'Ağlasun')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (178, 15, N'Altınyayla')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (179, 15, N'Bucak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (180, 15, N'Çavdır')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (181, 15, N'Çeltikçi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (182, 15, N'Gölhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (183, 15, N'Karamanlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (184, 15, N'Kemer')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (185, 15, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (186, 15, N'Tefenni')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (187, 15, N'Yeşilova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (188, 16, N'Büyükorhan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (189, 16, N'Gemlik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (190, 16, N'Gürsu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (191, 16, N'Harmancık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (192, 16, N'İnegöl')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (193, 16, N'İznik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (194, 16, N'Karacabey')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (195, 16, N'Keles')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (196, 16, N'Kestel')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (197, 16, N'Mudanya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (198, 16, N'Mustafa Kemal Paşa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (199, 16, N'Nilüfer')
GO
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (200, 16, N'Orhaneli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (201, 16, N'Orhangazi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (202, 16, N'Osmangazi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (203, 16, N'Yenişehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (204, 16, N'Yıldırım')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (205, 17, N'Ayvacık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (206, 17, N'Bayramiç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (207, 17, N'Biga')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (208, 17, N'Çan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (209, 17, N'Eceabat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (210, 17, N'Ezine')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (211, 17, N'Gelibolu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (212, 17, N'Gökçeada')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (213, 17, N'Lapseki')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (214, 17, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (215, 17, N'Yenice')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (216, 18, N'Atkaracalar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (217, 18, N'Bayramören')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (218, 18, N'Çerkeş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (219, 18, N'Eldivan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (220, 18, N'Ilgaz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (221, 18, N'Kızılırmak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (222, 18, N'Korgun')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (223, 18, N'Kurşunlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (224, 18, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (225, 18, N'Orta')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (226, 18, N'Şabanözü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (227, 18, N'Yapraklı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (228, 19, N'Alaca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (229, 19, N'Bayat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (230, 19, N'Boğazkale')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (231, 19, N'Dodurga')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (232, 19, N'İskilip')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (233, 19, N'Kargı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (234, 19, N'Laçin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (235, 19, N'Mecitözü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (236, 19, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (237, 19, N'Oğuzlar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (238, 19, N'Ortaköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (239, 19, N'Osmancık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (240, 19, N'Sungurlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (241, 19, N'Uğurludağ')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (242, 20, N'Acıpayam')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (243, 20, N'Babadağ')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (244, 20, N'Baklan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (245, 20, N'Bekilli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (246, 20, N'Beyağaç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (247, 20, N'Bozkurt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (248, 20, N'Buldan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (249, 20, N'Çal')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (250, 20, N'Çameli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (251, 20, N'Çardak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (252, 20, N'Çivril')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (253, 20, N'Güney')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (254, 20, N'Honaz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (255, 20, N'Kale')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (256, 20, N'Merkezefendi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (257, 20, N'Pamukkale')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (258, 20, N'Sarayköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (259, 20, N'Serinhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (260, 20, N'Tavas')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (261, 21, N'Bağlar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (262, 21, N'Bismil')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (263, 21, N'Çermik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (264, 21, N'Çınar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (265, 21, N'Çüngüş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (266, 21, N'Dicle')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (267, 21, N'Eğil')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (268, 21, N'Ergani')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (269, 21, N'Hani')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (270, 21, N'Hazro')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (271, 21, N'Kayapınar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (272, 21, N'Kocaköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (273, 21, N'Kulp')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (274, 21, N'Lice')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (275, 21, N'Silvan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (276, 21, N'Sur')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (277, 21, N'Yenişehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (278, 22, N'Enez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (279, 22, N'Havsa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (280, 22, N'İpsala')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (281, 22, N'Keşan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (282, 22, N'Lalapaşa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (283, 22, N'Meriç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (284, 22, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (285, 22, N'Süloğlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (286, 22, N'Uzunköprü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (287, 23, N'Ağın')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (288, 23, N'Alacakaya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (289, 23, N'Arıcak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (290, 23, N'Baskil')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (291, 23, N'Karakoçan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (292, 23, N'Keban')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (293, 23, N'Kovancılar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (294, 23, N'Maden')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (295, 23, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (296, 23, N'Palu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (297, 23, N'Sivrice')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (298, 24, N'Çayırlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (299, 24, N'İliç')
GO
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (300, 24, N'Kemah')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (301, 24, N'Kemaliye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (302, 24, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (303, 24, N'Otlukbeli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (304, 24, N'Refahiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (305, 24, N'Tercan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (306, 24, N'Üzümlü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (307, 25, N'Aşkale')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (308, 25, N'Aziziye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (309, 25, N'Çat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (310, 25, N'Hınıs')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (311, 25, N'Horasan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (312, 25, N'İspir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (313, 25, N'Karaçoban')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (314, 25, N'Karayazı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (315, 25, N'Köprüköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (316, 25, N'Narman')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (317, 25, N'Oltu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (318, 25, N'Olur')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (319, 25, N'Palandöken')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (320, 25, N'Pasinler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (321, 25, N'Pazaryolu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (322, 25, N'Şenkaya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (323, 25, N'Tekman')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (324, 25, N'Tortum')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (325, 25, N'Uzundere')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (326, 25, N'Yakutiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (327, 26, N'Alpu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (328, 26, N'Beylikova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (329, 26, N'Çifteler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (330, 26, N'Günyüzü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (331, 26, N'Han')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (332, 26, N'İnönü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (333, 26, N'Mahmudiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (334, 26, N'Mihalgazi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (335, 26, N'Mihalıççık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (336, 26, N'Odunpazarı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (337, 26, N'Sarıcakaya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (338, 26, N'Seyitgazi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (339, 26, N'Sivrihisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (340, 26, N'Tepebaşı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (341, 27, N'Araban')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (342, 27, N'İslahiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (343, 27, N'Karkamış')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (344, 27, N'Nizip')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (345, 27, N'Nurdağı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (346, 27, N'Oğuzeli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (347, 27, N'Şahinbey')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (348, 27, N'Şahinbey')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (349, 27, N'Şehitkamil')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (350, 27, N'Yavuzeli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (351, 28, N'Alucra')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (352, 28, N'Bulancak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (353, 28, N'Çamoluk')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (354, 28, N'Çanakçı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (355, 28, N'Dereli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (356, 28, N'Doğankent')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (357, 28, N'Espiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (358, 28, N'Eynesil')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (359, 28, N'Görele')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (360, 28, N'Güce')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (361, 28, N'Keşap')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (362, 28, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (363, 28, N'Piraziz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (364, 28, N'Şebinkarahisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (365, 28, N'Tirebolu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (366, 28, N'Yağlıdere')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (367, 29, N'Kelkit')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (368, 29, N'Köse')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (369, 29, N'Kürtün')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (370, 29, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (371, 29, N'Şiran')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (372, 29, N'Torul')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (373, 30, N'Çukurca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (374, 30, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (375, 30, N'Şemdinli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (376, 30, N'Yüksekova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (377, 31, N'Altınözü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (378, 31, N'Antakya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (379, 31, N'Arsuz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (380, 31, N'Belen')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (381, 31, N'Defne')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (382, 31, N'Dörtyol')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (383, 31, N'Erzin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (384, 31, N'Hassa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (385, 31, N'İskenderun')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (386, 31, N'Kırıkhan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (387, 31, N'Kumlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (388, 31, N'Payas')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (389, 31, N'Reyhanlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (390, 31, N'Samandağ')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (391, 31, N'Yayladağı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (392, 32, N'Aksu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (393, 32, N'Atabey')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (394, 32, N'Eğirdir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (395, 32, N'Gelendost')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (396, 32, N'Gönen')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (397, 32, N'Keçiborlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (398, 32, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (399, 32, N'Senirkent')
GO
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (400, 32, N'Sütçüler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (401, 32, N'Şarkikaraağaç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (402, 32, N'Uluborlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (403, 32, N'Yalvaç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (404, 32, N'Yenişarbademli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (405, 33, N'Akdeniz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (406, 33, N'Anamur')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (407, 33, N'Aydıncık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (408, 33, N'Bozyazı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (409, 33, N'Çamlıyayla')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (410, 33, N'Erdemli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (411, 33, N'Gülnar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (412, 33, N'Mezitli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (413, 33, N'Mut')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (414, 33, N'Silifke')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (415, 33, N'Tarsus')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (416, 33, N'Tarsus')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (417, 33, N'Yenişehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (418, 34, N'Adalar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (419, 34, N'Arnavutköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (420, 34, N'Ataşehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (421, 34, N'Avcılar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (422, 34, N'Bağcılar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (423, 34, N'Bahçelievler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (424, 34, N'Bakırköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (425, 34, N'Başakşehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (426, 34, N'Bayrampaşa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (427, 34, N'Beşiktaş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (428, 34, N'Beykoz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (429, 34, N'Beylikdüzü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (430, 34, N'Beyoğlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (431, 34, N'Büyükçekmece')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (432, 34, N'Çatalca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (433, 34, N'Çekmeköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (434, 34, N'Esenler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (435, 34, N'Esenyurt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (436, 34, N'Eyüp')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (437, 34, N'Fatih')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (438, 34, N'Gaziosmanpaşa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (439, 34, N'Güngören')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (440, 34, N'Kadıköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (441, 34, N'Kağıthane')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (442, 34, N'Kartal')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (443, 34, N'Küçükçekmece')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (444, 34, N'Maltepe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (445, 34, N'Pendik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (446, 34, N'Sancaktepe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (447, 34, N'Sarıyer')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (448, 34, N'Silivri')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (449, 34, N'Sultanbeyli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (450, 34, N'Sultangazi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (451, 34, N'Şile')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (452, 34, N'Şişli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (453, 34, N'Tuzla')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (454, 34, N'Ümraniye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (455, 34, N'Üsküdar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (456, 34, N'Zeytinburnu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (457, 35, N'Aliağa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (458, 35, N'Balçova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (459, 35, N'Bayındır')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (460, 35, N'Bayraklı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (461, 35, N'Bergama')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (462, 35, N'Beydağ')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (463, 35, N'Bornova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (464, 35, N'Buca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (465, 35, N'Çeşme')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (466, 35, N'Çiğli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (467, 35, N'Dikili')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (468, 35, N'Foça')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (469, 35, N'Gaziemir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (470, 35, N'Güzelbahçe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (471, 35, N'Karabağlar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (472, 35, N'Karaburun')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (473, 35, N'Karşıyaka')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (474, 35, N'Kemalpaşa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (475, 35, N'Kınık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (476, 35, N'Kiraz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (477, 35, N'Konak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (478, 35, N'Menderes')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (479, 35, N'Menemen')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (480, 35, N'Narlıdere')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (481, 35, N'Ödemiş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (482, 35, N'Seferihisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (483, 35, N'Selçuk')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (484, 35, N'Tire')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (485, 35, N'Torbalı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (486, 35, N'Urla')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (487, 36, N'Akyaka')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (488, 36, N'Arpaçay')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (489, 36, N'Digor')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (490, 36, N'Kağızman')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (491, 36, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (492, 36, N'Sarıkamış')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (493, 36, N'Selim')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (494, 36, N'Susuz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (495, 37, N'Abana')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (496, 37, N'Ağlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (497, 37, N'Araç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (498, 37, N'Azdavay')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (499, 37, N'Bozkurt')
GO
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (500, 37, N'Cide')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (501, 37, N'Çatalzeytin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (502, 37, N'Daday')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (503, 37, N'Devrekani')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (504, 37, N'Doğanyurt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (505, 37, N'Hanönü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (506, 37, N'İhsangazi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (507, 37, N'İnebolu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (508, 37, N'Küre')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (509, 37, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (510, 37, N'Pınarbaşı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (511, 37, N'Seydiler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (512, 37, N'Şenpazar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (513, 37, N'Taşköprü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (514, 37, N'Tosya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (515, 38, N'Akkışla')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (516, 38, N'Bünyan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (517, 38, N'Develi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (518, 38, N'Felahiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (519, 38, N'Hacılar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (520, 38, N'İncesu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (521, 38, N'Kocasinan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (522, 38, N'Melikgazi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (523, 38, N'Özvatan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (524, 38, N'Pınarbaşı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (525, 38, N'Sarıoğlan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (526, 38, N'Sarız')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (527, 38, N'Talas')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (528, 38, N'Tomarza')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (529, 38, N'Yahyalı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (530, 38, N'Yeşilhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (531, 39, N'Babaeski')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (532, 39, N'Demirköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (533, 39, N'Kofçaz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (534, 39, N'Lüleburgaz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (535, 39, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (536, 39, N'Pehlivanköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (537, 39, N'Pınarhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (538, 39, N'Vize')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (539, 40, N'Akçakent')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (540, 40, N'Akpınar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (541, 40, N'Boztepe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (542, 40, N'Çiçekdağı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (543, 40, N'Kaman')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (544, 40, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (545, 40, N'Mucur')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (546, 41, N'Başiskele')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (547, 41, N'Çayırova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (548, 41, N'Darıca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (549, 41, N'Derince')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (550, 41, N'Dilovası')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (551, 41, N'Gebze')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (552, 41, N'Gölcük')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (553, 41, N'İzmit')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (554, 41, N'Kandıra')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (555, 41, N'Karamürsel')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (556, 41, N'Kartepe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (557, 41, N'Körfez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (558, 42, N'Ahırlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (559, 42, N'Akören')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (560, 42, N'Akşehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (561, 42, N'Altınekin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (562, 42, N'Beyşehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (563, 42, N'Bozkır')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (564, 42, N'Cihanbeyli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (565, 42, N'Çeltik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (566, 42, N'Çumra')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (567, 42, N'Derbent')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (568, 42, N'Derebucak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (569, 42, N'Doğanhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (570, 42, N'Emirgazi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (571, 42, N'Ereğli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (572, 42, N'Güneysınır')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (573, 42, N'Hadim')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (574, 42, N'Halkapınar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (575, 42, N'Hüyük')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (576, 42, N'Ilgın')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (577, 42, N'Kadınhanı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (578, 42, N'Karapınar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (579, 42, N'Karatay')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (580, 42, N'Kulu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (581, 42, N'Meram')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (582, 42, N'Sarayönü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (583, 42, N'Selçuklu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (584, 42, N'Seydişehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (585, 42, N'Taşkent')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (586, 42, N'Tuzlukçu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (587, 42, N'Yalıhüyük')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (588, 42, N'Yunak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (589, 43, N'Altıntaş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (590, 43, N'Aslanapa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (591, 43, N'Çavdarhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (592, 43, N'Domaniç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (593, 43, N'Dumlupınar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (594, 43, N'Emet')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (595, 43, N'Gediz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (596, 43, N'Hisarcık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (597, 43, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (598, 43, N'Pazarlar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (599, 43, N'Simav')
GO
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (600, 43, N'Şaphane')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (601, 43, N'Tavşanlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (602, 44, N'Akçadağ')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (603, 44, N'Arapgir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (604, 44, N'Arguvan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (605, 44, N'Battalgazi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (606, 44, N'Darende')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (607, 44, N'Doğanşehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (608, 44, N'Doğanyol')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (609, 44, N'Hekimhan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (610, 44, N'Kale')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (611, 44, N'Kuluncak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (612, 44, N'Pütürge')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (613, 44, N'Yazıhan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (614, 44, N'Yeşilyurt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (615, 45, N'Ahmetli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (616, 45, N'Akhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (617, 45, N'Alaşehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (618, 45, N'Demirci')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (619, 45, N'Gölmarmara')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (620, 45, N'Gördes')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (621, 45, N'Kırkağaç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (622, 45, N'Köprübaşı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (623, 45, N'Kula')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (624, 45, N'Salihli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (625, 45, N'Sarıgöl')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (626, 45, N'Saruhanlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (627, 45, N'Selendi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (628, 45, N'Soma')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (629, 45, N'Şehzadeler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (630, 45, N'Turgutlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (631, 45, N'Yunusemre')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (632, 46, N'Afşin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (633, 46, N'Andırın')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (634, 46, N'Çağlayancerit')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (635, 46, N'Dulkadiroğlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (636, 46, N'Ekinözü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (637, 46, N'Elbistan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (638, 46, N'Göksun')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (639, 46, N'Nurhak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (640, 46, N'Onikişubat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (641, 46, N'Pazarcık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (642, 46, N'Türkoğlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (643, 47, N'Artuklu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (644, 47, N'Dargeçit')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (645, 47, N'Derik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (646, 47, N'Kızıltepe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (647, 47, N'Mazıdağı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (648, 47, N'Midyat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (649, 47, N'Nusaybin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (650, 47, N'Ömerli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (651, 47, N'Savur')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (652, 47, N'Yeşilli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (653, 48, N'Bodrum')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (654, 48, N'Dalaman')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (655, 48, N'Datça')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (656, 48, N'Fethiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (657, 48, N'Kavaklıdere')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (658, 48, N'Köyceğiz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (659, 48, N'Marmaris')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (660, 48, N'Menteşe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (661, 48, N'Milas')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (662, 48, N'Ortaca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (663, 48, N'Seydikemer')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (664, 48, N'Ula')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (665, 48, N'Yatağan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (666, 49, N'Bulanık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (667, 49, N'Hasköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (668, 49, N'Korkut')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (669, 49, N'Malazgirt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (670, 49, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (671, 49, N'Varto')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (672, 50, N'Acıgöl')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (673, 50, N'Avanos')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (674, 50, N'Derinkuyu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (675, 50, N'Gülşehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (676, 50, N'Hacıbektaş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (677, 50, N'Kozaklı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (678, 50, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (679, 50, N'Ürgüp')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (680, 51, N'Altunhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (681, 51, N'Bor')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (682, 51, N'Çamardı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (683, 51, N'Çiftlik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (684, 51, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (685, 51, N'Ulukışla')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (686, 52, N'Akkuş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (687, 52, N'Altınordu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (688, 52, N'Aybastı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (689, 52, N'Çamaş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (690, 52, N'Çatalpınar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (691, 52, N'Çaybaşı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (692, 52, N'Fatsa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (693, 52, N'Gölköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (694, 52, N'Gülyalı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (695, 52, N'Gürgentepe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (696, 52, N'İkizce')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (697, 52, N'Kabadüz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (698, 52, N'Kabataş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (699, 52, N'Korgan')
GO
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (700, 52, N'Kumru')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (701, 52, N'Mesudiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (702, 52, N'Perşembe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (703, 52, N'Ulubey')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (704, 52, N'Ünye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (705, 53, N'Ardeşen')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (706, 53, N'Çamlıhemşin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (707, 53, N'Çayeli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (708, 53, N'Derepazarı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (709, 53, N'Fındıklı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (710, 53, N'Güneysu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (711, 53, N'Hemşin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (712, 53, N'İkizdere')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (713, 53, N'İyidere')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (714, 53, N'Kalkandere')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (715, 53, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (716, 53, N'Pazar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (717, 54, N'Adapazarı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (718, 54, N'Akyazı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (719, 54, N'Arifiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (720, 54, N'Erenler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (721, 54, N'Ferizli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (722, 54, N'Geyve')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (723, 54, N'Hendek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (724, 54, N'Karapürçek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (725, 54, N'Karasu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (726, 54, N'Kaynarca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (727, 54, N'Kocaali')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (728, 54, N'Pamukova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (729, 54, N'Sapanca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (730, 54, N'Serdivan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (731, 54, N'Söğütlü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (732, 54, N'Taraklı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (733, 55, N'19 Mayıs')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (734, 55, N'Alaçam')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (735, 55, N'Asarcık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (736, 55, N'Atakum')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (737, 55, N'Ayvacık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (738, 55, N'Bafra')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (739, 55, N'Canik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (740, 55, N'Çarşamba')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (741, 55, N'Havza')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (742, 55, N'İlkadım')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (743, 55, N'Kavak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (744, 55, N'Ladik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (745, 55, N'Salıpazarı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (746, 55, N'Tekkeköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (747, 55, N'Terme')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (748, 55, N'Vezirköprü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (749, 55, N'Yakakent')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (750, 56, N'Baykan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (751, 56, N'Eruh')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (752, 56, N'Kurtalan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (753, 56, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (754, 56, N'Pervari')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (755, 56, N'Şirvan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (756, 56, N'Tillo')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (757, 57, N'Ayancık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (758, 57, N'Boyabat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (759, 57, N'Dikmen')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (760, 57, N'Durağan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (761, 57, N'Erfelek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (762, 57, N'Gerze')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (763, 57, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (764, 57, N'Saraydüzü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (765, 57, N'Türkeli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (766, 58, N'Akıncılar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (767, 58, N'Altınyayla')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (768, 58, N'Divriği')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (769, 58, N'Doğanşar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (770, 58, N'Gemerek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (771, 58, N'Gölova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (772, 58, N'Gürün')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (773, 58, N'Hafik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (774, 58, N'İmranlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (775, 58, N'Kangal')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (776, 58, N'Koyulhisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (777, 58, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (778, 58, N'Suşehri')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (779, 58, N'Şarkışla')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (780, 58, N'Ulaş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (781, 58, N'Yıldızeli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (782, 58, N'Zara')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (783, 59, N'Çerkezköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (784, 59, N'Çorlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (785, 59, N'Ergene')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (786, 59, N'Hayrabolu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (787, 59, N'Malkara')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (788, 59, N'Marmaraereğlisi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (789, 59, N'Muratlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (790, 59, N'Saray')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (791, 59, N'Süleymanpaşa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (792, 59, N'Şarköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (793, 60, N'Almus')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (794, 60, N'Artova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (795, 60, N'Başçiftlik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (796, 60, N'Erbaa')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (797, 60, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (798, 60, N'Niksar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (799, 60, N'Pazar')
GO
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (800, 60, N'Reşadiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (801, 60, N'Sulusaray')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (802, 60, N'Turhal')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (803, 60, N'Yeşilyurt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (804, 60, N'Zile')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (805, 61, N'Akçaabat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (806, 61, N'Araklı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (807, 61, N'Arsin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (808, 61, N'Beşikdüzü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (809, 61, N'Çarşıbaşı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (810, 61, N'Çaykara')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (811, 61, N'Dernekpazarı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (812, 61, N'Düzköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (813, 61, N'Hayrat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (814, 61, N'Köprübaşı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (815, 61, N'Maçka')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (816, 61, N'Of')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (817, 61, N'Ortahisar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (818, 61, N'Sürmene')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (819, 61, N'Şalpazarı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (820, 61, N'Tonya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (821, 61, N'Vakfıkebir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (822, 61, N'Yomra')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (823, 62, N'Çemişgezek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (824, 62, N'Hozat')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (825, 62, N'Mazgirt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (826, 62, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (827, 62, N'Nazımiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (828, 62, N'Ovacık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (829, 62, N'Pertek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (830, 62, N'Pülümür')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (831, 63, N'Akçakale')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (832, 63, N'Birecik')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (833, 63, N'Bozova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (834, 63, N'Ceylanpınar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (835, 63, N'Eyyübiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (836, 63, N'Halfeti')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (837, 63, N'Haliliye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (838, 63, N'Harran')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (839, 63, N'Hilvan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (840, 63, N'Karaköprü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (841, 63, N'Siverek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (842, 63, N'Suruç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (843, 63, N'Viranşehir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (844, 64, N'Banaz')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (845, 64, N'Eşme')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (846, 64, N'Karahallı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (847, 64, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (848, 64, N'Sivaslı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (849, 64, N'Ulubey')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (850, 65, N'Bahçesaray')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (851, 65, N'Başkale')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (852, 65, N'Çaldıran')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (853, 65, N'Çatak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (854, 65, N'Edremit')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (855, 65, N'Erciş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (856, 65, N'Gevaş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (857, 65, N'Gürpınar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (858, 65, N'İpekyolu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (859, 65, N'Muradiye')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (860, 65, N'Özalp')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (861, 65, N'Saray')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (862, 65, N'Tuşba')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (863, 66, N'Akdağmadeni')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (864, 66, N'Aydıncık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (865, 66, N'Boğazlıyan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (866, 66, N'Çandır')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (867, 66, N'Çayıralan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (868, 66, N'Çekerek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (869, 66, N'Kadışehri')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (870, 66, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (871, 66, N'Saraykent')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (872, 66, N'Sarıkaya')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (873, 66, N'Sorgun')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (874, 66, N'Şefaatli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (875, 66, N'Yenifakılı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (876, 66, N'Yerköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (877, 67, N'Alaplı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (878, 67, N'Çaycuma')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (879, 67, N'Devrek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (880, 67, N'Ereğli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (881, 67, N'Gökçebey')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (882, 67, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (883, 68, N'Ağaçören')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (884, 68, N'Eskil')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (885, 68, N'Gülağaç')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (886, 68, N'Güzelyurt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (887, 68, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (888, 68, N'Ortaköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (889, 68, N'Sarıyahşi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (890, 69, N'Aydıntepe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (891, 69, N'Demirözü')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (892, 69, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (893, 70, N'Ayrancı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (894, 70, N'Başyayla')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (895, 70, N'Ermenek')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (896, 70, N'Kazımkarabekir')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (897, 70, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (898, 70, N'Sarıveliler')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (899, 71, N'Bahşili')
GO
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (900, 71, N'Balışeyh')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (901, 71, N'Çelebi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (902, 71, N'Delice')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (903, 71, N'Karakeçili')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (904, 71, N'Keskin')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (905, 71, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (906, 71, N'Sulakyurt')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (907, 71, N'Yahşihan')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (908, 72, N'Beşiri')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (909, 72, N'Gercüş')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (910, 72, N'Hasankeyf')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (911, 72, N'Kozluk')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (912, 72, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (913, 72, N'Sason')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (914, 73, N'Beytüşşebap')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (915, 73, N'Cizre')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (916, 73, N'Güçlükonak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (917, 73, N'İdil')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (918, 73, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (919, 73, N'Silopi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (920, 73, N'Uludere')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (921, 74, N'Amasra')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (922, 74, N'Kurucaşile')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (923, 74, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (924, 74, N'Ulus')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (925, 75, N'Çıldır')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (926, 75, N'Damal')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (927, 75, N'Göle')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (928, 75, N'Hanak')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (929, 75, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (930, 75, N'Posof')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (931, 76, N'Aralık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (932, 76, N'Karakoyunlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (933, 76, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (934, 76, N'Tuzluca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (935, 77, N'Altınova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (936, 77, N'Armutlu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (937, 77, N'Çınarcık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (938, 77, N'Çiftlikköy')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (939, 77, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (940, 77, N'Termal')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (941, 78, N'Eflani')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (942, 78, N'Eskipazar')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (943, 78, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (944, 78, N'Ovacık')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (945, 78, N'Safranbolu')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (946, 78, N'Yenice')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (947, 79, N'Elbeyli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (948, 79, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (949, 79, N'Musabeyli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (950, 79, N'Polateli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (951, 80, N'Bahçe')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (952, 80, N'Düziçi')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (953, 80, N'Hasanbeyli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (954, 80, N'Kadirli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (955, 80, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (956, 80, N'Sumbas')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (957, 80, N'Toprakkale')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (958, 81, N'Akçakoca')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (959, 81, N'Cumayeri')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (960, 81, N'Çilimli')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (961, 81, N'Gölyaka')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (962, 81, N'Gümüşova')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (963, 81, N'Kaynaşlı')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (964, 81, N'Merkez')
INSERT [dbo].[ilceler] ([id], [ilid], [ilce]) VALUES (965, 81, N'Yığılca')
SET IDENTITY_INSERT [dbo].[ilceler] OFF
SET IDENTITY_INSERT [dbo].[iller] ON 

INSERT [dbo].[iller] ([id], [il]) VALUES (1, N'Adana')
INSERT [dbo].[iller] ([id], [il]) VALUES (2, N'Adıyaman')
INSERT [dbo].[iller] ([id], [il]) VALUES (3, N'Afyonkarahisar')
INSERT [dbo].[iller] ([id], [il]) VALUES (4, N'Ağrı')
INSERT [dbo].[iller] ([id], [il]) VALUES (5, N'Amasya')
INSERT [dbo].[iller] ([id], [il]) VALUES (6, N'Ankara')
INSERT [dbo].[iller] ([id], [il]) VALUES (7, N'Antalya')
INSERT [dbo].[iller] ([id], [il]) VALUES (8, N'Artvin')
INSERT [dbo].[iller] ([id], [il]) VALUES (9, N'Aydın')
INSERT [dbo].[iller] ([id], [il]) VALUES (10, N'Balıkesir')
INSERT [dbo].[iller] ([id], [il]) VALUES (11, N'Bilecik')
INSERT [dbo].[iller] ([id], [il]) VALUES (12, N'Bingöl')
INSERT [dbo].[iller] ([id], [il]) VALUES (13, N'Bitlis')
INSERT [dbo].[iller] ([id], [il]) VALUES (14, N'Bolu')
INSERT [dbo].[iller] ([id], [il]) VALUES (15, N'Burdur')
INSERT [dbo].[iller] ([id], [il]) VALUES (16, N'Bursa')
INSERT [dbo].[iller] ([id], [il]) VALUES (17, N'Çanakkale')
INSERT [dbo].[iller] ([id], [il]) VALUES (18, N'Çankırı')
INSERT [dbo].[iller] ([id], [il]) VALUES (19, N'Çorum')
INSERT [dbo].[iller] ([id], [il]) VALUES (20, N'Denizli')
INSERT [dbo].[iller] ([id], [il]) VALUES (21, N'Diyarbakır')
INSERT [dbo].[iller] ([id], [il]) VALUES (22, N'Edirne')
INSERT [dbo].[iller] ([id], [il]) VALUES (23, N'Elazığ')
INSERT [dbo].[iller] ([id], [il]) VALUES (24, N'Erzincan')
INSERT [dbo].[iller] ([id], [il]) VALUES (25, N'Erzurum')
INSERT [dbo].[iller] ([id], [il]) VALUES (26, N'Eskişehir')
INSERT [dbo].[iller] ([id], [il]) VALUES (27, N'Gaziantep')
INSERT [dbo].[iller] ([id], [il]) VALUES (28, N'Giresun')
INSERT [dbo].[iller] ([id], [il]) VALUES (29, N'Gümüşhane')
INSERT [dbo].[iller] ([id], [il]) VALUES (30, N'Hakkari')
INSERT [dbo].[iller] ([id], [il]) VALUES (31, N'Hatay')
INSERT [dbo].[iller] ([id], [il]) VALUES (32, N'Isparta')
INSERT [dbo].[iller] ([id], [il]) VALUES (33, N'Mersin')
INSERT [dbo].[iller] ([id], [il]) VALUES (34, N'İstanbul')
INSERT [dbo].[iller] ([id], [il]) VALUES (35, N'İzmir')
INSERT [dbo].[iller] ([id], [il]) VALUES (36, N'Kars')
INSERT [dbo].[iller] ([id], [il]) VALUES (37, N'Kastamonu')
INSERT [dbo].[iller] ([id], [il]) VALUES (38, N'Kayseri')
INSERT [dbo].[iller] ([id], [il]) VALUES (39, N'Kırklareli')
INSERT [dbo].[iller] ([id], [il]) VALUES (40, N'Kırşehir')
INSERT [dbo].[iller] ([id], [il]) VALUES (41, N'Kocaeli')
INSERT [dbo].[iller] ([id], [il]) VALUES (42, N'Konya')
INSERT [dbo].[iller] ([id], [il]) VALUES (43, N'Kütahya')
INSERT [dbo].[iller] ([id], [il]) VALUES (44, N'Malatya')
INSERT [dbo].[iller] ([id], [il]) VALUES (45, N'Manisa')
INSERT [dbo].[iller] ([id], [il]) VALUES (46, N'Kahramanmaraş')
INSERT [dbo].[iller] ([id], [il]) VALUES (47, N'Mardin')
INSERT [dbo].[iller] ([id], [il]) VALUES (48, N'Muğla')
INSERT [dbo].[iller] ([id], [il]) VALUES (49, N'Muş')
INSERT [dbo].[iller] ([id], [il]) VALUES (50, N'Nevşehir')
INSERT [dbo].[iller] ([id], [il]) VALUES (51, N'Niğde')
INSERT [dbo].[iller] ([id], [il]) VALUES (52, N'Ordu')
INSERT [dbo].[iller] ([id], [il]) VALUES (53, N'Rize')
INSERT [dbo].[iller] ([id], [il]) VALUES (54, N'Sakarya')
INSERT [dbo].[iller] ([id], [il]) VALUES (55, N'Samsun')
INSERT [dbo].[iller] ([id], [il]) VALUES (56, N'Siirt')
INSERT [dbo].[iller] ([id], [il]) VALUES (57, N'Sinop')
INSERT [dbo].[iller] ([id], [il]) VALUES (58, N'Sivas')
INSERT [dbo].[iller] ([id], [il]) VALUES (59, N'Tekirdağ')
INSERT [dbo].[iller] ([id], [il]) VALUES (60, N'Tokat')
INSERT [dbo].[iller] ([id], [il]) VALUES (61, N'Trabzon')
INSERT [dbo].[iller] ([id], [il]) VALUES (62, N'Tunceli')
INSERT [dbo].[iller] ([id], [il]) VALUES (63, N'Şanlıurfa')
INSERT [dbo].[iller] ([id], [il]) VALUES (64, N'Uşak')
INSERT [dbo].[iller] ([id], [il]) VALUES (65, N'Van')
INSERT [dbo].[iller] ([id], [il]) VALUES (66, N'Yozgat')
INSERT [dbo].[iller] ([id], [il]) VALUES (67, N'Zonguldak')
INSERT [dbo].[iller] ([id], [il]) VALUES (68, N'Aksaray')
INSERT [dbo].[iller] ([id], [il]) VALUES (69, N'Bayburt')
INSERT [dbo].[iller] ([id], [il]) VALUES (70, N'Karaman')
INSERT [dbo].[iller] ([id], [il]) VALUES (71, N'Kırıkkale')
INSERT [dbo].[iller] ([id], [il]) VALUES (72, N'Batman')
INSERT [dbo].[iller] ([id], [il]) VALUES (73, N'Şırnak')
INSERT [dbo].[iller] ([id], [il]) VALUES (74, N'Bartın')
INSERT [dbo].[iller] ([id], [il]) VALUES (75, N'Ardahan')
INSERT [dbo].[iller] ([id], [il]) VALUES (76, N'Iğdır')
INSERT [dbo].[iller] ([id], [il]) VALUES (77, N'Yalova')
INSERT [dbo].[iller] ([id], [il]) VALUES (78, N'Karabük')
INSERT [dbo].[iller] ([id], [il]) VALUES (79, N'Kilis')
INSERT [dbo].[iller] ([id], [il]) VALUES (80, N'Osmaniye')
INSERT [dbo].[iller] ([id], [il]) VALUES (81, N'Düzce')
SET IDENTITY_INSERT [dbo].[iller] OFF
SET IDENTITY_INSERT [dbo].[kategoriler] ON 

INSERT [dbo].[kategoriler] ([kategori_id], [kategoriadi], [durumu]) VALUES (1, N'Tüm Kategori Ürünleri...', 1)
INSERT [dbo].[kategoriler] ([kategori_id], [kategoriadi], [durumu]) VALUES (2, N'Saç Bakım Yağı', 1)
INSERT [dbo].[kategoriler] ([kategori_id], [kategoriadi], [durumu]) VALUES (3, N'Saç Bakım Düzleştirici', 1)
INSERT [dbo].[kategoriler] ([kategori_id], [kategoriadi], [durumu]) VALUES (4, N'Saç Köpüğü', 1)
INSERT [dbo].[kategoriler] ([kategori_id], [kategoriadi], [durumu]) VALUES (5, N'Saç Kremi', 1)
INSERT [dbo].[kategoriler] ([kategori_id], [kategoriadi], [durumu]) VALUES (7, N'Saç Şekillendirici', 1)
INSERT [dbo].[kategoriler] ([kategori_id], [kategoriadi], [durumu]) VALUES (8, N'Saç Serumu', 1)
INSERT [dbo].[kategoriler] ([kategori_id], [kategoriadi], [durumu]) VALUES (10, N'Saç Bakım Losyonu', 1)
INSERT [dbo].[kategoriler] ([kategori_id], [kategoriadi], [durumu]) VALUES (16, N'Şampuan', 1)
SET IDENTITY_INSERT [dbo].[kategoriler] OFF
SET IDENTITY_INSERT [dbo].[markalar] ON 

INSERT [dbo].[markalar] ([marka_id], [markaadı], [durumu]) VALUES (1, N'Tüm Marka Ürünleri...', 1)
INSERT [dbo].[markalar] ([marka_id], [markaadı], [durumu]) VALUES (2, N'Bebak', 1)
INSERT [dbo].[markalar] ([marka_id], [markaadı], [durumu]) VALUES (3, N'BioFood', 1)
INSERT [dbo].[markalar] ([marka_id], [markaadı], [durumu]) VALUES (4, N'Bioxcin', 1)
INSERT [dbo].[markalar] ([marka_id], [markaadı], [durumu]) VALUES (5, N'Bonacare', 1)
INSERT [dbo].[markalar] ([marka_id], [markaadı], [durumu]) VALUES (6, N'Dax', 1)
INSERT [dbo].[markalar] ([marka_id], [markaadı], [durumu]) VALUES (7, N'Davines', 1)
INSERT [dbo].[markalar] ([marka_id], [markaadı], [durumu]) VALUES (8, N'Hair 360', 1)
INSERT [dbo].[markalar] ([marka_id], [markaadı], [durumu]) VALUES (9, N'Kerastase', 1)
INSERT [dbo].[markalar] ([marka_id], [markaadı], [durumu]) VALUES (10, N'Jhon Frieda', 1)
SET IDENTITY_INSERT [dbo].[markalar] OFF
SET IDENTITY_INSERT [dbo].[siparis] ON 

INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1080, 3, 28, 2, 240, N'May  7 2019 10:41PM                               ', N'Sipariş İptal Edildi', N'314191', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1081, 3, 32, 2, 60, N'May  7 2019 10:41PM                               ', N'Sipariş İptal Edildi', N'314191', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1085, 3, 28, 1, 120, N'May  8 2019  1:34AM                               ', N'Sipariş İptal Edildi', N'345131', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1087, 3, 29, 10, 1500, N'May  8 2019  2:52AM                               ', N'Sipariş Tamamlandı', N'323153', 19, 231, N'2626 Glendale Avenue', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1088, 3, 28, 1, 120, N'May  8 2019  2:52AM                               ', N'Sipariş Tamamlandı', N'323153', 19, 231, N'2626 Glendale Avenue', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1089, 3, 31, 2, 400, N'May  8 2019  2:52AM                               ', N'Sipariş Tamamlandı', N'323153', 19, 231, N'2626 Glendale Avenue', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1090, 3, 58, 2, 200, N'May  8 2019  2:52AM                               ', N'Sipariş Tamamlandı', N'323153', 19, 231, N'2626 Glendale Avenue', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1091, 3, 28, 2, 240, N'May  8 2019  3:50AM                               ', N'Sipariş Tamamlandı', N'326139', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1092, 3, 29, 2, 300, N'May  8 2019  3:50AM                               ', N'Sipariş Tamamlandı', N'326139', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1093, 3, 30, 2, 100, N'May  8 2019  3:50AM                               ', N'Sipariş Tamamlandı', N'326139', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1094, 3, 28, 5, 600, N'May  8 2019  3:51AM                               ', N'Sipariş Tamamlandı', N'371118', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1095, 3, 30, 3, 150, N'May  8 2019  3:51AM                               ', N'Sipariş Tamamlandı', N'371118', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1096, 3, 33, 3, 360, N'May  8 2019  3:53AM                               ', N'Sipariş Tamamlandı', N'330131', 19, 229, N'3157  Calico Drive', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1097, 3, 29, 3, 450, N'May  8 2019  3:55AM                               ', N'Sipariş Tamamlandı', N'328152', 19, 229, N'3157  Calico Drive', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1103, 3, 28, 9, 1080, N'May  8 2019  5:37PM                               ', N'Sipariş Tamamlandı', N'367172', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1104, 3, 28, 3, 425, N'May  8 2019 10:21PM                               ', N'Beklemede', N'38199', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1105, 3, 29, 2, 354, N'May  8 2019 10:36PM                               ', N'Sipariş İptal Edildi', N'311115', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1106, 3, 28, 1, 142, N'May  8 2019 10:36PM                               ', N'Sipariş İptal Edildi', N'311115', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1107, 3, 30, 1, 59, N'May  8 2019 10:36PM                               ', N'Sipariş İptal Edildi', N'311115', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1108, 1011, 28, 1, 142, N'May  9 2019 12:09AM                               ', N'Beklemede', N'101171123', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1109, 1011, 29, 1, 177, N'May  9 2019 12:09AM                               ', N'Beklemede', N'101171123', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'MNG')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1110, 3, 28, 2, 283, N'May  9 2019  1:13AM                               ', N'Sipariş İptal Edildi', N'389106', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1111, 3, 28, 2, 283, N'May  9 2019  1:31AM                               ', N'Sipariş İptal Edildi', N'367186', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1112, 3, 28, 2, 283, N'May  9 2019  1:36AM                               ', N'Sipariş İptal Edildi', N'393112', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1113, 3, 28, 3, 425, N'May  9 2019  2:17AM                               ', N'Sipariş İptal Edildi', N'362126', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1114, 3, 28, 8, 1133, N'May  9 2019  2:30AM                               ', N'Sipariş İptal Edildi', N'396112', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
INSERT [dbo].[siparis] ([siparis_id], [üye_id], [ürün_id], [ürün_adet], [tutar], [tarih], [durumu], [siparis_no], [il], [ilce], [adres], [ödeme_türü], [kargo]) VALUES (1115, 3, 28, 1, 142, N'May  9 2019  2:57AM                               ', N'Beklemede', N'320144', 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', N'Kapıda Ödeme', N'Yurt İçi')
SET IDENTITY_INSERT [dbo].[siparis] OFF
SET IDENTITY_INSERT [dbo].[stok] ON 

INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (9, 1, 29, 100, 100, N'May  8 2019  1:05AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (10, 1, 35, 32, 32, N'May  8 2019  1:06AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (12, 1, 31, 2, 2, N'May  8 2019  1:16AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (13, 1, 58, 2, 2, N'May  8 2019  2:47AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (14, 1, 31, 1, 3, N'May  8 2019  3:16AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (15, 1, 31, 1, 4, N'May  8 2019  3:18AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (16, 2, 31, 100, 104, N'May  8 2019  3:44AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (17, 1, 28, 100, 101, N'May  8 2019  3:44AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (18, 1, 34, 100, 100, N'May  8 2019  3:45AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (19, 1, 43, 100, 100, N'May  8 2019  3:45AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (20, 1, 52, 100, 100, N'May  8 2019  3:45AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (21, 1, 42, 100, 100, N'May  8 2019  3:45AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (22, 1, 30, 100, 100, N'May  8 2019  3:45AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (23, 1, 33, 100, 100, N'May  8 2019  3:45AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (24, 1, 58, 1, 3, N'May  8 2019  3:45AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (25, 1, 41, 100, 100, N'May  8 2019  3:45AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (26, 1, 50, 100, 100, N'May  8 2019  3:45AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (27, 1, 36, 100, 100, N'May  8 2019  3:45AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (28, 1, 29, 1000, 1100, N'May  8 2019  3:46AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (29, 1, 38, 100, 100, N'May  8 2019  3:46AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (30, 1, 55, 2, 2, N'May  8 2019  3:46AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (31, 1, 57, 11, 11, N'May  8 2019  3:46AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (32, 1, 46, 2, 2, N'May  8 2019  3:46AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (33, 1, 58, 2, 5, N'May  8 2019  5:03AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (34, 1, 28, 3, 11, N'May  8 2019  5:15PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (35, 1, 28, 3, 8, N'May  8 2019  5:18PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (36, 1, 31, 3, 107, N'May  8 2019  5:18PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (37, 1, 31, 3, 110, N'May  8 2019  5:18PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (38, 1, 28, 3, 11, N'May  8 2019  5:18PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (39, 1, 28, 10, 13, N'May  8 2019  5:36PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (40, 1, 32, 11, 11, N'May  8 2019  5:44PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (41, 1, 31, 2, 112, N'May  8 2019  5:54PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (42, 1, 58, 2, 7, N'May  8 2019  5:54PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (43, 1, 58, 3, 10, N'May  8 2019  5:54PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (44, 1, 58, 1, 11, N'May  8 2019  5:55PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (45, 1, 46, 11, 13, N'May  8 2019  7:08PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (46, 1, 28, 2, 3, N'May  8 2019 11:24PM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (47, 1, 31, 1, 113, N'May  9 2019 12:21AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (48, 1, 28, 1, 1, N'May  9 2019  2:57AM')
INSERT [dbo].[stok] ([stok_id], [tedarikci_id], [ürün_id], [ürün_adet], [suankiadet], [tarih]) VALUES (49, 1, 28, 1, 1, N'May  9 2019  3:00AM')
SET IDENTITY_INSERT [dbo].[stok] OFF
SET IDENTITY_INSERT [dbo].[stokcikis] ON 

INSERT [dbo].[stokcikis] ([stok_id], [ürün_id], [adet], [sonadet], [tarih]) VALUES (1, 28, 6, 10, N'May  9 2019  2:43AM')
INSERT [dbo].[stokcikis] ([stok_id], [ürün_id], [adet], [sonadet], [tarih]) VALUES (2, 28, 10, 0, N'May  9 2019  2:46AM')
INSERT [dbo].[stokcikis] ([stok_id], [ürün_id], [adet], [sonadet], [tarih]) VALUES (3, 28, 0, 0, N'May  9 2019  2:56AM')
INSERT [dbo].[stokcikis] ([stok_id], [ürün_id], [adet], [sonadet], [tarih]) VALUES (4, 28, 1, 0, N'May  9 2019  3:01AM')
SET IDENTITY_INSERT [dbo].[stokcikis] OFF
SET IDENTITY_INSERT [dbo].[tedarikci] ON 

INSERT [dbo].[tedarikci] ([tedarikci_id], [tedarikci_adi], [adres], [telefon]) VALUES (1, N'Mahmut', N'hatay-samandağ-sutaşı mahallesi-cumhuriyet caddesi-no:95, samandağ', CAST(5398503088 AS Decimal(11, 0)))
INSERT [dbo].[tedarikci] ([tedarikci_id], [tedarikci_adi], [adres], [telefon]) VALUES (2, N'Levon Çapar', N'hatay-samandağ-sutaşı mahallesi-cumhuriyet caddesi-no:95, samandağ', CAST(5398503088 AS Decimal(11, 0)))
SET IDENTITY_INSERT [dbo].[tedarikci] OFF
SET IDENTITY_INSERT [dbo].[ürünler] ON 

INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (28, N' Nemlendirici ve Koruyucu Saç Bakım Yağı', 8, 2, CAST(120.00 AS Decimal(10, 2)), N'Nuxe Sun Moisturising Oil For Hair - Nemlendirici ve Koruyucu Saç Bakım Yağı 100 ml', 0, N'/Resimler/3264680008115_1.jpg', 1, N'Stokta Yok')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (29, N'Saç Güçlendirici Bakım Yağı', 6, 2, CAST(150.00 AS Decimal(10, 2)), N'Dax Supergro Saç Güçlendirici Bakım Yağı 198 gr', 1094, N'/Resimler/077315009103.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (30, N'Çok Amaçlı Kuru Yağ', 5, 2, CAST(50.00 AS Decimal(10, 2)), N'Nuxe Nuxe Huile Prodigieuse - Çok Amaçlı Kuru Yağ 50ml', 95, N'/Resimler/8697785605692.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (31, N' Hacim Veren Sprey ', 10, 10, CAST(200.00 AS Decimal(10, 2)), N'John Frieda Volume Luxurious Hacim Veren Sprey 125 ml', 113, N'/Resimler/50079049-1.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (32, N'Nemlendirici Balsam', 6, 10, CAST(30.00 AS Decimal(10, 2)), N'Davines Authentic Moisturising Balm Nemlendirici Balsam 150ml', 2, N'/Resimler/8004608226703.jpg', 1, N'Kritik Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (33, N'Hair 360 Yoğun Saç Bakım Serumu', 8, 8, CAST(120.00 AS Decimal(10, 2)), N'Hair 360 Kadınlar için Yoğun Saç Bakım Serumu 50ml', 97, N'/Resimler/8681612221018.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (34, N' Yoğun Saç Spreyi', 8, 10, CAST(250.00 AS Decimal(10, 2)), N'Hair 360 Growth Factors Booster Kadınlar için Yoğun Saç Spreyi 50ml', 100, N'/Resimler/8681807059020.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (35, N'Saç Düzleştirici', 9, 3, CAST(300.00 AS Decimal(10, 2)), N'Raks Bella Saç Düzleştirici', 32, N'/Resimler/8698758222908-1.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (36, N'Saç Düzleştiricisi', 6, 3, CAST(250.00 AS Decimal(10, 2)), N'Arnica Donna İyonizerli Saç Düzleştiricisi', 100, N'/Resimler/8692341411234.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (37, N'Saç Düzleştirici ', 5, 3, CAST(150.00 AS Decimal(10, 2)), N'Fakir Harvey Saç Düzleştirici Beyaz Rose', 0, N'/Resimler/8690394691513.jpg', 1, N'Stokta Yok')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (38, N'Saç Şekillendirme Seti', 9, 3, CAST(400.00 AS Decimal(10, 2)), N'Fakir My Jet Saç Şekillendirme Seti', 100, N'/Resimler/8690394661202.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (39, N'Bukle Belirginleştirici Saç Köpüğü', 10, 4, CAST(40.00 AS Decimal(10, 2)), N'John Frieda Curl Reviver Styling Mousse - Bukle Belirginleştirici Saç Köpüğü 200 ml', 0, N'/Resimler/5017634119003.jpg', 1, N'Stokta Yok')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (41, N'Onarıcı Saç Köpüğü', 6, 4, CAST(120.00 AS Decimal(10, 2)), N'Urban Care Shake N Repair Milk Treatment - Seyahat Boy Onarıcı Saç Köpüğü 75ml', 100, N'/Resimler/8680690701917.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (42, N'Bukle Belirginleştirici Köpük', 5, 4, CAST(45.00 AS Decimal(10, 2)), N'Urban Care Style Guide Elastic Curl Mousse - Seyahat Boy Bukle Belirginleştirici Köpük 75ml', 100, N'/Resimler/Urban-Care-Style-Guide-Elastic-Curl-Mousse-Seyahat-Boy-Bukle-Belirginlestirici-Kopuk-75ml.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (43, N'Belirginleştirici Bakım Kremi', 2, 5, CAST(50.00 AS Decimal(10, 2)), N'John Frieda Dream Curls Conditioner - Bukle Belirginleştirici Bakım Kremi 250 ml', 100, N'/Resimler/5017634005979_1.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (44, N'Dolgunlaştırıcı Etkili Saç Bakım Kremi ', 4, 5, CAST(100.00 AS Decimal(10, 2)), N'Organix Biotin & Collagen Conditioner - Dolgunlaştırıcı Etkili Saç Bakım Kremi 385 ml', 0, N'/Resimler/Organix-Biotin-Collagen-Conditioner-Dolgunlastirici-Etkili-Sac-Bakim-Kremi-385ml.jpg', 1, N'Stokta Yok')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (46, N'Up Mat Gum 1', 7, 7, CAST(120.00 AS Decimal(10, 2)), N'Osis Mess Up Mat Gum 100 ml', 13, N'/Resimler/Osis-Mess-Up-Mat-Gum-100-ml-2.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (50, N'Restore Serum ', 5, 8, CAST(450.00 AS Decimal(10, 2)), N'John Frieda Luxurious Volume Core Restore Serum 60 ml', 100, N'/Resimler/5037156236736.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (52, N'Belirginleştirici Saç Şampuanı', 7, 16, CAST(50.00 AS Decimal(10, 2)), N'Organix Coconut Curls Shampoo - Bukle Belirginleştirici Saç Şampuanı 385 ml', 100, N'/Resimler/Organix-Coconut-Curls-Shampoo-Bukle-Belirginlestirici-Sac-Sampuani-385ml.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (53, N'Renkli Saçlar için Şampuan', 9, 16, CAST(65.00 AS Decimal(10, 2)), N'Matrix Total Results So Silver - Beyaz ve Açık Renkli Saçlar için Şampuan 300 ml', 0, N'/Resimler/3474630741713.jpg', 1, N'Stokta Yok')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (54, N'Sarı Saç Bakım Şampuanı', 5, 16, CAST(70.00 AS Decimal(10, 2)), N'John Frieda Sheer Blonde Colour Renew Shampoo - Sarı Saç Bakım Şampuanı 250 ml', 0, N'/Resimler/5037156227376.jpg', 1, N'Stokta Yok')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (55, N'Şampuan', 3, 2, CAST(120.00 AS Decimal(10, 2)), N'Davines Purifying Şampuan ve Tangle Teezer Compact Hello Kitty', 2, N'/Resimler/5037156227376.jpg', 1, N'Kritik Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (57, N'Şampuan', 4, 4, CAST(120.00 AS Decimal(10, 2)), N'Davines Purifying Şampuan ve Tangle Teezer Compact Hello Kitty', 11, N'/Resimler/3474630741713.jpg', 2, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (58, N'Hindistan Cevizi Yağı', 2, 2, CAST(100.00 AS Decimal(10, 2)), N'Hindistan cevizi yağı saç bakım yağı', 11, N'/Resimler/Organix-Coconut-Curls-Shampoo-Bukle-Belirginlestirici-Sac-Sampuani-385ml.jpg', 1, N'Normal Düzey')
INSERT [dbo].[ürünler] ([id], [ürünadi], [markakodu], [kategorikodu], [fiyat], [üründetayi], [adet], [resmi], [durumu], [adetdüzeyi]) VALUES (59, N'Şampuan', 2, 2, CAST(120.00 AS Decimal(10, 2)), N'Saç Şampuanı', 0, N'/Resimler/3264680008016_1.jpg', 2, N'Stokta Yok')
SET IDENTITY_INSERT [dbo].[ürünler] OFF
SET IDENTITY_INSERT [dbo].[üyeler] ON 

INSERT [dbo].[üyeler] ([üye_id], [adi], [soyadi], [tcno], [email], [parola], [telefon], [sehir], [ilce], [adres], [durumu]) VALUES (3, N'mahmut', N'is', CAST(15989186164 AS Decimal(11, 0)), N'mahmut1753313@gmail.com', N'123', CAST(5398503088 AS Decimal(11, 0)), 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', 1)
INSERT [dbo].[üyeler] ([üye_id], [adi], [soyadi], [tcno], [email], [parola], [telefon], [sehir], [ilce], [adres], [durumu]) VALUES (1004, N'mahmut', N'is', CAST(15989186164 AS Decimal(11, 0)), N'dfgdfgfd', N'123', CAST(5398503088 AS Decimal(11, 0)), 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', 0)
INSERT [dbo].[üyeler] ([üye_id], [adi], [soyadi], [tcno], [email], [parola], [telefon], [sehir], [ilce], [adres], [durumu]) VALUES (1005, N'mahmut', N'is', CAST(15989186164 AS Decimal(11, 0)), N'levon@gmail.com', N'123', CAST(5398503088 AS Decimal(11, 0)), 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', 1)
INSERT [dbo].[üyeler] ([üye_id], [adi], [soyadi], [tcno], [email], [parola], [telefon], [sehir], [ilce], [adres], [durumu]) VALUES (1011, N'Hasan Hoca', N'is', CAST(15989186164 AS Decimal(11, 0)), N'hh@gmail.com', N'123', CAST(5398503088 AS Decimal(11, 0)), 30, 376, N'atatürk mahallesi-sait karali caddesi-selman abacı, apartmanı-zemin kat-no 2', 1)
SET IDENTITY_INSERT [dbo].[üyeler] OFF
SET IDENTITY_INSERT [dbo].[yorumlar] ON 

INSERT [dbo].[yorumlar] ([yorum_id], [ürün_id], [üye_id], [yorum], [tarih], [durumu]) VALUES (1, 28, 3, N'çok iyi', N'May  8 2019  6:41PM', N'Aktif')
INSERT [dbo].[yorumlar] ([yorum_id], [ürün_id], [üye_id], [yorum], [tarih], [durumu]) VALUES (2, 28, 3, N'çok iyi', N'May  8 2019  6:41PM', N'Aktif')
INSERT [dbo].[yorumlar] ([yorum_id], [ürün_id], [üye_id], [yorum], [tarih], [durumu]) VALUES (3, 28, 3, N'çok iyi', N'May  8 2019  6:41PM', N'Aktif')
INSERT [dbo].[yorumlar] ([yorum_id], [ürün_id], [üye_id], [yorum], [tarih], [durumu]) VALUES (4, 29, 3, N'çok çok iyi', N'May  8 2019  6:54PM', N'Aktif')
INSERT [dbo].[yorumlar] ([yorum_id], [ürün_id], [üye_id], [yorum], [tarih], [durumu]) VALUES (5, 29, 3, N'çok çok iyi', N'May  8 2019  6:54PM', N'Aktif')
INSERT [dbo].[yorumlar] ([yorum_id], [ürün_id], [üye_id], [yorum], [tarih], [durumu]) VALUES (6, 28, 3, N'iyi', N'May  8 2019  6:55PM', N'Aktif')
INSERT [dbo].[yorumlar] ([yorum_id], [ürün_id], [üye_id], [yorum], [tarih], [durumu]) VALUES (7, 28, 3, N'iyi', N'May  8 2019  6:56PM', N'Aktif')
INSERT [dbo].[yorumlar] ([yorum_id], [ürün_id], [üye_id], [yorum], [tarih], [durumu]) VALUES (8, 28, 3, N'iyi', N'May  8 2019  6:57PM', N'Aktif')
INSERT [dbo].[yorumlar] ([yorum_id], [ürün_id], [üye_id], [yorum], [tarih], [durumu]) VALUES (9, 32, 3, N'güzel', N'May  8 2019 10:37PM', N'Aktif')
SET IDENTITY_INSERT [dbo].[yorumlar] OFF
ALTER TABLE [dbo].[ilceler]  WITH CHECK ADD FOREIGN KEY([ilid])
REFERENCES [dbo].[iller] ([id])
GO
ALTER TABLE [dbo].[sepet]  WITH CHECK ADD  CONSTRAINT [FK_sepet_ürünler] FOREIGN KEY([ürün_id])
REFERENCES [dbo].[ürünler] ([id])
GO
ALTER TABLE [dbo].[sepet] CHECK CONSTRAINT [FK_sepet_ürünler]
GO
ALTER TABLE [dbo].[sepet]  WITH CHECK ADD  CONSTRAINT [FK_sepet_üyeler] FOREIGN KEY([üye_id])
REFERENCES [dbo].[üyeler] ([üye_id])
GO
ALTER TABLE [dbo].[sepet] CHECK CONSTRAINT [FK_sepet_üyeler]
GO
ALTER TABLE [dbo].[siparis]  WITH CHECK ADD  CONSTRAINT [FK_siparis_ürünler] FOREIGN KEY([ürün_id])
REFERENCES [dbo].[ürünler] ([id])
GO
ALTER TABLE [dbo].[siparis] CHECK CONSTRAINT [FK_siparis_ürünler]
GO
ALTER TABLE [dbo].[siparis]  WITH CHECK ADD  CONSTRAINT [FK_siparis_üyeler] FOREIGN KEY([üye_id])
REFERENCES [dbo].[üyeler] ([üye_id])
GO
ALTER TABLE [dbo].[siparis] CHECK CONSTRAINT [FK_siparis_üyeler]
GO
ALTER TABLE [dbo].[stok]  WITH CHECK ADD  CONSTRAINT [FK_stok_tedarikci] FOREIGN KEY([tedarikci_id])
REFERENCES [dbo].[tedarikci] ([tedarikci_id])
GO
ALTER TABLE [dbo].[stok] CHECK CONSTRAINT [FK_stok_tedarikci]
GO
ALTER TABLE [dbo].[stok]  WITH CHECK ADD  CONSTRAINT [FK_stok_ürünler] FOREIGN KEY([ürün_id])
REFERENCES [dbo].[ürünler] ([id])
GO
ALTER TABLE [dbo].[stok] CHECK CONSTRAINT [FK_stok_ürünler]
GO
ALTER TABLE [dbo].[ürünler]  WITH CHECK ADD  CONSTRAINT [FK_ürünler_kategoriler] FOREIGN KEY([kategorikodu])
REFERENCES [dbo].[kategoriler] ([kategori_id])
GO
ALTER TABLE [dbo].[ürünler] CHECK CONSTRAINT [FK_ürünler_kategoriler]
GO
ALTER TABLE [dbo].[ürünler]  WITH CHECK ADD  CONSTRAINT [FK_ürünler_markalar] FOREIGN KEY([markakodu])
REFERENCES [dbo].[markalar] ([marka_id])
GO
ALTER TABLE [dbo].[ürünler] CHECK CONSTRAINT [FK_ürünler_markalar]
GO

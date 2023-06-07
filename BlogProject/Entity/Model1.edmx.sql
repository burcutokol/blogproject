
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/31/2023 21:28:55
-- Generated from EDMX file: C:\Users\tokol\source\repos\blogproject\BlogProject\Entity\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [project_blog];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

I
GO
IF OBJECT_ID(N'[dbo].[FK_TBLBLOG_TBL_TUR]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLBLOG] DROP CONSTRAINT [FK_TBLBLOG_TBL_TUR];
GO
IF OBJECT_ID(N'[dbo].[FK_TBLBLOG_TBLKATEGORI]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLBLOG] DROP CONSTRAINT [FK_TBLBLOG_TBLKATEGORI];
GO
IF OBJECT_ID(N'[dbo].[FK_TBLYORUM_TBLBLOG]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLYORUM] DROP CONSTRAINT [FK_TBLYORUM_TBLBLOG];
GO
IF OBJECT_ID(N'[dbo].[FK_TBLYORUM_TBLKULLANICI]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TBLYORUM] DROP CONSTRAINT [FK_TBLYORUM_TBLKULLANICI];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[TBL_TUR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBL_TUR];
GO
IF OBJECT_ID(N'[dbo].[TBLBLOG]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLBLOG];
GO
IF OBJECT_ID(N'[dbo].[TBLHAKKIMIZDA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLHAKKIMIZDA];
GO
IF OBJECT_ID(N'[dbo].[TBLILETISIM]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLILETISIM];
GO
IF OBJECT_ID(N'[dbo].[TBLKATEGORI]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLKATEGORI];
GO
IF OBJECT_ID(N'[dbo].[TBLKULLANICI]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLKULLANICI];
GO
IF OBJECT_ID(N'[dbo].[TBLYORUM]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TBLYORUM];
GO


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TBL_TUR'
CREATE TABLE [dbo].[TBL_TUR] (
    [TURID] int IDENTITY(1,1) NOT NULL,
    [TURAD] varchar(20)  NULL
);
GO

-- Creating table 'TBLBLOG'
CREATE TABLE [dbo].[TBLBLOG] (
    [BLOGID] int IDENTITY(1,1) NOT NULL,
    [BLOGBASLIK] nvarchar(100)  NULL,
    [BLOGICERIK] nvarchar(4000)  NULL,
    [BLOGTARIH] datetime  NULL,
    [BLOGGORSEL] varchar(200)  NULL,
    [BLOGKATEGORİ] tinyint  NULL,
    [BLOGTURID] int  NULL
);
GO

-- Creating table 'TBLKATEGORI'
CREATE TABLE [dbo].[TBLKATEGORI] (
    [KATEGORIID] tinyint IDENTITY(1,1) NOT NULL,
    [KATEGORIAD] varchar(40)  NULL
);
GO

-- Creating table 'TBLYORUM'
CREATE TABLE [dbo].[TBLYORUM] (
    [YORUMID] int IDENTITY(1,1) NOT NULL,
    [KULLANICIID] int  NOT NULL,
    [YORUM] varchar(4000)  NULL,
    [KITAPID] int  NOT NULL,
    [PUAN] int  NULL,
    [KULLANICIAD] varchar(100)  NOT NULL
);
GO

-- Creating table 'TBLHAKKIMIZDA'
CREATE TABLE [dbo].[TBLHAKKIMIZDA] (
    [ID] smallint  NOT NULL,
    [ACIKLAMA] nvarchar(max)  NULL
);
GO

-- Creating table 'TBLILETISIM'
CREATE TABLE [dbo].[TBLILETISIM] (
    [MESAJID] int IDENTITY(1,1) NOT NULL,
    [ADSOYAD] nvarchar(100)  NULL,
    [MAIL] nvarchar(75)  NULL,
    [TELEFON] nvarchar(50)  NULL,
    [KONU] nchar(100)  NULL,
    [ICERIK] nvarchar(2000)  NULL
);
GO

-- Creating table 'TBLADMIN'
CREATE TABLE [dbo].[TBLADMIN] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [KULLANICIADI] varchar(20)  NULL,
    [SIFRE] varchar(10)  NULL
);
GO

-- Creating table 'TBLKULLANICI'
CREATE TABLE [dbo].[TBLKULLANICI] (
    [KULLANICIID_] int IDENTITY(1,1) NOT NULL,
    [KULLANICINICK] nvarchar(20)  NOT NULL,
    [KULLANICIAD] nvarchar(20)  NOT NULL,
    [KULLANICISOYAD] nvarchar(20)  NULL,
    [KULLANICISIFRE] nvarchar(20)  NOT NULL,
    [KULLANICIMAIL] nvarchar(100)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO



-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [TURID] in table 'TBL_TUR'
ALTER TABLE [dbo].[TBL_TUR]
ADD CONSTRAINT [PK_TBL_TUR]
    PRIMARY KEY CLUSTERED ([TURID] ASC);
GO

-- Creating primary key on [BLOGID] in table 'TBLBLOG'
ALTER TABLE [dbo].[TBLBLOG]
ADD CONSTRAINT [PK_TBLBLOG]
    PRIMARY KEY CLUSTERED ([BLOGID] ASC);
GO

-- Creating primary key on [KATEGORIID] in table 'TBLKATEGORI'
ALTER TABLE [dbo].[TBLKATEGORI]
ADD CONSTRAINT [PK_TBLKATEGORI]
    PRIMARY KEY CLUSTERED ([KATEGORIID] ASC);
GO

-- Creating primary key on [YORUMID] in table 'TBLYORUM'
ALTER TABLE [dbo].[TBLYORUM]
ADD CONSTRAINT [PK_TBLYORUM]
    PRIMARY KEY CLUSTERED ([YORUMID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLHAKKIMIZDA'
ALTER TABLE [dbo].[TBLHAKKIMIZDA]
ADD CONSTRAINT [PK_TBLHAKKIMIZDA]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [MESAJID] in table 'TBLILETISIM'
ALTER TABLE [dbo].[TBLILETISIM]
ADD CONSTRAINT [PK_TBLILETISIM]
    PRIMARY KEY CLUSTERED ([MESAJID] ASC);
GO

-- Creating primary key on [ID] in table 'TBLADMIN'
ALTER TABLE [dbo].[TBLADMIN]
ADD CONSTRAINT [PK_TBLADMIN]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [KULLANICIID_] in table 'TBLKULLANICI'
ALTER TABLE [dbo].[TBLKULLANICI]
ADD CONSTRAINT [PK_TBLKULLANICI]
    PRIMARY KEY CLUSTERED ([KULLANICIID_] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO



-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BLOGTURID] in table 'TBLBLOG'
ALTER TABLE [dbo].[TBLBLOG]
ADD CONSTRAINT [FK_TBLBLOG_TBL_TUR]
    FOREIGN KEY ([BLOGTURID])
    REFERENCES [dbo].[TBL_TUR]
        ([TURID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLBLOG_TBL_TUR'
CREATE INDEX [IX_FK_TBLBLOG_TBL_TUR]
ON [dbo].[TBLBLOG]
    ([BLOGTURID]);
GO

-- Creating foreign key on [BLOGKATEGORİ] in table 'TBLBLOG'
ALTER TABLE [dbo].[TBLBLOG]
ADD CONSTRAINT [FK_TBLBLOG_TBLKATEGORI]
    FOREIGN KEY ([BLOGKATEGORİ])
    REFERENCES [dbo].[TBLKATEGORI]
        ([KATEGORIID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLBLOG_TBLKATEGORI'
CREATE INDEX [IX_FK_TBLBLOG_TBLKATEGORI]
ON [dbo].[TBLBLOG]
    ([BLOGKATEGORİ]);
GO

-- Creating foreign key on [KITAPID] in table 'TBLYORUM'
ALTER TABLE [dbo].[TBLYORUM]
ADD CONSTRAINT [FK_TBLYORUM_TBLBLOG]
    FOREIGN KEY ([KITAPID])
    REFERENCES [dbo].[TBLBLOG]
        ([BLOGID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLYORUM_TBLBLOG'
CREATE INDEX [IX_FK_TBLYORUM_TBLBLOG]
ON [dbo].[TBLYORUM]
    ([KITAPID]);
GO

-- Creating foreign key on [KULLANICIID] in table 'TBLYORUM'
ALTER TABLE [dbo].[TBLYORUM]
ADD CONSTRAINT [FK_TBLYORUM_TBLKULLANICI]
    FOREIGN KEY ([KULLANICIID])
    REFERENCES [dbo].[TBLKULLANICI]
        ([KULLANICIID_])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TBLYORUM_TBLKULLANICI'
CREATE INDEX [IX_FK_TBLYORUM_TBLKULLANICI]
ON [dbo].[TBLYORUM]
    ([KULLANICIID]);
GO




-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
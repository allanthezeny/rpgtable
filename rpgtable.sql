-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Set-2018 às 02:03
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpgtable`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_atributo_bonus`
--

CREATE TABLE `tb_atributo_bonus` (
  `ID_BONUS` int(6) UNSIGNED NOT NULL,
  `NOME_BONUS` varchar(30) NOT NULL,
  `HP_BONUS` int(6) DEFAULT NULL,
  `MP_BONUS` int(6) DEFAULT NULL,
  `FORCA_BONUS` int(6) DEFAULT NULL,
  `AGILIDADE_BONUS` int(6) DEFAULT NULL,
  `INTELIGENCIA_BONUS` int(6) DEFAULT NULL,
  `VITALIDADE_BONUS` int(6) DEFAULT NULL,
  `DESTREZA_BONUS` int(6) DEFAULT NULL,
  `SORTE_BONUS` int(6) DEFAULT NULL,
  `DURACAO_BONUS` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_atributo_bonus`
--

INSERT INTO `tb_atributo_bonus` (`ID_BONUS`, `NOME_BONUS`, `HP_BONUS`, `MP_BONUS`, `FORCA_BONUS`, `AGILIDADE_BONUS`, `INTELIGENCIA_BONUS`, `VITALIDADE_BONUS`, `DESTREZA_BONUS`, `SORTE_BONUS`, `DURACAO_BONUS`) VALUES
(1, 'Cura fraca', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, '20 vida permanente', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_bolsa`
--

CREATE TABLE `tb_bolsa` (
  `ID_BOLSA` int(6) NOT NULL,
  `ID_PERSONAGEM` int(6) DEFAULT NULL,
  `ID_ITEM` int(6) DEFAULT NULL,
  `ID_EQUIP` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_bolsa`
--

INSERT INTO `tb_bolsa` (`ID_BOLSA`, `ID_PERSONAGEM`, `ID_ITEM`, `ID_EQUIP`) VALUES
(0, 1, 1, NULL),
(1, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_classe`
--

CREATE TABLE `tb_classe` (
  `ID_CLASSE` int(6) UNSIGNED NOT NULL,
  `NOME_CLASSE` varchar(30) NOT NULL,
  `HP_CLASSE` int(6) NOT NULL,
  `MP_CLASSE` int(6) DEFAULT NULL,
  `FORCA_CLASSE` int(6) DEFAULT NULL,
  `AGILIDADE_CLASSE` int(6) DEFAULT NULL,
  `INTELIGENCIA_CLASSE` int(6) DEFAULT NULL,
  `VITALIDADE_CLASSE` int(6) DEFAULT NULL,
  `DESTREZA_CLASSE` int(6) DEFAULT NULL,
  `SORTE_CLASSE` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_classe`
--

INSERT INTO `tb_classe` (`ID_CLASSE`, `NOME_CLASSE`, `HP_CLASSE`, `MP_CLASSE`, `FORCA_CLASSE`, `AGILIDADE_CLASSE`, `INTELIGENCIA_CLASSE`, `VITALIDADE_CLASSE`, `DESTREZA_CLASSE`, `SORTE_CLASSE`) VALUES
(1, 'GUERREIRO', 100, 10, 20, 5, NULL, 20, 20, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_equipamento`
--

CREATE TABLE `tb_equipamento` (
  `ID_EQUIP` int(6) UNSIGNED NOT NULL,
  `NOME_EQUIP` varchar(30) NOT NULL,
  `PRECO_EQUIP` int(6) DEFAULT NULL,
  `DROP_RATE_EQUIP` int(3) DEFAULT NULL,
  `ID_BONUS` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_equipamento`
--

INSERT INTO `tb_equipamento` (`ID_EQUIP`, `NOME_EQUIP`, `PRECO_EQUIP`, `DROP_RATE_EQUIP`, `ID_BONUS`) VALUES
(1, 'Capacete fraco', 50, 5, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_item`
--

CREATE TABLE `tb_item` (
  `ID_ITEM` int(6) UNSIGNED NOT NULL,
  `NOME_ITEM` varchar(30) NOT NULL,
  `PRECO_ITEM` int(6) DEFAULT NULL,
  `ID_BONUS` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_item`
--

INSERT INTO `tb_item` (`ID_ITEM`, `NOME_ITEM`, `PRECO_ITEM`, `ID_BONUS`) VALUES
(1, 'Pocao', 20, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_personagem`
--

CREATE TABLE `tb_personagem` (
  `ID_PERSONAGEM` int(6) UNSIGNED NOT NULL,
  `HP_PERSONAGEM` int(6) NOT NULL,
  `MP_PERSONAGEM` int(6) DEFAULT NULL,
  `FORCA_PERSONAGEM` int(6) DEFAULT NULL,
  `AGILIDADE_PERSONAGEM` int(6) DEFAULT NULL,
  `INTELIGENCIA_PERSONAGEM` int(6) DEFAULT NULL,
  `VITALIDADE_PERSONAGEM` int(6) DEFAULT NULL,
  `DESTREZA_PERSONAGEM` int(6) DEFAULT NULL,
  `SORTE_PERSONAGEM` int(6) DEFAULT NULL,
  `EQUIPAMENTO1_PERSONAGEM` int(6) DEFAULT NULL,
  `EQUIPAMENTO2_PERSONAGEM` int(6) DEFAULT NULL,
  `EQUIPAMENTO3_PERSONAGEM` int(6) DEFAULT NULL,
  `ID_CLASSE` int(6) DEFAULT NULL,
  `NOME_PERSONAGEM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_personagem`
--

INSERT INTO `tb_personagem` (`ID_PERSONAGEM`, `HP_PERSONAGEM`, `MP_PERSONAGEM`, `FORCA_PERSONAGEM`, `AGILIDADE_PERSONAGEM`, `INTELIGENCIA_PERSONAGEM`, `VITALIDADE_PERSONAGEM`, `DESTREZA_PERSONAGEM`, `SORTE_PERSONAGEM`, `EQUIPAMENTO1_PERSONAGEM`, `EQUIPAMENTO2_PERSONAGEM`, `EQUIPAMENTO3_PERSONAGEM`, `ID_CLASSE`, `NOME_PERSONAGEM`) VALUES
(1, 5, 5, 5, 5, 5, 5, 5, 5, 1, NULL, NULL, 1, 'Lula');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_atributo_bonus`
--
ALTER TABLE `tb_atributo_bonus`
  ADD PRIMARY KEY (`ID_BONUS`);

--
-- Indexes for table `tb_bolsa`
--
ALTER TABLE `tb_bolsa`
  ADD PRIMARY KEY (`ID_BOLSA`);

--
-- Indexes for table `tb_classe`
--
ALTER TABLE `tb_classe`
  ADD PRIMARY KEY (`ID_CLASSE`);

--
-- Indexes for table `tb_equipamento`
--
ALTER TABLE `tb_equipamento`
  ADD PRIMARY KEY (`ID_EQUIP`),
  ADD KEY `ID_BONUS` (`ID_BONUS`);

--
-- Indexes for table `tb_item`
--
ALTER TABLE `tb_item`
  ADD PRIMARY KEY (`ID_ITEM`);

--
-- Indexes for table `tb_personagem`
--
ALTER TABLE `tb_personagem`
  ADD PRIMARY KEY (`ID_PERSONAGEM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_atributo_bonus`
--
ALTER TABLE `tb_atributo_bonus`
  MODIFY `ID_BONUS` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_classe`
--
ALTER TABLE `tb_classe`
  MODIFY `ID_CLASSE` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_equipamento`
--
ALTER TABLE `tb_equipamento`
  MODIFY `ID_EQUIP` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_item`
--
ALTER TABLE `tb_item`
  MODIFY `ID_ITEM` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_personagem`
--
ALTER TABLE `tb_personagem`
  MODIFY `ID_PERSONAGEM` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

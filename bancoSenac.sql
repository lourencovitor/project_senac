-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.17 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para senacapp
CREATE DATABASE IF NOT EXISTS `senacapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `senacapp`;

-- Copiando estrutura para tabela senacapp.areas
CREATE TABLE IF NOT EXISTS `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela senacapp.areas: ~0 rows (aproximadamente)
DELETE FROM `areas`;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` (`id`, `description`, `active`, `createdAt`, `updatedAt`) VALUES
	(1, 'Arquitetura e Urbanismo', 1, '2020-02-29 17:51:55', '2020-02-29 17:51:55'),
	(2, 'Certificações em Tecnologia', 1, '2020-02-29 17:52:04', '2020-02-29 17:52:04'),
	(3, 'Desenvolvimento Social', 1, '2020-02-29 17:52:12', '2020-02-29 17:52:12'),
	(4, 'Eventos e Lazer', 1, '2020-02-29 17:52:20', '2020-02-29 17:52:20'),
	(5, 'Limpeza, Conservação e Zeladoria', 1, '2020-02-29 17:52:28', '2020-02-29 17:52:28'),
	(6, 'Meio Ambiente, Segurança e Saúde no Trabalho', 1, '2020-02-29 17:52:59', '2020-02-29 17:52:59'),
	(7, 'Gestão e Negócios', 1, '2020-02-29 15:25:51', '2020-02-29 15:25:53');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;

-- Copiando estrutura para tabela senacapp.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `banner` tinyint(1) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `imagem` varchar(10000) NOT NULL,
  `subArea` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subArea` (`subArea`),
  CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`subArea`) REFERENCES `subareas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela senacapp.cursos: ~0 rows (aproximadamente)
DELETE FROM `cursos`;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`id`, `description`, `url`, `banner`, `ativo`, `imagem`, `subArea`, `createdAt`, `updatedAt`) VALUES
	(1, 'Cores para ambientes', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=28108&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:13:56', '2020-02-29 18:13:56'),
	(2, 'Cores para ambientes', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25052&template=395.dwt&testeira=367&unit=TIT', 0, 1,'' , 1, '2020-02-29 18:14:51', '2020-02-29 18:14:51'),
	(3, 'Decoração de Ambientes', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27944&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:15:23', '2020-02-29 18:15:23'),
	(4, 'Desenho Técnico', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=28167&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:15:38', '2020-02-29 18:15:38'),
	(5, 'Desenho Universal - acessibilidade para uma arquitetura inclusiva', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=2744&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:16:04', '2020-02-29 18:16:04'),
	(6, 'Gestão de Escritórios de Arquitetura e Design', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=3571&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:16:23', '2020-02-29 18:16:23'),
	(7, 'Iluminação Residencial', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=659&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:16:37', '2020-02-29 18:16:37'),
	(8, 'Introdução ao Paisagismo', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=2547&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:16:54', '2020-02-29 18:16:54'),
	(9, 'Jardinagem: formação básica', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27868&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:17:10', '2020-02-29 18:17:10'),
	(10, 'Paisagismo - técnicas e projeto', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=875&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:17:26', '2020-02-29 18:17:26'),
	(11, 'Perspectiva a Mão Livre', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=2104&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:17:44', '2020-02-29 18:17:44'),
	(12, 'Planejamento para Acompanhamento de Obras de Design de Interiores', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=660&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:18:02', '2020-02-29 18:18:02'),
	(13, 'Vitrinismo Básico para o Varejo', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=644&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:18:19', '2020-02-29 18:18:19'),
	(14, 'Vitrinista', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26427&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 1, '2020-02-29 18:18:34', '2020-02-29 18:18:34'),
	(15, 'Instalação, Armazenamento e Computação com Windows Server 2016', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26792&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 2, '2020-02-29 18:18:54', '2020-02-29 18:18:54'),
	(16, 'Redes com o Windows Server 2016', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26793&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 2, '2020-02-29 18:19:36', '2020-02-29 18:19:36'),
	(17, 'Identidade com o Windows Server 2016', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26798&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 2, '2020-02-29 18:19:51', '2020-02-29 18:19:51'),
	(18, 'Certificação Linux LPI Nível 2 - LPIC2', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27883&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 2, '2020-02-29 18:20:10', '2020-02-29 18:20:10'),
	(19, 'Data Cabling System', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27885&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 2, '2020-02-29 18:20:27', '2020-02-29 18:20:27'),
	(20, 'Fcp - Furukawa Certified Professional', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27879&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 2, '2020-02-29 18:21:05', '2020-02-29 18:21:05'),
	(21, 'Formação Furukawa - FCP', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27878&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 2, '2020-02-29 18:21:35', '2020-02-29 18:21:35'),
	(22, 'Formação Mcsa Windows Server 2016', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26791&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 2, '2020-02-29 18:21:52', '2020-02-29 18:21:52'),
	(23, 'Furukawa Certified Professional Fibras Ópticas (turmas a Partir de 2020)', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27881&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 2, '2020-02-29 18:22:19', '2020-02-29 18:22:19'),
	(24, 'Furukawa Certified Professional Master', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27877&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 2, '2020-02-29 18:22:38', '2020-02-29 18:22:38'),
	(25, 'Agente de Projetos Sociais', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27268&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 3, '2020-02-29 18:23:04', '2020-02-29 18:23:04'),
	(26, 'Educador Social', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26987&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 3, '2020-02-29 18:23:20', '2020-02-29 18:23:20'),
	(27, 'Organizador de Eventos', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25428&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 4, '2020-02-29 18:23:49', '2020-02-29 18:23:49'),
	(28, 'Jardineiro', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=23307&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 5, '2020-02-29 18:24:12', '2020-02-29 18:24:12'),
	(29, 'Porteiro e Vigia', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=23252&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 5, '2020-02-29 18:24:33', '2020-02-29 18:24:33'),
	(30, 'Assistência Técnica para Perícias de Insalubridade e Periculosidade', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24808&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 6, '2020-02-29 18:27:11', '2020-02-29 18:27:11'),
	(31, 'Estratégias para Elaboração do PPRA', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25996&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 6, '2020-02-29 18:27:25', '2020-02-29 18:27:25'),
	(32, 'NR 35 - Segurança no Trabalho em Altura', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=20152&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 6, '2020-02-29 18:27:45', '2020-02-29 18:27:45'),
	(33, 'Segurança em Instalações e Serviços com Eletricidade - NR10 - básico', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=2083&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 6, '2020-02-29 18:28:05', '2020-02-29 18:28:05'),
	(35, 'Administração Financeira', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24217&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 18:29:31', '2020-02-29 18:29:31'),
	(36, 'Administração de Armazenagem', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26775&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 18:29:53', '2020-02-29 18:29:53'),
	(37, 'Administração de Contas a Pagar, Receber e Tesouraria', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24216&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 18:30:09', '2020-02-29 18:30:09'),
	(38, 'Administração e Planejamento da Produção', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=22910&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 18:30:32', '2020-02-29 18:30:32'),
	(39, 'Analista Fiscal', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24429&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 18:30:48', '2020-02-29 18:30:48'),
	(40, 'Analista de Marketing em Mídias Sociais', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25687&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 18:31:05', '2020-02-29 18:31:05'),
	(41, 'Assistente Administrativo', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=28089&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:34:48', '2020-02-29 20:34:48'),
	(42, 'Assistente de Pessoal', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26848&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:35:07', '2020-02-29 20:35:07'),
	(43, 'Atendimento ao Cliente', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25148&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:35:21', '2020-02-29 20:35:21'),
	(44, 'Auxiliar de Escritório', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25115&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:35:36', '2020-02-29 20:35:36'),
	(45, 'Auxiliar de Operações em Logística', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=18300&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:35:49', '2020-02-29 20:35:49'),
	(46, 'Cargos e Salários', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25096&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:36:04', '2020-02-29 20:36:04'),
	(47, 'Classificação Fiscal de Mercadorias', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27587&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:36:23', '2020-02-29 20:36:23'),
	(48, 'Compras e Administração de Materiais', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=22911&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:36:37', '2020-02-29 20:36:37'),
	(49, 'Desenvolvimento de Liderança', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=28049&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:36:51', '2020-02-29 20:36:51'),
	(50, 'Escrituração Fiscal', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24218&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:37:10', '2020-02-29 20:37:10'),
	(51, 'Estratégias de Marketing Digital e E-Commerce', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=2746&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:37:25', '2020-02-29 20:37:25'),
	(52, 'Formação de Analista de Recursos Humanos', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25212&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:37:50', '2020-02-29 20:37:50'),
	(53, 'Gestão Fiscal - Substituição Tributária do ICMS', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24430&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:38:06', '2020-02-29 20:38:06'),
	(54, 'Gestão e Supervisão de Vendas', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27907&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:38:19', '2020-02-29 20:38:19'),
	(55, 'Indicadores de Recursos Humanos', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26770&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:38:42', '2020-02-29 20:38:42'),
	(56, 'Introdução à Administração de Pequenas e Médias Empresas', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25035&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:39:00', '2020-02-29 20:39:00'),
	(57, 'Introdução à Administração de Pessoa', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26771&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:39:46', '2020-02-29 20:39:46'),
	(58, 'Introdução à Administração de Recursos Humanos', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25105&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:40:05', '2020-02-29 20:40:05'),
	(59, 'Logística de Transportes', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=22896&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:40:18', '2020-02-29 20:40:18'),
	(60, 'Logística, Marketing e Vendas', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24223&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:40:32', '2020-02-29 20:40:32'),
	(61, 'Marketing: ferramentas, modelos e estratégias para a inovação', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=28056&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:40:50', '2020-02-29 20:40:50'),
	(62, 'Marketing: planejamento e estratégias', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27909&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:42:59', '2020-02-29 20:42:59'),
	(63, 'Matemática Financeira com HP 12C', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25003&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:43:15', '2020-02-29 20:43:15'),
	(64, 'Plano de Negócios na Prática', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=28191&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:43:29', '2020-02-29 20:43:29'),
	(65, 'Prospecção de Clientes - identifique seus clientes potenciais', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=28109&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:43:47', '2020-02-29 20:43:47'),
	(66, '3ds Max - introdução e modelagem', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27937&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:44:01', '2020-02-29 20:44:01'),
	(67, '3ds Max e V-ray - Realidade Virtual', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27936&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:44:18', '2020-02-29 20:44:18'),
	(68, 'Administrador de Redes', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25005&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:44:34', '2020-02-29 20:44:34'),
	(69, 'After Effects Cc - Finalização e Efeitos para Vídeo', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=22871&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:44:48', '2020-02-29 20:44:48'),
	(70, 'After Effects e Premiere Cc - Edição, Motion e Efeitos para Vídeo', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24208&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:45:05', '2020-02-29 20:45:05'),
	(71, 'AutoCAD - Projetos em 2D', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27891&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:45:25', '2020-02-29 20:45:25'),
	(72, 'AutoCAD - modelando em 3D', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27893&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:45:40', '2020-02-29 20:45:40'),
	(73, 'Autocad - Professional', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27892&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:45:57', '2020-02-29 20:45:57'),
	(74, 'Business Intelligence com Excel', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27788&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:46:13', '2020-02-29 20:46:13'),
	(75, 'Básico em Computação - Windows e Office 2019', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27929&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:46:28', '2020-02-29 20:46:28'),
	(76, 'Cadista para Construção Civil', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=19840&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:46:45', '2020-02-29 20:46:45'),
	(77, 'Coreldraw - ilustração digital', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27494&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:47:01', '2020-02-29 20:47:01'),
	(78, 'Criando Publicações Digitais - Epub', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27467&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:47:16', '2020-02-29 20:47:16'),
	(79, 'Desenvolvedor Web - Ux Design', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26208&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:47:33', '2020-02-29 20:47:33'),
	(80, 'Desenvolvimento de Jogos Digitais em Unity', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27668&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:47:55', '2020-02-29 20:47:55'),
	(81, 'Excel - Automação de Planilhas com Macros', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27935&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:48:11', '2020-02-29 20:48:11'),
	(82, 'Excel - Criando Planilhas Interativas e Dashboard', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27488&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:48:26', '2020-02-29 20:48:26'),
	(83, 'Excel - Ferramentas para Análise', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27950&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:48:41', '2020-02-29 20:48:41'),
	(84, 'Excel 2019', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27927&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:48:58', '2020-02-29 20:48:58'),
	(85, 'Excel 2019 - avançado', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27928&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:49:12', '2020-02-29 20:49:12'),
	(86, 'Excel com Vba', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27493&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:49:30', '2020-02-29 20:49:30'),
	(87, 'Formação Editoração - Photoshop, CorelDRAW e InDesign', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27489&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:49:45', '2020-02-29 20:49:45'),
	(88, 'Formação Editoração - Photoshop, Illustrator e Indesign', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26014&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:50:04', '2020-02-29 20:50:04'),
	(89, 'Formação em Hardware', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26028&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:50:17', '2020-02-29 20:50:17'),
	(90, 'Game Design Utilizando Jogos Analógicos', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24709&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:50:36', '2020-02-29 20:50:36'),
	(91, 'Games 2d - Jogos para Dispositivos Móveis', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24049&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:50:49', '2020-02-29 20:50:49'),
	(92, 'Html5 e Css3 - Criação de Websites', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27491&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:51:03', '2020-02-29 20:51:03'),
	(93, 'Illustrator - Ilustração Digital', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26006&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:51:22', '2020-02-29 20:51:22'),
	(94, 'Implantação de Rede Local com Windows', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26031&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:51:36', '2020-02-29 20:51:36'),
	(95, 'Indesign - Editoração Eletrônica', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25998&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:51:54', '2020-02-29 20:51:54'),
	(96, 'Instalador e Reparador de Redes de Computadores', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24994&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:52:17', '2020-02-29 20:52:17'),
	(97, 'Introdução ao Office - Word, Excel e Powerpoint 2019', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27932&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:52:31', '2020-02-29 20:52:31'),
	(98, 'Introdução à Linguagem Java', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24187&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:52:45', '2020-02-29 20:52:45'),
	(99, 'Lógica de Programação', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=22882&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:52:58', '2020-02-29 20:52:58'),
	(100, 'Lógica de Programação Direcionada a Php', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24186&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:53:15', '2020-02-29 20:53:15'),
	(101, 'Manutenção de Micro e Implantação de Rede Local', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26030&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:53:40', '2020-02-29 20:53:40'),
	(102, 'Manutenção de Microcomputadores', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26027&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:54:05', '2020-02-29 20:54:05'),
	(103, 'Manutenção em Impressoras - Jato de Tinta', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26029&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 20:54:26', '2020-02-29 20:54:26'),
	(104, 'Minecraft: Lógica de Programação', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27647&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:08:05', '2020-02-29 21:08:05'),
	(105, 'Montador e Reparador de Computadores', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24997&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:08:22', '2020-02-29 21:08:22'),
	(106, 'Montagem e Manutenção de Computadores Portáteis', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24062&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:08:47', '2020-02-29 21:08:47'),
	(107, 'Montagem e Manutenção de Equipamentos Apple - Imac', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27884&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:09:03', '2020-02-29 21:09:03'),
	(108, 'Ms Project 2019 - Ferramenta de Planejamento e Gestão de Projetos', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27930&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:09:18', '2020-02-29 21:09:18'),
	(109, 'Ms Project 2019 Avançado - Ferramenta de Planejamento e Gestão de Projetos', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27931&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:09:33', '2020-02-29 21:09:33'),
	(110, 'Operador de Computador', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=22387&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:09:47', '2020-02-29 21:09:47'),
	(111, 'Operador de Editoração Eletrônica', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=18321&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:10:04', '2020-02-29 21:10:04'),
	(112, 'Photoshop - Pintura Digital', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26749&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:10:20', '2020-02-29 21:10:20'),
	(113, 'Photoshop - Tratamento de Imagem', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26005&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:10:39', '2020-02-29 21:10:39'),
	(114, 'Photoshop e Coreldraw - Tratamento de Imagem e Ilustração Digital', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27490&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:10:55', '2020-02-29 21:10:55'),
	(115, 'Photoshop e Illustrator - Tratamento de Imagem e Ilustração Digital', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26012&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:11:16', '2020-02-29 21:11:16'),
	(116, 'Php - Orientação a Objetos', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25647&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:11:30', '2020-02-29 21:11:30'),
	(117, 'Php com Mysql', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24215&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:11:46', '2020-02-29 21:11:46'),
	(118, 'Premiere Pro Cc - Edição e Finalização de Vídeo', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=22925&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:12:02', '2020-02-29 21:12:02'),
	(119, 'Produção de Websites - Interface e Estrutura', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27495&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:12:16', '2020-02-29 21:12:16'),
	(120, 'Programador Web', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24214&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:12:34', '2020-02-29 21:12:34'),
	(121, 'Programador de Dispositivos Móveis', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24107&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:12:52', '2020-02-29 21:12:52'),
	(122, 'Programador de Sistemas', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=6160&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:13:05', '2020-02-29 21:13:05'),
	(123, 'Programação com Arduino', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24099&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:13:19', '2020-02-29 21:13:19'),
	(124, 'Revit - Modelagem Bim de Projetos Arquitetônicos', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27951&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:13:35', '2020-02-29 21:13:35'),
	(125, 'Revit Avançado - Projetos Executivos', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27933&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:13:52', '2020-02-29 21:13:52'),
	(126, 'Sketchup Pro', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=26807&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:14:08', '2020-02-29 21:14:08'),
	(127, 'V-ray para Sketchup Pro - Renderização de Maquete Eletrônica', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=27790&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:14:24', '2020-02-29 21:14:24'),
	(128, 'Web Designer', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=24117&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:14:43', '2020-02-29 21:14:43'),
	(129, 'Wordpress - Gerenciamento de Sites', 'https://www.sp.senac.br/jsp/default.jsp?newsID=DYNAMIC,oracle.br.dataservers.CourseDataServer,selectCourse&course=25034&template=395.dwt&testeira=367&unit=TIT', 0, 1, '', 7, '2020-02-29 21:14:59', '2020-02-29 21:14:59');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Copiando estrutura para tabela senacapp.subareas
CREATE TABLE IF NOT EXISTS `subareas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `area` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `area` (`area`),
  CONSTRAINT `subareas_ibfk_1` FOREIGN KEY (`area`) REFERENCES `areas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela senacapp.subareas: ~0 rows (aproximadamente)
DELETE FROM `subareas`;
/*!40000 ALTER TABLE `subareas` DISABLE KEYS */;
INSERT INTO `subareas` (`id`, `description`, `active`, `area`, `createdAt`, `updatedAt`) VALUES
	(1, 'Arquitetura e Urbanismo', 1, 1, '2020-02-29 17:59:12', '2020-02-29 17:59:12'),
	(2, 'Certificações em Tecnologia', 1, 2, '2020-02-29 17:59:21', '2020-02-29 17:59:21'),
	(3, 'Desenvolvimento Social', 1, 3, '2020-02-29 17:59:29', '2020-02-29 17:59:29'),
	(4, 'Eventos e Lazer', 1, 4, '2020-02-29 17:59:39', '2020-02-29 17:59:39'),
	(5, 'Limpeza, Conservação e Zeladoria', 1, 5, '2020-02-29 18:00:08', '2020-02-29 18:00:08'),
	(6, 'Meio Ambiente, Segurança e Saúde no Trabalho', 1, 6, '2020-02-29 18:00:21', '2020-02-29 18:00:21'),
	(7, 'Gestão e Negócios', 1, 7, '2020-02-29 15:29:25', '2020-02-29 15:29:25');
/*!40000 ALTER TABLE `subareas` ENABLE KEYS */;

-- Copiando estrutura para tabela senacapp.update_passwords
CREATE TABLE IF NOT EXISTS `update_passwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creationDate` datetime NOT NULL,
  `key` varchar(50) NOT NULL,
  `useDate` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  CONSTRAINT `update_passwords_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela senacapp.update_passwords: ~0 rows (aproximadamente)
DELETE FROM `update_passwords`;
/*!40000 ALTER TABLE `update_passwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `update_passwords` ENABLE KEYS */;

-- Copiando estrutura para tabela senacapp.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela senacapp.users: ~0 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Aug 29, 2020 at 02:08 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `sub-title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `status` enum('true','false') NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `subject`, `sub-title`, `detail`, `image`, `tag`, `status`, `updated_at`, `created_at`) VALUES
(1, 'html คืออะไร', 'ภาษาที่ใช้ในการเขียนเว็บเพจ โดยใช้ tag ในการกำหนดการแสดงผล ', '<h2><strong>html คืออะไร</strong></h2>\r\n\r\n<p style=\"margin-left:40px\">html5&nbsp;คือ ภาษามาร์กอัปที่ใช้สำหรับเขียน website &nbsp;ซึ่ง&nbsp;html5&nbsp;นี้เป็นภาษาที่ถูกพัฒนาต่อมาจากภาษา html และพัฒนาขึ้นมาโดย WHATWG (The Web Hypertext Application Technology Working Group) โดยได้มีการปรับเพิ่ม Feature หลายๆอย่างเข้ามาเพื่อให้ผู้พัฒนาสามารถใช้งานได้ง่ายมากยิ่งขึ้น</p>\r\n\r\n<h2><strong>ข้อดีของ html5</strong></h2>\r\n\r\n<ol>\r\n	<li>เว็บไซต์ที่สร้างจากภาษา&nbsp;html5&nbsp;สามารถแสดงผลได้กับทุก web browser&nbsp;</li>\r\n	<li>html5&nbsp;จะช่วยลดการใช้พวกปลั๊กอินพิเศษอย่างพวก Adobe Flash, Microsoft Silverlight, Apache Pivot สนับสนุน วิดีโอ และ องค์ประกอบเสียง รวมทั้ง สื่อมัลติมีเดียต่างๆมากขึ้น โดยไม่ต้องใช้ Flash</li>\r\n	<li>มีการจัดการข้อผิดพลาดที่ดีขึ้น</li>\r\n	<li>สคริปต์ใหม่ ที่จะมาแทนที่สคริปต์เดิม (เขียนโค้ดสั้นลง)</li>\r\n	<li>html5&nbsp;มีความเป็นอิสระสูง (คล้ายๆ XML )</li>\r\n	<li>html5&nbsp;ทำงานควบคู่กับ CSS3 ได้ดี ช่วยให้สามารถเพิ่มลูกเล่นต่างๆบนเว็บไซต์ได้สวยงามมากยิ่งขึ้น (CSS คือส่วนแสดงผล ที่นักออกแบบสามารถกำหนดสีสัน ตำแหน่ง ลักษณะเวลานำเมาส์ไปแหย่แล้วมีกระต่ายโผล่ออกมาจากโพรง หรือจับก้อนวัตถุในหน้าเว็บฯ ให้ชิดซ้ายชิดขวา ส่วน CSS3 คือเวอร์ชั่นที่ 3 ของ CSS )</li>\r\n</ol>\r\n\r\n<h2><strong>Features ใหม่ๆ ของ html5</strong></h2>\r\n\r\n<ol>\r\n	<li>Semantic Markup : การเพิ่ม Element ที่ อ่านง่ายมากขึ้น และช่วยให้ เราทำ SEO ได้มีประสิทธิภาพมากยิ่งขึ้น</li>\r\n	<li>Form Enhancements : เพิ่มความสามารถของ Form ต่างๆ ไม่ว่าจะเป็น Input type, Attribute หรือ แม้แต่ Element</li>\r\n	<li>Audio / Video: รองรับการอ่านไฟล์เสียง และ วีดีโอ โดยไม่จำเป็นต้องใช้ Embed Code ของ Third Party</li>\r\n	<li>Canvas : ใช้ในการวาดรูป โดยจำเป็นต้องใช้ Javascriptช่วย</li>\r\n	<li>ContentEditable : สามารถแก้ไข Content ได้โดยตรงผ่านทางหน้าเว็บ</li>\r\n	<li>Drag and Drop : ลากวางObject ได้ เพื่อเพิ่มการ ตอบสนองระหว่างระบบกับผู้ใช้</li>\r\n	<li>Persistent Data Storage : มีการจัดการที่ดีขึ้น โดยเก็บข้อมูลลงบนเครื่องของผู้ใช้&nbsp;</li>\r\n</ol>\r\n', 'blog1.gif', 'all,html', 'true', '2020-08-23 00:00:00', '2020-08-23 00:00:00'),
(2, 'MySQL คืออะไร', 'MySQL คือ โปรแกรมระบบจัดการฐานข้อมูล ที่พัฒนาโดยบริษัท MySQL AB มีหน้าที่เก็บข้อมูลอย่างเป็นระบบ รองรับคำสั่ง SQL เป็นเครื่องมือสำหรับเก็บข้อมูล', '<h2><strong>MySQL&nbsp;คืออะไร</strong></h2>\r\n\r\n<p style=\"margin-left:40px\">MySQL&nbsp;คือ โปรแกรมระบบจัดการฐานข้อมูล ที่พัฒนาโดยบริษัท MySQL AB มีหน้าที่เก็บข้อมูลอย่างเป็นระบบ รองรับคำสั่ง SQL เป็นเครื่องมือสำหรับเก็บข้อมูล ที่ต้องใช้ร่วมกับเครื่องมือหรือโปรแกรมอื่นอย่างบูรณาการ เพื่อให้ได้ระบบงานที่รองรับ ความต้องการของผู้ใช้ เช่นทำงานร่วมกับเครื่องบริการเว็บ (Web Server) เพื่อให้บริการแก่ภาษาสคริปต์ที่ทำงานฝั่งเครื่องบริการ (Server-Side Script) เช่น ภาษา php ภาษา aps.net หรือภาษาเจเอสพี เป็นต้น หรือทำงานร่วมกับโปรแกรมประยุกต์ (Application Program) เช่น ภาษาวิชวลเบสิกดอทเน็ต ภาษาจาวา หรือภาษาซีชาร์ป เป็นต้น โปรแกรมถูกออกแบบให้สามารถทำงานได้บนระบบปฏิบัติการที่หลากหลาย และเป็นระบบฐานข้อมูลโอเพนทซอร์ท (Open Source)ที่ถูกนำไปใช้งานมากที่สุด</p>\r\n\r\n<p style=\"margin-left:40px\">MySQL : มายเอสคิวแอล&nbsp;เป็นระบบจัดการฐานข้อมูลโดยใช้ภาษา SQL. แม้ว่า MySQL เป็นซอฟต์แวร์โอเพนซอร์ส แต่แตกต่างจากซอฟต์แวร์โอเพนซอร์สทั่วไป โดยมีการพัฒนาภายใต้บริษัท MySQL AB ในประเทศสวีเดน โดยจัดการ MySQL ทั้งในแบบที่ให้ใช้ฟรี และแบบที่ใช้ในเชิงธุรกิจ</p>\r\n\r\n<p style=\"margin-left:40px\">MySQL&nbsp;สร้างขึ้นโดยชาวสวีเดน 2 คน และชาวฟินแลนด์ ชื่อ David Axmark, Allan Larsson และ Michael &quot;Monty&quot; Widenius.</p>\r\n\r\n<p style=\"margin-left:40px\">ปัจจุบันบริษัทซันไมโครซิสเต็มส์ (Sun Microsystems, Inc.) เข้าซื้อกิจการของ MySQL AB เรียบร้อยแล้ว ฉะนั้นผลิตภัณฑ์ภายใต้ MySQL AB ทั้งหมดจะตกเป็นของซัน</p>\r\n\r\n<p style=\"margin-left:40px\">ชื่อ&nbsp;&quot;MySQL&quot;&nbsp;อ่านออกเสียงว่า &quot;มายเอสคิวเอล&quot; หรือ &quot;มายเอสคิวแอล&quot; (ในการอ่านอักษร L ในภาษาไทย) ซึ่งทางซอฟต์แวร์ไม่ได้อ่าน มายซีเควล หรือ มายซีควล เหมือนกับซอฟต์แวร์จัดการฐานข้อมูลตัวอื่น</p>\r\n\r\n<h2><strong>ความสามารถและการทำงานของโปรแกรม MySQL มีดังต่อไปนี้</strong></h2>\r\n\r\n<p style=\"margin-left:40px\"><strong>MySQL ถือเป็นระบบจัดการฐานข้อมูล (DataBase Management System (DBMS)</strong></p>\r\n\r\n<p style=\"margin-left:40px\">ฐานข้อมูลมีลักษณะเป็นโครงสร้างของการเก็บรวบรวมข้อมูล การที่จะเพิ่มเติม เข้าถึงหรือประมวลผลข้อมูลที่เก็บในฐานข้อมูลจำเป็นจะต้องอาศัยระบบจัดการ ฐานข้อมูล ซึ่งจะทำหน้าที่เป็นตัวกลางในการจัดการกับข้อมูลในฐานข้อมูลทั้งสำหรับการ ใช้งานเฉพาะ และรองรับการทำงานของแอพลิเคชันอื่นๆ ที่ต้องการใช้งานข้อมูลในฐานข้อมูล เพื่อให้ได้รับความสะดวกในการจัดการกับข้อมูลจำนวนมาก MySQL ทำหน้าที่เป็นทั้งตัวฐานข้อมูลและระบบจัดการฐานข้อมูล</p>\r\n\r\n<p style=\"margin-left:40px\">MySQL เป็นระบบจัดการฐานข้อมูลแบบ relational</p>\r\n\r\n<p style=\"margin-left:40px\">ฐานข้อมูลแบบ relational จะทำการเก็บข้อมูลทั้งหมดในรูปแบบของตารางแทนการเก็บข้อมูลทั้งหมดลงในไฟล์ เพียงไฟล์เดียว ทำให้ทำงานได้รวดเร็วและมีความยืดหยุ่น นอกจากนั้น แต่ละตารางที่เก็บข้อมูลสามารถเชื่อมโยงเข้าหากันทำให้สามารถรวมหรือจัด กลุ่มข้อมูลได้ตามต้องการ โดยอาศัยภาษา SQL ที่เป็นส่วนหนึ่งของโปรแกรม MySQL ซึ่งเป็นภาษามาตรฐานในการเข้าถึงฐานข้อมูล</p>\r\n\r\n<p style=\"margin-left:40px\">MySQL แจกจ่ายให้ใช้งานแบบ Open Source&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">นั่นคือ ผู้ใช้งาน MySQL ทุกคนสามารถใช้งานและปรับแต่งการทำงานได้ตามต้องการ สามารถดาวน์โหลดโปรแกรม MySQL ได้จากอินเทอร์เน็ตและนำมาใช้งานโดยไม่มีค่าใช้จ่ายใดๆ</p>\r\n\r\n<p style=\"margin-left:40px\">ในระบบปฏิบัติการ Red Hat Linux นั้น มีโปรแกรมที่สามารถใช้งานเป็นฐานข้อมูลให้ผู้ดูแลระบบสามารถเลือกใช้งานได้ หลายโปรแกรม เช่น MySQL และ PostgreSQL ผู้ดูแลระบบสามารถเลือกติดตั้งได้ทั้งในขณะที่ติดตั้งระบบปฏิบัติการ Red Hat Linux หรือจะติดตั้งภายหลังจากที่ติดตั้งระบบปฏิบัติการก็ได้ อย่างไรก็ตาม สาเหตุที่ผู้ใช้งานจำนวนมากนิยมใช้งานโปรแกรม MySQL คือ MySQL สามารถทำงานได้อย่างรวดเร็ว น่าเชื่อถือและใช้งานได้ง่าย เมื่อเปรียบเทียบประสิทธิภาพในการทำงานระหว่างโปรแกรม MySQL และ PostgreSQL โดยพิจารณาจากการประมวลผลแต่ละคำสั่งได้ผลลัพธ์ดังรูปที่ 1 นอกจากนั้น MySQL ถูกออกแบบและพัฒนาขึ้นมาเพื่อทำหน้าเป็นเครื่องให้บริการรองรับการจัดการกับ ฐานข้อมูลขนาดใหญ่ ซึ่งการพัฒนายังคงดำเนินอยู่อย่างต่อเนื่อง ส่งผลให้มีฟังก์ชันการทำงานใหม่ๆ ที่อำนวยความสะดวกแก่ผู้ใช้งานเพิ่มขึ้นอยู่ตลอดเวลา รวมไปถึงการปรับปรุงด้านความต่อเนื่อง ความเร็วในการทำงาน และความปลอดภัย ทำให้ MySQL เหมาะสมต่อการนำไปใช้งานเพื่อเข้าถึงฐานข้อมูลบนเครือข่ายอินเทอร์เน็ต</p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;</p>\r\n\r\n<h3>ข้อมูลอ้างอิง&nbsp;</h3>\r\n\r\n<h6><span style=\"font-size:8px\"><a href=\"http://th.easyhostdomain.com/dedicated-servers/mysql.html\">http://th.easyhostdomain.com/dedicated-servers/mysql.html</a></span></h6>\r\n', 'blog2.gif', 'all,mysql', 'true', '2020-08-23 00:00:00', '2020-08-23 00:00:00'),
(3, 'CSS คืออะไร', 'Css คือ ภาษาที่ใช้เป็นส่วนของการจัดรูปแบบการแสดงผลเอกสาร  HTML โดยที่ CSS กำหนดกฏเกณฑ์ในการระบุรูปแบบ (หรือ \"Style\") ของเนื้อหาในเอกสาร', '<h2><strong>CSS คืออะไร ? มีประโยชน์อย่างไรบ้าง</strong></h2>\r\n\r\n<p style=\"margin-left:40px\">&nbsp; &nbsp; &nbsp; &nbsp;สำหรันนักเขียนโปรแกรมบนเว็บไซต์หรือสำหรับคนที่ต้องประกอบเว็บไซต์จากรูปภาพที่ถูกออกแบบไว้ คงต้องมีความรู้กับ CSS เป็นหลัก เพราะเนื่องจากจะใช้จัดสัดส่วน Layout ของเว็บแล้วยังสามารถใช้กำหนดส่วนต่างๆของเว็บไซต์ไว้อีกด้วย แม้แต่ในการทำ SEO ก็ยังนับว่าเป็นส่วนสำคัญที่ Google ให้คะแนนของเว็บไซต์ของคุณให้ติดอันดับแรกๆของผลกาารค้นหาบน Search Engine</p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp; &nbsp; &nbsp; &nbsp;การจัดทำเว็บไซต์ที่มีประสิทธิภาพต้องมีการวางแผนและการออกแบบระบบที่ดี &nbsp;โดยในยุคแรก ๆ จะใช้ภาษา HTML&nbsp;ในการจัดทำระบบการแสดงผลทางด้านโครงสร้างและข้อมูลของเว็บ &nbsp;แต่ปัจจุบันมีการพัฒนามาจนถึง&nbsp;HTML5&nbsp;&nbsp;และยังมีการพัฒนาภาษาที่ใช้เพื่อกำหนดรูปแบบการแสดงผลทางหน้าเว็บไซต์ที่หลากหลายและมีความยืดหยุ่น &nbsp;เช่น สีอักษร สีพิ้นหลัง ขนาดตัวอักษร จัดการเลย์เอ้าท์ ให้สวยงามและอื่นๆ ซึ่งนั้นก็คือ&nbsp;CSS หรือ Style Sheets&nbsp;และในความหมายของทางโปรแกรมเมอร์นั้น คือ โครงสร้างการแสดงผลของหน้าตาเว็บไซต์&nbsp;</p>\r\n\r\n<h2><strong>CSS คืออะไร</strong></h2>\r\n\r\n<p style=\"margin-left:40px\">&nbsp; &nbsp; &nbsp;CSS ย่อมาจาก Cascading Style Sheet&nbsp;&nbsp;มักเรียกโดยย่อว่า&nbsp;&quot;สไตล์ชีต&quot;&nbsp;คือภาษาที่ใช้เป็นส่วนของการจัดรูปแบบการแสดงผลเอกสาร &nbsp;HTML โดยที่ CSS กำหนดกฏเกณฑ์ในการระบุรูปแบบ (หรือ &quot;Style&quot;) ของเนื้อหาในเอกสาร อันได้แก่ สีของข้อความ สีพื้นหลัง ประเภทตัวอักษร และการจัดวางข้อความ ซึ่งการกำหนดรูปแบบ หรือ Style นี้ใช้หลักการของการแยกเนื้อหาเอกสาร HTML ออกจากคำสั่งที่ใช้ในการจัดรูปแบบการแสดงผล กำหนดให้รูปแบบของการแสดงผลเอกสาร ไม่ขึ้นอยู่กับเนื้อหาของเอกสาร เพื่อให้ง่ายต่อการจัดรูปแบบการแสดงผลลัพธ์ของเอกสาร HTML โดยเฉพาะในกรณีที่มีการเปลี่ยนแปลงเนื้อหาเอกสารบ่อยครั้ง หรือต้องการควบคุมให้รูปแบบการแสดงผลเอกสาร HTML มีลักษณะของความสม่ำเสมอทั่วกันทุกหน้าเอกสารภายในเว็บไซต์เดียวกัน &nbsp;โดยกฏเกณฑ์ในการกำหนดรูปแบบ (Style) เอกสาร HTML ถูกเพิ่มเข้ามาครั้งแรกใน HTML 4.0 &nbsp;เมื่อปีพ.ศ. 2539 ในรูปแบบของ CSS level 1 Recommendations ที่กำหนดโดย องค์กร World Wide Web Consortium หรือ W3C</p>\r\n\r\n<h2><strong>CSS มีประโยชน์อย่างไร</strong></h2>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ภาษา CSS (Cascading Style Sheets) มีประโยชน์หลายอย่างเลยทีเดียวซึ่งทำให้การพัฒนาเว็บเพจด้วยภาษา HTML เป็นเรื่องที่ง่ายมากขึ้น</strong></p>\r\n\r\n<ol>\r\n	<li>ภาษา CSS จะช่วยในการจัดรูปแบบแสดงผลให้กับภาษา HTML ซึ่งจะช่วยลดการใช้ภาษา HTML ให้น้อยลง โดยเหลือเพียงแต่ส่วนที่เป็นเอกสารที่เป็นภาษา HTML เท่านั้นทำให้มีการแก้ไขและทำความเข้าใจได้ง่ายขึ้น</li>\r\n	<li>ทำให้ขนาดไฟล์ HTML น้อยลงเนื่องจาก ภาษา CSS จะช่วยลงการใช้ภาษา HTML ลงทำให้ขนาดไฟล์นั้นก็เล็กลงไปด้วยเช่นกัน</li>\r\n	<li>ภาษา CSS เป็นภาษา Style Sheets โดย Style Sheets ชุดเดียวสามารถใช้กำหนดรูปแบบการแสดงผลให้เอกสาร HTML ทั้งหน้า หรือทุกหน้ามีผลเหมือนกันได้ จึงทำให้เวลาที่มีการแก้ไขก็จะแก้ไขได้ง่ายขึ้นเพียงแก้ไข Style Sheets ที่ใช้งานเพียงชุดเดียวเท่านั้น</li>\r\n	<li>ทำให้เว็บไซต์มีมาตราฐานเพราะการใช้งาน CSS นั้นจะทำให้การแสดงผลในสื่อต่าง ๆ ถูกปรับเปลี่ยนไปได้อย่างเหมาะสม เช่น &nbsp;การแสดงผลบนหน้าจอ และการแสดงผลในมือถือ</li>\r\n	<li>CSS สามารถที่จะใช้งานได้หลากหลาย เว็บบราวเซอร์ ทำให้การใช้งานนั้นสะดวกมากยิ่งขึ้น</li>\r\n	<li>CSS สามารถกำหนดแยกไว้ต่างหากจากไฟล์เอกสาร HTML และสามารถนำมาใช้ร่วม กับเอกสารหลายไฟล์ได้ การแก้ไขก็แก้เพียง จุดเดียวก็มีผลกับเอกสารทั้งหมด</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:40px\">&nbsp; &nbsp; CSS&nbsp;กับ&nbsp;HTML&nbsp;นั้นทำหน้าที่คนละอย่างกัน โดย HTMLจะทำหน้าที่ในการวางโครงร่างเอกสารอย่างเป็นรูปแบบ &nbsp;ถูกต้อง เข้าใจง่าย &nbsp;ไม่เกี่ยวข้องกับการแสดงผล &nbsp;ส่วน CSS จะทำหน้าที่ในการตกแต่งเอกสารให้สวยงาม เรียกได้ว่า HTML คือส่วน coding ส่วน &nbsp;CSS คือส่วน design</p>\r\n\r\n<h3><strong>ข้อมูลอ้างอิง&nbsp;</strong></h3>\r\n\r\n<h6><span style=\"font-size:8px\"><a href=\"http://www.wynnsoft-solution.com/_%E0%B9%81%E0%B8%97%E0%B9%87%E0%B8%81_HTML5_\" target=\"_blank\">http://www.wynnsoft-solution.com/</a></span></h6>\r\n\r\n<h6><span style=\"font-size:8px\"><a href=\"https://www.wynnsoft-solution.net/th/article/view/80/\">https://www.wynnsoft-solution.net/th/article/view/80/</a></span></h6>\r\n\r\n<h6><span style=\"font-size:8px\">http://www.mindphp.com/</span></h6>\r\n\r\n<h6><span style=\"font-size:8px\">http://www.เกร็ดความรู้.net/</span></h6>\r\n', 'blog3.gif', 'all,css', 'true', '2020-08-24 17:24:01', '2020-08-24 17:24:01'),
(4, 'JavaScript คืออะไร', 'JavaScript เป็น ภาษาสคริปต์เชิงวัตถุ (ที่เรียกกันว่า “สคริปต์” (script) ซึ่งในการสร้างและพัฒนาเว็บไซต์ ', '<h2><strong>JavaScript คืออะไร</strong></h2>\r\n\r\n<p style=\"margin-left:40px\">javaScript คือ ภาษาคอมพิวเตอร์สำหรับการเขียนโปรแกรมบนระบบอินเทอร์เน็ต ที่กำลังได้รับความนิยมอย่างสูง&nbsp;Java JavaScript เป็น ภาษาสคริปต์เชิงวัตถุ (ที่เรียกกันว่า &quot;สคริปต์&quot; (script) ซึ่งในการสร้างและพัฒนาเว็บไซต์ (ใช่ร่วมกับ HTML) เพื่อให้เว็บไซต์ของเราดูมีการเคลื่อนไหว สามารถตอบสนองผู้ใช้งานได้มากขึ้น ซึ่งมีวิธีการทำงานในลักษณะ &quot;แปลความและดำเนินงานไปทีละคำสั่ง&quot; (interpret) หรือเรียกว่า อ็อบเจ็กโอเรียลเต็ด (Object Oriented Programming) ที่มีเป้าหมายในการ ออกแบบและพัฒนาโปรแกรมในระบบอินเทอร์เน็ต สำหรับผู้เขียนด้วยภาษา HTML สามารถทำงานข้ามแพลตฟอร์มได้ โดยทำงานร่วมกับ ภาษา&nbsp;<a href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/2026-html-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3.html\" title=\"HTML คืออะไร เอชทีเอ็มแอล ภาษาคอมพิวเตอร์ที่ใช้ในการสร้างเว็บเพจ ใช้เขียนโปรแกรม ย่อมาจากอะไร::HTML คืออะไร     HTML...\">HTML&nbsp;</a>และภาษา&nbsp;<a href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/2185-java-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3.html\" title=\"Java คืออะไร จาวา คือภาษาคอมพิวเตอร์ สำหรับเขียนโปรแกรมเชิงวัตถุ::Java คืออะไร     Java หรือ...\">Java&nbsp;</a>ได้ทั้งทางฝั่งไคลเอนต์ (Client) และ ทางฝั่งเซิร์ฟเวอร์ (Server)</p>\r\n\r\n<p style=\"margin-left:40px\">JavaScript ถูกพัฒนาขึ้นโดย เน็ตสเคปคอมมิวนิเคชันส์ (Netscape Communications Corporation) โดยใช้ชื่อว่า Live Script ออกมาพร้อมกับ Netscape Navigator2.0 เพื่อใช้สร้างเว็บเพจโดยติดต่อกับเซิร์ฟเวอร์แบบ Live Wire ต่อมาเน็ตสเคปจึงได้ร่วมมือกับ บริษัทซันไมโครซิสเต็มส์ปรับปรุงระบบของบราวเซอร์เพื่อให้สามารถติดต่อใช้งานกับภาษาจาวาได้ และได้ปรับปรุง LiveScript ใหม่เมื่อ ปี 2538 แล้วตั้งชื่อใหม่ว่า JavaScript JavaScript สามารถทำให้ การสร้างเว็บเพจ มีลูกเล่น ต่าง ๆ มากมาย และยังสามารถโต้ตอบกับผู้ใช้ได้อย่างทันที เช่น การใช้เมาส์คลิก หรือ การกรอกข้อความในฟอร์ม เป็นต้น</p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;เนื่องจาก JavaScript ช่วยให้ผู้พัฒนา สามารถสร้างเว็บเพจได้ตรงกับความต้องการ และมีความน่าสนใจมากขึ้น ประกอบกับเป็นภาษาเปิด ที่ใครก็สามารถนำไปใช้ได้ ดังนั้นจึงได้รับความนิยมเป็นอย่างสูง มีการใช้งานอย่างกว้างขวาง รวมทั้งได้ถูกกำหนดให้เป็นมาตรฐานโดย ECMA การทำงานของ JavaScript จะต้องมีการแปลความคำสั่ง ซึ่งขั้นตอนนี้จะถูกจัดการโดยบราวเซอร์ (เรียกว่าเป็น client-side script) ดังนั้น JavaScript จึงสามารถทำงานได้ เฉพาะบนบราวเซอร์ที่สนับสนุน ซึ่งปัจจุบันบราวเซอร์เกือบทั้งหมดก็สนับสนุน JavaScript แล้ว อย่างไรก็ดี สิ่งที่ต้องระวังคือ JavaScript มีการพัฒนาเป็นเวอร์ชั่นใหม่ๆออกมาด้วย (ปัจจุบันคือรุ่น 1.5) ดังนั้น ถ้านำโค้ดของเวอร์ชั่นใหม่ ไปรันบนบราวเซอร์รุ่นเก่าที่ยังไม่สนับสนุน ก็อาจจะทำให้เกิด error ได้</p>\r\n\r\n<h2><strong>JavaScript ทำอะไรได้บ้าง</strong></h2>\r\n\r\n<ol>\r\n	<li>JavaScript ทำให้สามารถใช้เขียนโปรแกรมแบบง่ายๆได้ โดยไม่ต้องพึ่งภาษาอื่น</li>\r\n	<li>JavaScript มีคำสั่งที่ตอบสนองกับผู้ใช้งาน เช่นเมื่อผู้ใช้คลิกที่ปุ่ม หรือ Checkbox ก็สามารถสั่งให้เปิดหน้าใหม่ได้ ทำให้เว็บไซต์ของเรามีปฏิสัมพันธ์กับผู้ใช้งานมากขึ้น นี่คือข้อดีของ JavaScript เลยก็ว่าได้ที่ทำให้เว็บไซต์ดังๆทั้งหลายเช่น Google Map ต่างหันมาใช้</li>\r\n	<li>JavaScript สามารถเขียนหรือเปลี่ยนแปลง HTML Element ได้ นั่นคือสามารถเปลี่ยนแปลงรูปแบบการแสดงผลของเว็บไซต์ได้ หรือหน้าแสดงเนื้อหาสามารถซ่อนหรือแสดงเนื้อหาได้แบบง่ายๆนั่นเอง</li>\r\n	<li>JavaScript สามารถใช้ตรวจสอบข้อมูลได้ สังเกตว่าเมื่อเรากรอกข้อมูลบางเว็บไซต์ เช่น Email เมื่อเรากรอกข้อมูลผิดจะมีหน้าต่างฟ้องขึ้นมาว่าเรากรอกผิด หรือลืมกรอกอะไรบางอย่าง เป็นต้น</li>\r\n	<li>JavaScript สามารถใช้ในการตรวจสอบผู้ใช้ได้เช่น ตรวจสอบว่าผู้ใช้ ใช้&nbsp;<a href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/1849-web-browser.html\" title=\"Web browser (เว็บเบราว์เซอร์) คืออะไร::Web browser \r\n   ...\">web browser</a>&nbsp;อะไร</li>\r\n	<li>JavaScript สร้าง&nbsp;<a href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/2040-cookies-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3.html\" title=\"Cookies คืออะไร คุ๊กกี้ คือ ข้อมูลการเข้าเว็บไซต์ต่างๆซึ่งถูกบันทึกและเก็บโดยเว็บบราวเซอร์::Cookies คืออะไร     cookies...\">Cookies</a>&nbsp;(เก็บข้อมูลของผู้ใช้ในคอมพิวเตอร์ของผู้ใช้เอง) ได้</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:40px\">CSS&nbsp;กับ&nbsp;HTML&nbsp;นั้นทำหน้าที่คนละอย่างกัน โดย HTMLจะทำหน้าที่ในการวางโครงร่างเอกสารอย่างเป็นรูปแบบ &nbsp;ถูกต้อง เข้าใจง่าย &nbsp;ไม่เกี่ยวข้องกับการแสดงผล &nbsp;ส่วน CSS จะทำหน้าที่ในการตกแต่งเอกสารให้สวยงาม เรียกได้ว่า HTML คือส่วน coding ส่วน &nbsp;CSS คือส่วน design</p>\r\n\r\n<h2><strong>ข้อดีและข้อเสียของ Java JavaScript</strong></h2>\r\n\r\n<p style=\"margin-left:40px\">การทำงานของ JavaScript เกิดขึ้นบนบราวเซอร์ (เรียกว่าเป็น client-side script) ดังนั้นไม่ว่าคุณจะใช้เซิร์ฟเวอร์อะไร หรือที่ไหน ก็ยังคงสามารถใช้ JavaScript ในเว็บเพจได้ ต่างกับภาษาสคริปต์อื่น เช่น Perl,&nbsp;<a href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/2127-php-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3.html\" title=\"PHP คืออะไร พีเอซพี คือภาษาคอมพิวเตอร์ ใช้ในการเขียนโปรแกรมในเว็บ::PHP คืออะไร     PHP ย่อมาจาก...\">PHP</a>&nbsp;หรือ ASP ซึ่งต้องแปลความและทำงานที่ตัวเครื่องเซิร์ฟเวอร์ (เรียกว่า server-side script) ดังนั้นจึงต้องใช้บนเซิร์ฟเวอร์ ที่สนับสนุนภาษาเหล่านี้เท่านั้น อย่างไรก็ดี จากลักษณะดังกล่าวก็ทำให้ JavaScript มีข้อจำกัด คือไม่สามารถรับและส่งข้อมูลต่างๆ กับเซิร์ฟเวอร์โดยตรง เช่น การอ่านไฟล์จากเซิร์ฟเวอร์ เพื่อนำมาแสดงบนเว็บเพจ หรือรับข้อมูลจากผู้ชม เพื่อนำไปเก็บบนเซิร์ฟเวอร์ เป็นต้น ดังนั้นงานลักษณะนี้ จึงยังคงต้องอาศัยภาษา server-side script อยู่ (ความจริง JavaScript ที่ทำงานบนเซิร์ฟเวอร์เวอร์ก็มี ซึ่งต้องอาศัยเซิร์ฟเวอร์ที่สนับสนุนโดยเฉพาะเช่นกัน แต่ไม่เป็นที่นิยมนัก)</p>\r\n\r\n<h3><strong>ข้อมูลอ้างอิง&nbsp;</strong></h3>\r\n\r\n<h6 style=\"margin-left:40px\"><span style=\"font-size:8px\">http://www.com5dow.com<br />\r\nhttp://www.thaigoodview.com<br />\r\nhttp://www.hellomyweb.com</span></h6>\r\n', 'blog4.gif', 'all,javascript', 'true', '2020-08-24 19:54:23', '2020-08-24 19:54:23'),
(5, 'PHP คืออะไร', 'PHP เป็นภาษาสคริปต์ ( Scripting Language ) คำสั่งต่างๆ จะเก็บในรูปของข้อความ (Text)อาจเขียนแทรกอยู่ภายในภาษา HTML', '<h2><strong>PHP คืออะไร</strong></h2>\r\n\r\n<p style=\"margin-left:40px\">PHP (พีเอชพี) ปัจจุบันย่อมาจากคำว่า&nbsp;PHP Hypertext Preprocessor&nbsp;ภาษา&nbsp;PHP&nbsp;เป็นโปรแกรมภาษาคอมพิวเตอร์ระดับสูง ที่สามารถใช้งานในระบบเครือข่ายอินเทอร์เน็ตได้ มีความสามารถสูง และมีผู้นิยมใช้เป็นจำนวนมาก อีกทั้งยังสามารถดาวน์โหลดมาใช้ได้ฟรี จากเว็บไซต์&nbsp;http://php.net/</p>\r\n\r\n<p style=\"margin-left:40px\">PHP&nbsp;เป็นภาษาสคริปต์ (&nbsp;Scripting Language )&nbsp;คำสั่งต่างๆ จะเก็บในรูปของข้อความ (Text)อาจเขียนแทรกอยู่ภายในภาษา&nbsp;HTML&nbsp;หรือใช้งานอิสระก็ได้ แต่ในการใช้งานจริงมักใช้งานร่วมกับภาษา&nbsp;HTML&nbsp;ดังนั้นการเขียนโปรแกรมนี้ต้องมีความรู้ด้านภาษา&nbsp;HTML&nbsp;เป็นอย่างดี อย่างไรก็ตามเราสามารถใช้โปรแกรมประยุกต์มาช่วยอำนวยความสะดวกในการสร้างงานได้</p>\r\n\r\n<p style=\"margin-left:40px\">เช่น&nbsp;Macromedia Dreamweaver&nbsp;หรือโปรแกรมประเภท&nbsp;Editor&nbsp;เช่น&nbsp;EditPlus&nbsp;ฯลฯ โปรแกรมเหล่านี้จะช่วยจำแนกคำ เช่น คำสั่ง คำทั่วไป ตัวแปร ฯลฯ ให้มีสีต่างกันเพื่อสะดวกในการสังเกตและมีตัวเลขบอกบรรทัดทำให้สะดวกในการแก้ไข</p>\r\n\r\n<p style=\"margin-left:40px\">PHP&nbsp;คือ ภาษาคอมพิวเตอร์&nbsp;Server-Side Script&nbsp;ซึ่งใช้ในการจัดทำเว็บไซต์และสามารถประมวลผลออกมาในรูปแบบHTML&nbsp;โดยมีรากฐานโครงสร้างคำสั่งมาจากภาษา ภาษาซี ภาษาจาวา และ ภาษาเพิร์ล เป้าหมายหลักของภาษาPHP&nbsp;คือให้นักพัฒนาเว็บไซต์สามารถเขียนเว็บเพจ ที่มีความตอบโต้ได้อย่างรวดเร็ว</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>JavaScript ทำอะไรได้บ้าง</strong></h2>\r\n\r\n<ol>\r\n	<li>JavaScript ทำให้สามารถใช้เขียนโปรแกรมแบบง่ายๆได้ โดยไม่ต้องพึ่งภาษาอื่น</li>\r\n	<li>JavaScript มีคำสั่งที่ตอบสนองกับผู้ใช้งาน เช่นเมื่อผู้ใช้คลิกที่ปุ่ม หรือ Checkbox ก็สามารถสั่งให้เปิดหน้าใหม่ได้ ทำให้เว็บไซต์ของเรามีปฏิสัมพันธ์กับผู้ใช้งานมากขึ้น นี่คือข้อดีของ JavaScript เลยก็ว่าได้ที่ทำให้เว็บไซต์ดังๆทั้งหลายเช่น Google Map ต่างหันมาใช้</li>\r\n	<li>JavaScript สามารถเขียนหรือเปลี่ยนแปลง HTML Element ได้ นั่นคือสามารถเปลี่ยนแปลงรูปแบบการแสดงผลของเว็บไซต์ได้ หรือหน้าแสดงเนื้อหาสามารถซ่อนหรือแสดงเนื้อหาได้แบบง่ายๆนั่นเอง</li>\r\n	<li>JavaScript สามารถใช้ตรวจสอบข้อมูลได้ สังเกตว่าเมื่อเรากรอกข้อมูลบางเว็บไซต์ เช่น Email เมื่อเรากรอกข้อมูลผิดจะมีหน้าต่างฟ้องขึ้นมาว่าเรากรอกผิด หรือลืมกรอกอะไรบางอย่าง เป็นต้น</li>\r\n	<li>JavaScript สามารถใช้ในการตรวจสอบผู้ใช้ได้เช่น ตรวจสอบว่าผู้ใช้ ใช้&nbsp;<a href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/1849-web-browser.html\" title=\"Web browser (เว็บเบราว์เซอร์) คืออะไร::Web browser \r\n   ...\">web browser</a>&nbsp;อะไร</li>\r\n	<li>JavaScript สร้าง&nbsp;<a href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/2040-cookies-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3.html\" title=\"Cookies คืออะไร คุ๊กกี้ คือ ข้อมูลการเข้าเว็บไซต์ต่างๆซึ่งถูกบันทึกและเก็บโดยเว็บบราวเซอร์::Cookies คืออะไร     cookies...\">Cookies</a>&nbsp;(เก็บข้อมูลของผู้ใช้ในคอมพิวเตอร์ของผู้ใช้เอง) ได้</li>\r\n</ol>\r\n\r\n<p>CSS&nbsp;กับ&nbsp;HTML&nbsp;นั้นทำหน้าที่คนละอย่างกัน โดย HTMLจะทำหน้าที่ในการวางโครงร่างเอกสารอย่างเป็นรูปแบบ &nbsp;ถูกต้อง เข้าใจง่าย &nbsp;ไม่เกี่ยวข้องกับการแสดงผล &nbsp;ส่วน CSS จะทำหน้าที่ในการตกแต่งเอกสารให้สวยงาม เรียกได้ว่า HTML คือส่วน coding ส่วน &nbsp;CSS คือส่วน design</p>\r\n\r\n<h2><strong>ข้อดีและข้อเสียของ PHP</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>ดาวน์โหลดได้ฟรี (Open Source)</li>\r\n	<li>&nbsp;เรียนรู้ได้ง่าย</li>\r\n	<li>ประมวลผลได้รวดเร็วและมีประสิทธิภาพ</li>\r\n	<li>ใช้ร่วมกับ&nbsp;XML&nbsp;ได้</li>\r\n	<li>ใช้งานร่วมกับฐานข้อมูลได้หลายชนิด เช่น&nbsp;MySQL</li>\r\n	<li>สร้างฟอร์มรับส่งข้อมูลกับผู้ใช้ได้</li>\r\n	<li>ใช้โครงสร้างและไวยากรณ์ภาษาง่ายๆ</li>\r\n	<li>ใช้งานได้กับทุกระบบปฏิบัติการ</li>\r\n	<li>ใช้งานได้กับทุกเว็บบราวเซอร์</li>\r\n	<li>มีฟังก์ชันที่จัดการกับข้อมูลตัวอักษร</li>\r\n</ol>\r\n\r\n<h2><strong>การทำงานของ PHP</strong></h2>\r\n\r\n<h3>สำหรับไฟล์เว็บเพจที่มีภาษา&nbsp;PHP&nbsp;รวมอยู่ด้วยนั้น เมื่อเราเปิดเว็บบราวเซอร์ที่มีไฟล์&nbsp;PHP&nbsp;จะทำงานดังนี้</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:40px\">1.&nbsp;โปรแกรมเว็บบราวเซอร์จะมีการร้องขอไฟล์&nbsp;PHP&nbsp;ไปยังเว็บเซิร์ฟเวอร์</p>\r\n\r\n<p style=\"margin-left:40px\">2.&nbsp;เครื่องเซิร์ฟเวอร์ก็จะเรียก&nbsp;PHP engine&nbsp;ขึ้นมาแปลไฟล์&nbsp;PHP</p>\r\n\r\n<p style=\"margin-left:40px\">3.&nbsp;ติดต่อกับฐานข้อมูล</p>\r\n\r\n<p style=\"margin-left:40px\">4.&nbsp;ส่งผลลัพธ์ที่ได้จากการแปลและประมวลผลเป็นภาษา&nbsp;HTML&nbsp;ทั้งหมดกลับไปยังเว็บบราวเซอร์</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>เสริมสาระ</strong></h2>\r\n\r\n<p style=\"margin-left:40px\">Web server คือ เครื่องคอมพิสเตอร์หรือโปรแกรม ซึ่งให้บริการเว็บไซต์ผู้ใช้สามมารถเรียกชมเว็บไซต์ได้โดยโปรโตคอล ผ่านทาง Web Browser.</p>\r\n\r\n<p style=\"margin-left:40px\">Web Browser เป็นโปรแกรมสำหรับเรียกดูเอกสารเว็บ เช่น InternetExplorer&nbsp;, google chrome</p>\r\n', 'blog5.gif', 'all.php', 'true', '2020-08-24 20:20:09', '2020-08-24 20:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `create_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `detail`, `create_at`) VALUES
(1, 'สมชาย ขายทองคำ', '0886869855', 'auna04@gmail.com', 'บ่มีหยังเด้อ EiEi ^^\'\'', '2020-08-28'),
(2, 'zzzzz', 'phone', 'email', 'massage', '2020-08-28'),
(3, 'อิสระ ฝังรัก', '0886869855', 'issara@fungrak', 'hi what your name', '2020-08-28'),
(4, 'Anun jamnongphan', '0886869855', 'teenoiierorrteeblackcat3@gmail.com', 'dasdazxczsd', '2020-08-28'),
(5, 'aa', 'aaa', 'aaa@aaa', 'aaa', '2020-08-29'),
(6, 'duck developer', '0886869855', 'duck.developer@gmail.com', 'รับทำเวบไซต์ พร้อม ระบบหน้าบ้าน-หลังบ้าน ระบบ Line notify แจ้งเตือน ทั้งระบบ', '2020-08-29'),
(7, 'duck developer', '0886869855', 'duck.developer@gmail.com', 'fuck you', '2020-08-29'),
(8, 'duck developer', '0886869855', 'duck.developer@gmail.com', 'fuck you kuy', '2020-08-29'),
(9, 'duck developer', '0886869855', 'duck.developer@gmail.com', 'สนใจทำเว็บไซต์', '2020-08-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

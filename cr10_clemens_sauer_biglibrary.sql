-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Nov 2019 um 22:34
-- Server-Version: 10.4.8-MariaDB
-- PHP-Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_clemens_sauer_biglibrary`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `library`
--

DROP TABLE IF EXISTS `library`;
CREATE TABLE `library` (
  `pk_libraby_id` int(11) NOT NULL,
  `title` varchar(33) DEFAULT NULL,
  `img` varchar(57) DEFAULT NULL,
  `surname_author` varchar(10) DEFAULT NULL,
  `lastname_author` varchar(11) DEFAULT NULL,
  `ISBN` int(11) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `short_description` varchar(665) DEFAULT NULL,
  `publish_date` varchar(16) DEFAULT NULL,
  `publisher_name` varchar(16) DEFAULT NULL,
  `publisher_adress` varchar(22) DEFAULT NULL,
  `publisher_city` varchar(16) DEFAULT NULL,
  `publisher_size` varchar(6) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `library`
--

INSERT INTO `library` (`pk_libraby_id`, `title`, `img`, `surname_author`, `lastname_author`, `ISBN`, `type`, `short_description`, `publish_date`, `publisher_name`, `publisher_adress`, `publisher_city`, `publisher_size`, `status`) VALUES
(1, 'Das Geschenk', 'https://bilder.buecher.de/produkte/56/56008/56008879z.jpg', 'Sebastian', 'Fitzek', 2147483647, 'book', 'Milan Berg steht an einer Ampel, als ein Wagen neben ihm h�lt. Auf dem R�cksitz ein v�llig ver�ngstigtes M�dchen. Verzweifelt presst sie einen Zettel gegen die Scheibe. Ein Hilferuf? Milan kann es nicht lesen - denn er ist Analphabet! Doch er sp�rt: Das M�dchen ist in t�dlicher Gefahr. Als er die Suche nach ihr aufnimmt, beginnt f�r ihn eine albtraumhafte Irrfahrt.', '30.06.2008 00:00', 'Droemer', 'Hilblestra�e 54', 'D-80636 M�nchen', 'big', 'available'),
(2, 'Herkunft', 'https://bilder.buecher.de/produkte/54/54466/54466943z.jpg', 'Sasa', 'Stanisic', 2147483647, 'book', 'Herkunft ist ein Buch �ber den ersten Zufall unserer Biografie: irgendwo geboren werden. Und was danach kommt. Es ist ein Buch �ber meine Heimaten, in der Erinnerung und der Erfindung. Ein Buch �ber Sprache, Schwarzarbeit, die Stafette der Jugend und viele Sommer.', '24.09.1996 00:00', 'Luchterhand', 'Neumarkter Str. 28', 'D-81673 M�nchen', 'big', 'available'),
(3, 'Opfer 2117', 'https://bilder.buecher.de/produkte/56/56409/56409222z.jpg', 'Jussi', 'Adler-Olsen', 2147483647, 'book', 'An Zyperns K�ste wird eine tote Frau aus dem Nahen Osten angesp�lt: Auf der Tafel der Schande in Barcelona, wo die Zahl der im Meer ertrunkenen Fl�chtlinge angezeigt wird, ist sie Opfer 2117. Doch sie ist nicht ertrunken, sondern ermordet worden. Als Assad vom Sonderdezernat Q das Bild der toten Frau zu Gesicht bekommt, bricht er zusammen. Denn er kannte sie nur zu gut.', '12.07.2011 00:00', 'dtv', 'Tumblingerstr. 21', 'D-80337 M�nchen', 'medium', 'available'),
(4, 'Schwert und Krone. Herz aus Stein', 'https://bilder.buecher.de/produkte/56/56008/56008076z.jpg', 'Sabine', 'Ebert', 2147483647, 'book', 'Friedrich Barbarossa w�hnt sich im Zenit seiner Macht. Zum Kaiser gekr�nt, von K�nigen hofiert, legt er sich sogar mit dem Papst an. Doch die Herren von Mailand provozieren und beleidigen ihn, und mit dem jungen Sohn von K�nig Konrad w�chst ihm ein Rivale um den Thron heran.', '10.11.2001 00:00', 'Knaur', 'Hilblestra�e 54', 'D-80636 M�nchen', 'medium', 'reserved'),
(5, 'Es wird Zeit', 'https://bilder.buecher.de/produkte/56/56523/56523137n.jpg', 'Ildiko von', 'K�rthy', 2147483647, 'book', 'Judith ist fast f�nfzig. Die Kinder sind gro�, ihr Mann ist in die Jahre gekommen und das Leben auch. Dann stirbt ihre Mutter, und Judith kehrt nach zwanzig Jahren in die alte Heimat zur�ck, wo sie ein gut geh�tetes Geheimnis, ein leeres Grab und einen Haufen Hoffnungen, Tr�ume und Albtr�ume zur�ckgelassen hat.', '16.11.2014 00:00', 'Wunderlich', 'Kirchenallee 19', 'D-20099 Hamburg', 'small', 'reserved'),
(6, 'Das Geschenk', 'https://bilder.buecher.de/produkte/56/56008/56008879z.jpg', 'Sebastian', 'Fitzek', 2147483647, 'CD', 'Milan Berg steht an einer Ampel, als ein Wagen neben ihm h�lt. Auf dem R�cksitz ein v�llig ver�ngstigtes M�dchen. Verzweifelt presst sie einen Zettel gegen die Scheibe. Ein Hilferuf? Milan kann es nicht lesen - denn er ist Analphabet! Doch er sp�rt: Das M�dchen ist in t�dlicher Gefahr. Als er die Suche nach ihr aufnimmt, beginnt f�r ihn eine albtraumhafte Irrfahrt.', '30.06.2008 00:00', 'Argon', 'Waldemarstra�e 33a', 'D-10999 Berlin', 'big', 'available'),
(7, 'Die Reste frieren wir ein.', 'https://bilder.buecher.de/produkte/56/56408/56408680n.jpg', 'Renate', 'Bergmann', 2147483647, 'CD', 'Ach, Weihnachten ... Wenn der Baum geschm�ckt ist und die Kerzen leuchten, wenn der Tisch mit K�stlichkeiten gedeckt ist und die Augen der Liebsten strahlen, wissen Se, das ist f�r mich die sch�nste Zeit des Jahres. Wenn man so alt ist wie ich, hat man viele Weihnachtsfeste erlebt, das kann ich Ihnen sagen. Kommen Se mit auf meine Erinnerungsreise durch die Jahrzehnte und lassen Se sich von den Weihnachtswundern berichten, die ich erlebt habe! Und nat�rlich davon, was es Gutes zu essen gab: Sie wissen ja, Weihnachtszeit ist Dehnbundzeit!\r\nIhre Renate Bergmann', '24.09.2018 00:00', 'Der Audio Verlag', 'Hardenbergstra�e 9a', 'D-10623 Berlin', 'big', 'available'),
(8, 'Die K�nguru-Chroniken', 'https://bilder.buecher.de/produkte/35/35649/35649414n.jpg', 'Marc-Uwe', 'Kling', 2147483647, 'CD', 'Marc-Uwe Kling lebt mit einem K�nguru zusammen. Das K�nguru ist Kommunist und steht total auf Nirvana. Die K�nguru-Chroniken berichten von den Abenteuern und Wortgefechten des Duos. Und so bekommen wir endlich Antworten auf die dr�ngendsten Fragen unserer Zeit: War das K�nguru wirklich beim Vietcong? Und wieso ist es schnapspralinens�chtig? K�nnte man die Essenz des Hegelschen Gesamtwerkes in eine SMS packen? Und wer ist besser: Bud Spencer oder Terence Hill?', '03.11.1995 00:00', 'Downtown', 'Paul-Nevermann-Platz 5', 'D-22765 Hamburg', 'big', 'available'),
(9, 'Wir sind die Freeses. Showtime!', 'https://bilder.buecher.de/produkte/56/56868/56868143n.jpg', 'Adreas', 'Altenburg', 2147483647, 'CD', 'Nach dem anhaltenden Erfolg der ersten drei Teile von \"Wir sind die Freeses.\" liegt nun das vierte H�rbuch zur t�glichen Radiocomedy von NDR 2 vor. Im Mehrgenerationenhaushalt der Familie Freese wohnen die lasziv-zupackende Oma Rosi, Helikoptermama Bianca und der kleine Svenni, der manches Mal als Einziger den klaren Blick hat. Egal ob unterwegs oder zu Hause: Zusammen mit Untermieter und Labertasche Heiko geht es immer wieder um Strategien der Alltagsbew�ltigung, tagesaktuelles Geschehen und philosophische Extrempositionen.', '03.04.2001 00:00', 'Der Audio Verlag', 'Hardenbergstra�e 9a', 'D-10623 Berlin', 'medium', 'reserved'),
(10, 'Guglhupfgeschwader', 'https://bilder.buecher.de/produkte/56/56408/56408545z.jpg', 'Rita', 'Falk', 2147483647, 'CD', 'In seinem zehnten Fall bekommt es der Eberhofer mit brutalen Geldeintreibern, einem tragischen Mordfall und einem bockigen Birkenberger zu tun. Dabei k�nnte er sich so sch�n feiern lassen, hat man doch in Niederkaltenkirchen beschlossen, dem erfolgreichen Dorfgendarm zu Ehren den Kreisverkehr auf den Namen \"Franz-Eberhofer-Kreisel\" zu taufen! Stattdessen muss sich der Eberhofer jetzt darum k�mmern, dass den brutalen Verfolgern vom Lotto-Otto so rasch wie m�glich das Handwerk gelegt wird. Doch noch bevor er die Ermittlungen im Fall Lotto-Otto aufnehmen kann, geht der Lotto-Laden in die Luft - und der Eberhofer hat es jetzt auch noch mit einem Mord zu tun ...', '12.10.2013 00:00', 'Der Audio Verlag', 'Hardenbergstra�e 9a', 'D-10623 Berlin', 'medium', 'reserved');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`pk_libraby_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

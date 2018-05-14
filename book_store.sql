-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 15, 2018 at 01:30 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_store`
--

CREATE TABLE `book_store` (
  `id` int(10) NOT NULL,
  `Image` varchar(264) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `Publisher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_store`
--

INSERT INTO `book_store` (`id`, `Image`, `Name`, `ISBN`, `Publisher`) VALUES
(1, 'https://images.isbndb.com/covers/22/89/9780439472289.jpgRubytheCopycat', '0439472288', '9780439472289', 'Scholastic'),
(2, 'https://images.isbndb.com/covers/86/28/9780134598628.jpgRubyonRailsTutorial:LearnWebDevelopmentwithRails(4thEdition)(Addison-WesleyProfessionalRubySeries)', '0134598628', '9780134598628', 'Addison-Wesley Professional'),
(3, 'https://images.isbndb.com/covers/61/78/9780596516178.jpgTheRubyProgrammingLanguage:EverythingYouNeedtoKnow', '0596516177', '9780596516178', 'O&#039;Reilly Media'),
(4, 'https://images.isbndb.com/covers/22/65/9780439472265.jpgTheStoryOfRubyBridges:SpecialAnniversaryEdition', '0439472261', '9780439472265', 'Scholastic Paperbacks'),
(5, 'https://images.isbndb.com/covers/77/04/9781521367704.jpgRubyForBeginners:YourGuideToEasilyLearnRubyProgrammingin7days', '1521367701', '9781521367704', 'Independently published'),
(6, 'https://images.isbndb.com/covers/13/34/9780321721334.jpgPracticalObject-OrientedDesigninRuby:AnAgilePrimer(Addison-WesleyProfessionalRubySeries)', '0321721330', '9780321721334', 'Addison-Wesley Professional'),
(7, 'https://images.isbndb.com/covers/86/13/9780439738613.jpgRuby:TheRedFairy(RainbowMagic:TheRainbowFairies                                                                                                                             No.1)', '043973861X', '9780439738613', 'Scholastic Inc.'),
(8, 'https://images.isbndb.com/covers/26/51/9781449372651.jpgHeadFirstRuby:ABrain-FriendlyGuide', '1449372651', '9781449372651', 'O&#039;Reilly Media'),
(9, 'https://images.isbndb.com/covers/56/93/9781452145693.jpgRuby&#039;sWish', '1452145695', '9781452145693', 'Chronicle Books'),
(10, 'https://images.isbndb.com/covers/95/97/9781781259597.jpgEatUp:Food                                                                                                                                                                  AppetiteandEatingWhatYouWant', '1781259593', '9781781259597', 'Serpent&#039;s Tail'),
(11, 'https://images.isbndb.com/covers/01/57/9780060560157.jpgRubyHoller', '0060560150', '9780060560157', 'HarperCollins'),
(12, 'https://images.isbndb.com/covers/53/22/9781250065322.jpgHelloRuby:JourneyInsidetheComputer', '1250065321', '9781250065322', 'Feiwel &amp; Friends'),
(13, 'https://images.isbndb.com/covers/41/06/9780321584106.jpgEloquentRuby(Addison-WesleyProfessionalRubySeries)', '0321584104', '9780321584106', 'Addison-Wesley Professional'),
(14, 'https://images.isbndb.com/covers/76/02/9780545017602.jpgBrandNewSchool                                                                                                                                                              BraveNewRuby(RubyandtheBookerBoys#1)', '0545017602', '9780545017602', 'Scholastic Paperbacks'),
(15, 'https://images.isbndb.com/covers/60/17/9781491926017.jpgRubyPocketReference:InstantHelpforRubyProgrammers', '1491926015', '9781491926017', 'O&#039;Reilly Media'),
(16, 'https://images.isbndb.com/covers/47/26/9780763654726.jpgRubyRedfortBlinkandYouDie', '0763654728', '9780763654726', 'Candlewick'),
(17, 'https://images.isbndb.com/covers/23/19/9780545782319.jpgRubyLeeandMe', '0545782317', '9780545782319', 'Scholastic Press'),
(18, 'https://images.isbndb.com/covers/69/44/9780062306944.jpgYork:TheShadowCipher', '0062306944', '9780062306944', 'Walden Pond Press'),
(19, 'https://images.isbndb.com/covers/63/64/9781934356364.jpgLearntoProgram                                                                                                                                                              SecondEdition(TheFacetsofRubySeries)', '1934356360', '9781934356364', 'Pragmatic Bookshelf'),
(20, 'https://images.isbndb.com/covers/63/64/9781934356364.jpgLearntoProgram                                                                                                                                                              SecondEdition(TheFacetsofRubySeries)', '1934356360', '9781934356364', 'Pragmatic Bookshelf'),
(21, 'https://images.isbndb.com/covers/63/35/9781595146335.jpgTheRubyCircle:ABloodlinesNovel', '1595146334', '9781595146335', 'Razorbill'),
(22, 'https://images.isbndb.com/covers/85/53/9780545108553.jpgRubyBridgesGoestoSchool:MyTrueStory(ScholasticReader                                                                                                                        Level2)', '0545108551', '9780545108553', 'Cartwheel Books'),
(23, 'https://images.isbndb.com/covers/80/16/9781938248016.jpgAFrameworkforUnderstandingPoverty;ACognitiveApproach', '1938248015', '9781938248016', 'aha! Process                                                                                     Inc.'),
(24, 'https://images.isbndb.com/covers/69/44/9780062306944.jpgYork:TheShadowCipher', '0062306944', '9780062306944', 'Walden Pond Press'),
(25, 'https://images.isbndb.com/covers/25/10/9781680502510.jpgAgileWebDevelopmentwithRails5.1', '1680502514', '9781680502510', 'Pragmatic Bookshelf'),
(26, 'https://images.isbndb.com/covers/76/77/9780134657677.jpgTheRails5Way(4thEdition)(Addison-WesleyProfessionalRubySeries)', '0134657675', '9780134657677', 'Addison-Wesley Professional'),
(27, 'https://images.isbndb.com/covers/52/73/9781593275273.jpgRubyUnderaMicroscope:AnIllustratedGuidetoRubyInternals', '1593275277', '9781593275273', 'No Starch Press'),
(28, 'https://images.isbndb.com/covers/46/33/9780321714633.jpgTheRubyWay:SolutionsandTechniquesinRubyProgramming(3rdEdition)(Addison-WesleyProfessionalRubySeries)', '0321714636', '9780321714633', 'Addison-Wesley Professional'),
(29, 'https://images.isbndb.com/covers/38/94/9781416913894.jpgRubyLu                                                                                                                                                                      BraveandTrue', '1416913890', '9781416913894', 'Atheneum Books for Young Readers'),
(30, 'https://images.isbndb.com/covers/22/44/9781501162244.jpgRuby(Landry)', '1501162241', '9781501162244', 'Pocket Books'),
(31, 'https://images.isbndb.com/covers/64/78/9780134456478.jpgPracticalObject-OrientedDesign:AnAgilePrimerUsingRuby(2ndEdition)', '0134456475', '9780134456478', 'Addison-Wesley Professional'),
(32, 'https://images.isbndb.com/covers/92/31/9780590189231.jpgThroughMyEyes', '0590189239', '9780590189231', 'Scholastic Press'),
(33, 'https://images.isbndb.com/covers/23/77/9780763692377.jpgRubyintheRuins', '0763692379', '9780763692377', 'Candlewick'),
(34, 'https://images.isbndb.com/covers/74/92/9780062467492.jpgTheRuinedHouse:ANovel', '0062467492', '9780062467492', 'Harper'),
(35, 'https://images.isbndb.com/covers/47/86/9780152054786.jpgLove                                                                                                                                                                        RubyLavender', '0152054782', '9780152054786', 'HMH Books for Young Readers'),
(36, 'https://images.isbndb.com/covers/45/24/9780763694524.jpgRubyRedfortFeeltheFear', '0763694525', '9780763694524', 'Candlewick'),
(37, 'https://images.isbndb.com/covers/07/42/9781480860742.jpgPiperandRuby:TheCourageWithin', '1480860743', '9781480860742', 'Archway Publishing'),
(38, 'https://images.isbndb.com/covers/50/44/9781442485044.jpgRubyontheOutside', '1442485043', '9781442485044', 'Simon &amp; Schuster Books for Young Readers'),
(39, 'https://images.isbndb.com/covers/91/55/9780439579155.jpgRubyInHerOwnTime', '0439579155', '9780439579155', 'Scholastic Press'),
(40, 'https://images.isbndb.com/covers/40/89/9781424554089.jpgRubytheFosterDog', '142455408X', '9781424554089', 'Broadstreet Publishing Group                                                                                                         LLC'),
(41, 'https://images.isbndb.com/covers/53/21/9781527205321.jpgMemoriesUnwound', '1527205320', '9781527205321', 'Ajmeet Dhal'),
(42, 'https://images.isbndb.com/covers/73/86/9781421597386.jpgPokémonOmegaRuby&amp;AlphaSapphire                                                                                                                                          Vol.6(Pokemon)', '1421597381', '9781421597386', 'VIZ Media - Children&#039;s'),
(43, 'https://images.isbndb.com/covers/15/13/9780312551513.jpgRubyRed(TheRubyRedTrilogy)', '0312551517', '9780312551513', 'Square Fish'),
(44, 'https://images.isbndb.com/covers/50/58/9780692095058.jpgWastingtimeillusionsVersusreality', '0692095055', '9780692095058', 'Ruby Larry'),
(45, 'https://images.isbndb.com/covers/33/57/9781934583357.jpgBridgesOutofPoverty:StrategiesforProfessionalandCommunities', '1934583359', '9781934583357', 'aha! Process                                                                              Inc.'),
(46, 'https://images.isbndb.com/covers/79/42/9780060007942.jpgRubyRidge:TheTruthandTragedyoftheRandyWeaverFamily', '006000794X', '9780060007942', 'Harper Perennial'),
(47, 'https://images.isbndb.com/covers/33/80/9781250133380.jpgRuby&#039;sChineseNewYear', '1250133386', '9781250133380', 'Henry Holt and Co. (BYR)'),
(48, 'https://images.isbndb.com/covers/27/50/9781533662750.jpgFarAboveRubies:APracticalGuidethroughProverbs31forBiblicalWomanhood', '1533662754', '9781533662750', 'CreateSpace Independent Publishing Platform'),
(49, 'https://images.isbndb.com/covers/19/41/9780142401941.jpgRuby&#039;sBeautyShop(MaxandRuby)', '0142401943', '9780142401941', 'Puffin Books');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_store`
--
ALTER TABLE `book_store`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_store`
--
ALTER TABLE `book_store`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 16, 2018 at 01:18 AM
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
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `bookName` varchar(100) DEFAULT NULL,
  `isbn` varchar(100) DEFAULT NULL,
  `publisher` varchar(44) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `image`, `author`, `bookName`, `isbn`, `publisher`, `price`, `quantity`) VALUES
(1, 'https://images.isbndb.com/covers/59/90/9781593275990.jpg ', ' Al Sweigart', 'AutomatetheBoringStuffwithPython:PracticalProgrammingforTotalBeginners', '1593275994', 'No Starch Press', 11.34, 4),
(2, 'https://images.isbndb.com/covers/70/16/9781449357016.jpg ', ' Mark Lutz', 'PythonPocketReference:PythonInYourPocket(PocketReference(O&;Reilly))', '1449357016', 'O&#039;Reilly Media', 0.5, 1),
(3, 'https://images.isbndb.com/covers/60/34/9781593276034.jpg ', ' Eric Matthes', 'PythonCrashCourse:AHands-OnProject-BasedIntroductiontoProgramming', '1593276036', 'No Starch Press', 7.69, 1),
(4, 'https://images.isbndb.com/covers/60/08/9781491946008.jpg ', ' Luciano Ramalho', 'FluentPython:ClearConciseandEffectiveProgramming', '1491946008', 'O&#039;Reilly Media', 19.45, 8),
(5, 'https://images.isbndb.com/covers/57/39/9781449355739.jpg ', ' Mark Lutz', 'LearningPython5thEdition', '1449355730', 'O&#039;Reilly Media', 12.95, 7),
(6, 'https://images.isbndb.com/covers/44/33/9781617294433.jpg ', ' Francois Chollet', 'DeepLearningwithPython', '1617294438', 'Manning Publications', 2.65, 9),
(7, 'https://images.isbndb.com/covers/66/70/9781549776670.jpg ', ' Timothy C. Needham', 'Python:ForBeginners:ACrashCourseGuideToLearnPythonin1Week', '1549776673', 'Independently published', 4.95, 8),
(8, 'https://images.isbndb.com/covers/14/72/9781974431472.jpg ', ' Mark Myers', 'ASmarterWaytoLearnPython:Learnitfaster.Rememberitlonger.', '1974431479', 'CreateSpace Independent Publishing Platform', 7.46, 1),
(9, 'https://images.isbndb.com/covers/93/62/9781449359362.jpg ', ' Bill Lubanovic', 'IntroducingPython:ModernComputinginSimplePackages', '1449359361', 'O&#039;Reilly Media', 9.18, 0),
(10, 'https://images.isbndb.com/covers/76/60/9781491957660.jpg ', ' Wes McKinney', 'PythonforDataAnalysis:DataWranglingwithPandasNumPyandIPython', '1491957662', 'O&#039;Reilly Media', 4.97, 6),
(11, 'https://images.isbndb.com/covers/11/20/9781530051120.jpg ', ' Dr. Charles Russell Severance', 'PythonforEverybody:ExploringDatainPython3', '1530051126', 'CreateSpace Independent Publishing Platform', 16.39, 8),
(12, 'https://images.isbndb.com/covers/54/86/9781521155486.jpg ', ' iCode Academy', 'Python:Programming:YourStepByStepGuideToEasilyLearnPythonin7Days(PythonforBeginnersPythonProgramming', '1521155488', 'Independently published', 8.3, 4),
(13, 'https://images.isbndb.com/covers/42/87/9780134034287.jpg ', ' Brett Slatkin', 'EffectivePython:59SpecificWaystoWriteBetterPython(EffectiveSoftwareDevelopmentSeries)', '0134034287', 'Addison-Wesley Professional', 9.95, 9),
(14, 'https://images.isbndb.com/covers/28/83/9780134692883.jpg ', ' Zed A. Shaw', 'LearnPython3theHardWay:AVerySimpleIntroductiontotheTerrifyinglyBeautifulWorldofComputersandCode(ZedS', '0134692888', 'Addison-Wesley Professional', 11.72, 7),
(15, 'https://images.isbndb.com/covers/22/99/9781491962299.jpg ', ' Aurélien Géron', 'Hands-OnMachineLearningwithScikit-LearnandTensorFlow:ConceptsToolsandTechniquestoBuildIntelligentSys', '1491962291', 'O&#039;Reilly Media', 16.85, 7),
(16, 'https://images.isbndb.com/covers/33/05/9781775093305.jpg ', ' Dan Bader', 'PythonTricks:ABuffetofAwesomePythonFeatures', '1775093301', 'Dan Bader', 4.47, 8),
(17, 'https://images.isbndb.com/covers/03/77/9781449340377.jpg ', ' David Beazley', 'PythonCookbookThirdedition', '1449340377', 'O&#039;Reilly Media', 2.68, 6),
(18, 'https://images.isbndb.com/covers/27/55/9781590282755.jpg ', ' John Zelle', 'PythonProgramming:AnIntroductiontoComputerScience3rdEd.', '1590282752', 'Franklin', 0, 14),
(19, 'https://images.isbndb.com/covers/95/38/9781491919538.jpg ', ' Paul Barry', 'HeadFirstPython:ABrain-FriendlyGuide', '1491919531', 'O&#039;Reilly Media', 7.33, 0),
(20, 'https://images.isbndb.com/covers/20/58/9781491912058.jpg ', ' Jake VanderPlas', 'PythonDataScienceHandbook:EssentialToolsforWorkingwithData', '1491912057', 'O&#039;Reilly Media', 2.61, 7),
(21, 'https://images.isbndb.com/covers/55/71/9781491985571.jpg ', ' Ryan Mitchell', 'WebScrapingwithPython:CollectingMoreDatafromtheModernWeb', '1491985577', 'O&#039;Reilly Media', 14.04, 2),
(22, 'https://images.isbndb.com/covers/40/78/9781593274078.jpg ', ' Jason R. Briggs', 'PythonforKids:APlayfulIntroductionToProgramming', '1593274076', 'No Starch Press', 11.75, 9),
(23, 'https://images.isbndb.com/covers/82/29/9781593278229.jpg ', ' Al Sweigart', 'CrackingCodeswithPython:AnIntroductiontoBuildingandBreakingCiphers', '1593278225', 'No Starch Press', 11.88, 2),
(24, 'https://images.isbndb.com/covers/39/06/9781980953906.jpg ', ' Maurice J. Thompson', 'Python:-TheBible-3Manuscriptsin1book:-PythonProgrammingForBeginners-PythonProgrammingForIntermediate', '1980953902', 'Independently published', 12.6, 3),
(25, 'https://images.isbndb.com/covers/96/24/9780262529624.jpg ', ' John V. Guttag', 'IntroductiontoComputationandProgrammingUsingPython:WithApplicationtoUnderstandingData(MITPress)', '0262529629', 'The MIT Press', 19.92, 9),
(26, 'https://images.isbndb.com/covers/50/09/9781435455009.jpg ', ' Michael Dawson', 'PythonProgrammingfortheAbsoluteBeginner3rdEdition', '1435455002', 'Course Technology', 19.18, 4),
(27, 'https://images.isbndb.com/covers/59/33/9781787125933.jpg ', ' Sebastian Raschka', 'PythonMachineLearning:MachineLearningandDeepLearningwithPythonscikit-learnandTensorFlow2ndEdition', '1787125939', 'Packt Publishing - ebooks Account', 2.21, 3),
(28, 'https://images.isbndb.com/covers/74/05/9781259587405.jpg ', ' Simon Monk', 'IllustratedGuidetoPython3:ACompleteWalkthroughofBeginningPythonwithUniqueIllustrationsShowinghowPyth', '1259587401', 'McGraw-Hill Education TAB', 12.07, 3),
(29, 'https://images.isbndb.com/covers/17/58/9781977921758.jpg ', ' Matt Harrison', 'PythonandAlgorithmicThinkingfortheCompleteBeginner:LearntoThinkLikeaProgrammer', '1977921752', 'CreateSpace Independent Publishing Platform', 9.42, 2),
(30, 'https://images.isbndb.com/covers/21/68/9781514802168.jpg ', ' Aristides S Bouras', 'DoingMathwithPython:UseProgrammingtoExploreAlgebraStatisticsCalculusandMore!', '1514802163', 'CreateSpace Independent Publishing Platform', 9.64, 1),
(31, 'https://images.isbndb.com/covers/64/09/9781593276409.jpg ', ' Amit Saha', 'DataSciencefromScratch:FirstPrincipleswithPython', '1593276400', 'No Starch Press', 10.29, 2),
(32, 'https://images.isbndb.com/covers/14/27/9781491901427.jpg ', ' Joel Grus', 'BlackHatPython:PythonProgrammingforHackersandPentesters', '149190142X', 'O&#039;Reilly Media', 12.67, 5),
(33, 'https://images.isbndb.com/covers/59/07/9781593275907.jpg ', ' Justin Seitz', 'ThinkPython:HowtoThinkLikeaComputerScientist', '1593275900', 'No Starch Press', 13.06, 5),
(34, 'https://images.isbndb.com/covers/93/69/9781491939369.jpg ', ' Allen B. Downey', 'DataStructuresandAlgorithmsinPython', '1491939362', 'O&#039;Reilly Media', 18.07, 4),
(35, 'https://images.isbndb.com/covers/21/76/9788126562176.jpg ', ' Michael T. Goodrich', 'CodingProjectsinPython', '812656217X', 'Wiley india Pvt. Ltd', 15.84, 9),
(36, 'https://images.isbndb.com/covers/18/89/9781465461889.jpg ', ' DK', 'ElementsofProgrammingInterviewsinPython:TheInsiders&;Guide', '1465461884', 'DK Children', 12.22, 8),
(37, 'https://images.isbndb.com/covers/39/46/9781537713946.jpg ', ' Adnan Aziz', 'ProgrammingPython:PowerfulObject-OrientedProgramming', '1537713949', 'CreateSpace Independent Publishing Platform', 2.12, 6),
(38, 'https://images.isbndb.com/covers/81/01/9780596158101.jpg ', ' Mark Lutz', 'IntroductiontoMachineLearningwithPython:AGuideforDataScientists', '0596158106', 'O&#039;Reilly Media', 3.39, 8),
(39, 'https://images.isbndb.com/covers/94/15/9781449369415.jpg ', ' Andreas C. Müller', 'InventYourOwnComputerGameswithPython4E', '1449369413', 'O&#039;Reilly Media', 9.38, 7),
(40, 'https://images.isbndb.com/covers/79/56/9781593277956.jpg ', ' Al Sweigart', 'BeginningProgrammingwithPythonForDummies(ForDummiesSeries)', '1593277954', 'No Starch Press', 14.86, 5),
(41, 'https://images.isbndb.com/covers/14/52/9781118891452.jpg ', ' John Paul Mueller', 'PythonforFinance:AnalyzeBigFinancialData', '1118891457', 'For Dummies', 2.16, 8),
(42, 'https://images.isbndb.com/covers/52/85/9781491945285.jpg ', ' Yves Hilpisch', 'ArtificialIntelligencewithPython:AComprehensiveGuidetoBuildingIntelligentAppsforPythonBeginnersandDe', '1491945281', 'O&#039;Reilly Media', 18.23, 6),
(43, 'https://images.isbndb.com/covers/43/92/9781786464392.jpg ', ' Prateek Joshi', 'TheHitchhiker&;sGuidetoPython:BestPracticesforDevelopment', '178646439X', 'Packt Publishing - ebooks Account', 20.07, 7),
(44, 'https://images.isbndb.com/covers/05/74/9781980820574.jpg ', ' Mark Lassoff', 'LearnPythoninOneDayandLearnItWell(2ndEdition):PythonforBeginnerswithHands-onProject.Theonlybookyoune', '1980820570', 'Independently published', 10.98, 9),
(45, 'https://images.isbndb.com/covers/31/76/9781491933176.jpg ', ' Kenneth Reitz', 'PythonProgramming:AStepByStepGuideForBeginners', '1491933178', 'O&#039;Reilly Media', 18.08, 2),
(46, 'https://images.isbndb.com/covers/83/30/9781546488330.jpg ', ' Jamie Chan', 'PythonMachineLearning1stEdition', '1546488332', 'CreateSpace Independent Publishing Platform', 20.24, 5),
(47, 'https://images.isbndb.com/covers/85/77/9781986278577.jpg ', ' Leonard Eddison', 'ViolentPython:ACookbookforHackersForensicAnalystsPenetrationTestersandSecurityEngineers', '1986278573', 'CreateSpace Independent Publishing Platform', 18.3, 1),
(48, 'https://images.isbndb.com/covers/51/30/9781783555130.jpg ', ' Sebastian Raschka', 'Murach&;sPythonProgramming', '1783555130', 'Packt Publishing - ebooks Account', 5.27, 1),
(49, 'https://images.isbndb.com/covers/95/76/9781597499576.jpg ', ' TJ O&#039;Connor', 'PythonProgramming:AnIntroductiontoComputerScience', '1597499579', 'Syngress', 6.58, 9),
(50, 'https://images.isbndb.com/covers/49/74/9781890774974.jpg ', ' Michael Urban', 'LearnPythontheHardWay:AVerySimpleIntroductiontotheTerrifyinglyBeautifulWorldofComputersandCode(3rdEd', '1890774979', 'Mike Murach &amp; Associates', 8.79, 3),
(51, 'https://images.isbndb.com/covers/24/10/9781590282410.jpg ', ' John Zelle', 'ProgramminginPython3:ACompleteIntroductiontothePythonLanguage(2ndEdition)', '1590282418', 'Franklin', 0, 1),
(52, 'https://images.isbndb.com/covers/49/16/9780321884916.jpg ', ' Zed A. Shaw', 'Python:TheFundamentalsOfPythonProgramming', '0321884914', 'Addison-Wesley Professional', 5.12, 6),
(53, 'https://images.isbndb.com/covers/05/63/9780321680563.jpg ', ' Mark Summerfield', 'Python:4Booksin1:Beginner&;sGuide+TipsandTricks+BestPractices+AdvancedGuidetoProgrammingCodewithPyth', '0321680561', 'Addison-Wesley Professional', 0.64, 4),
(54, 'https://images.isbndb.com/covers/02/68/9781539530268.jpg ', ' Paul Jones', 'PythonForDummies', '1539530264', 'CreateSpace Independent Publishing Platform', 3.66, 3),
(55, 'https://images.isbndb.com/covers/70/13/9781544877013.jpg ', ' Charlie Masterson', 'PythonPlayground:GeekyProjectsfortheCuriousProgrammer', '1544877013', 'CreateSpace Independent Publishing Platform', 18.63, 5),
(56, 'https://images.isbndb.com/covers/86/46/9780471778646.jpg ', ' Stef Maruch', 'Python:ThePythonQuickstartGuide-TheUltimateGuidetoPythonProgramming', '0471778648', 'For Dummies', 4.47, 0),
(57, 'https://images.isbndb.com/covers/60/41/9781593276041.jpg ', ' Mahesh Venkitachalam', 'Python:TheUltimateBeginnersGuide:StartCodingToday', '1593276044', 'No Starch Press', 9.87, 4),
(58, 'https://images.isbndb.com/covers/26/82/9781534722682.jpg ', ' Ethan Sanders', 'PythonforInformatics:ExploringInformation', '1534722688', 'CreateSpace Independent Publishing Platform', 12.54, 7),
(59, 'https://images.isbndb.com/covers/74/79/9781539497479.jpg ', ' Steve Tale', 'WebScrapingwithPython:CollectingDatafromtheModernWeb', '153949747X', 'CreateSpace Independent Publishing Platform', 19.5, 5),
(60, 'https://images.isbndb.com/covers/92/43/9781492339243.jpg ', ' Dr. Charles R Severance', 'Test-DrivenDevelopmentwithPython:ObeytheTestingGoat:UsingDjangoSeleniumandJavaScript', '1492339245', 'CreateSpace Independent Publishing Platform', 10.04, 5),
(61, 'https://images.isbndb.com/covers/87/81/9781784398781.jpg ', ' Dusty Phillips', 'Python:GuíapasoapasoparaaprenderprogramaciónPython(SpanishEdition)', '1784398780', 'Packt Publishing - ebooks Account', 6.07, 1),
(62, 'https://images.isbndb.com/covers/02/90/9781491910290.jpg ', ' Ryan Mitchell', 'PythonEssentialReference(4thEdition)', '1491910291', 'O&#039;Reilly Media', 10.41, 2),
(63, 'https://images.isbndb.com/covers/87/04/9781491958704.jpg ', ' Harry J. W. Percival', 'StartingOutwithPython(4thEdition)', '1491958707', 'O&#039;Reilly Media', 19.12, 0),
(64, 'https://images.isbndb.com/covers/87/85/9781718638785.jpg ', ' Larry Lutz', 'PandasCookbook:RecipesforScientificComputingTimeSeriesAnalysisandDataVisualizationusingPython', '1718638787', 'CreateSpace Independent Publishing Platform', 15.96, 8),
(65, 'https://images.isbndb.com/covers/97/84/9780672329784.jpg ', ' David Beazley', 'PythonMachineLearning:ATechnicalApproachToPythonMachineLearningForBeginners', '0672329786', 'Addison-Wesley Professional', 0.85, 0),
(66, 'https://images.isbndb.com/covers/43/21/9780134444321.jpg ', ' Tony Gaddis', 'LearntoProgramwithMinecraft:TransformYourWorldwiththePowerofPython', '0134444329', 'Pearson', 5.41, 3),
(67, 'https://images.isbndb.com/covers/38/78/9781784393878.jpg ', ' Theodore Petrou', 'PythoninaNutshell:ADesktopQuickReference', '1784393878', 'Packt Publishing - ebooks Account', 16.45, 6),
(68, 'https://images.isbndb.com/covers/08/78/9781986340878.jpg ', ' Leonard Eddison', 'TheQuickPythonBookSecondEdition', '1986340872', 'CreateSpace Independent Publishing Platform', 9.65, 6),
(69, 'https://images.isbndb.com/covers/67/06/9781593276706.jpg ', ' Craig Richardson', 'DataScienceFundamentalsforPythonandMongoDB', '1593276702', 'No Starch Press', 16.29, 1),
(70, 'https://images.isbndb.com/covers/29/25/9781449392925.jpg ', ' Alex Martelli', 'AStudent&;sGuidetoPythonforPhysicalModeling:UpdatedEdition', '144939292X', 'O&#039;Reilly Media', 8.82, 4),
(71, 'https://images.isbndb.com/covers/22/07/9781935182207.jpg ', ' Vernon L. Ceder', 'PythonProgramming:AnEasyGuideToLearnPythonProgrammingLanguageForAbsoluteBeginners', '193518220X', 'Manning Publications', 17.87, 5),
(72, 'https://images.isbndb.com/covers/59/66/9781484235966.jpg ', ' David Paper', 'MachineLearningwithPythonCookbook:PracticalSolutionsfromPreprocessingtoDeepLearning', '1484235967', 'Apress', 9.66, 5),
(73, 'https://images.isbndb.com/covers/05/71/9780691180571.jpg ', ' Jesse Kinder', 'PythonWithoutFear', '0691180571', 'Princeton University Press', 15.35, 8),
(74, 'https://images.isbndb.com/covers/13/21/9781986831321.jpg ', ' Marco Robert', 'FlaskWebDevelopment:DevelopingWebApplicationswithPython', '1986831329', 'CreateSpace Independent Publishing Platform', 19.45, 6),
(75, 'https://images.isbndb.com/covers/93/88/9781491989388.jpg ', ' Chris Albon', 'TheQuickPythonBook', '1491989386', 'O&#039;Reilly Media', 7.13, 2),
(76, 'https://images.isbndb.com/covers/74/76/9780134687476.jpg ', ' Brian Overland', 'NaturalLanguageProcessingwithPython:AnalyzingTextwiththeNaturalLanguageToolkit', '0134687477', 'Addison-Wesley Professional', 2.23, 6),
(77, 'https://images.isbndb.com/covers/17/32/9781491991732.jpg ', ' Miguel Grinberg', 'Python:ProgrammingBasicsforAbsoluteBeginners(Step-By-StepPython)(Volume1)', '1491991739', 'O&#039;Reilly Media', 2.43, 7),
(78, 'https://images.isbndb.com/covers/40/37/9781617294037.jpg ', ' Naomi Ceder', 'PythonforBiologists:Acompleteprogrammingcourseforbeginners', '1617294039', 'Manning Publications', 14.97, 9),
(79, 'https://images.isbndb.com/covers/64/99/9780596516499.jpg ', ' Steven Bird', 'HighPerformancePython:PracticalPerformantProgrammingforHumans', '0596516495', 'O&#039;Reilly Media', 19.51, 4),
(80, 'https://images.isbndb.com/covers/89/79/9781987518979.jpg ', ' Nathan Clark', 'PythonforDataScienceForDummies(ForDummies(Computer/Tech))', '1987518977', 'CreateSpace Independent Publishing Platform', 3.08, 6),
(81, 'https://images.isbndb.com/covers/61/35/9781492346135.jpg ', ' Dr Martin Jones', 'LearnMorePython3theHardWay:TheNextStepforNewPythonProgrammers(ZedShaw&;sHardWaySeries)', '1492346136', 'CreateSpace Independent Publishing Platform', 10.9, 5),
(82, 'https://images.isbndb.com/covers/15/94/9781449361594.jpg ', ' Micha Gorelick', 'PythonPenetrationTestingCookbook:Practicalrecipesonimplementinginformationgatheringnetworksecurityin', '1449361595', 'O&#039;Reilly Media', 0.3, 9),
(83, 'https://images.isbndb.com/covers/41/82/9781118844182.jpg ', ' John Paul Mueller', 'Python:TheUltimateBeginnersGuidetoLearnandUnderstandPythonProgramming(Volume1)', '1118844181', 'For Dummies', 18.6, 2),
(84, 'https://images.isbndb.com/covers/34/86/9780134123486.jpg ', ' Zed A. Shaw', 'Python:PythonProgrammingForBeginners:LearntheBasicsofPythonProgramming(ComputerProgrammingforBeginne', '0134123484', 'Addison-Wesley Professional', 5.98, 5),
(85, 'https://images.isbndb.com/covers/97/71/9781784399771.jpg ', ' Rejah Rehim', 'PythonMachineLearningCookbook', '1784399779', 'Packt Publishing - ebooks Account', 16.55, 8),
(86, 'https://images.isbndb.com/covers/01/56/9781986840156.jpg ', ' Mr Zach Webber', 'Python:PythonProgrammingForBeginners-TheComprehensiveGuideToPythonProgramming:ComputerProgrammingCom', '1986840158', 'CreateSpace Independent Publishing Platform', 20.27, 3),
(87, 'https://images.isbndb.com/covers/14/93/9781546611493.jpg ', ' Joseph Connor', 'PythonTestingwithpytest:SimpleRapidEffectiveandScalable', '1546611495', 'CreateSpace Independent Publishing Platform', 12.96, 9),
(88, 'https://images.isbndb.com/covers/44/77/9781786464477.jpg ', ' Prateek Joshi', 'MasteringPythonNetworking:YouronestopsolutiontousingPythonfornetworkautomationDevOpsandSDN', '1786464470', 'Packt Publishing - ebooks Account', 13.86, 3),
(89, 'https://images.isbndb.com/covers/09/53/9781537010953.jpg ', ' Adam Stark', 'PythonTestingwithpytest:SimpleRapidEffectiveandScalable', '1537010956', 'CreateSpace Independent Publishing Platform', 20.29, 0),
(90, 'https://images.isbndb.com/covers/24/04/9781680502404.jpg ', ' Brian Okken', 'ThePythons:AutobiographybythePythons', '1680502409', 'Pragmatic Bookshelf', 17.53, 3),
(91, 'https://images.isbndb.com/covers/70/05/9781784397005.jpg ', ' Eric Chou', 'PythonWebScrapingCookbook:Over90provenrecipestogetyouscrapingwithPythonmicroservicesDockerandAWS', '1784397008', 'Packt Publishing - ebooks Account', 14.44, 5),
(92, 'https://images.isbndb.com/covers/24/04/9781680502404.jpg ', ' Brian Okken', 'Python:2Booksin1:Beginner&;sGuide+BestPracticestoProgrammingCodewithPython(PythonJavaJavaScriptCodeP', '1680502409', 'Pragmatic Bookshelf', 8.38, 2),
(93, 'https://images.isbndb.com/covers/14/45/9780312311445.jpg ', ' Graham Chapman', 'LearnPythoninOneDayandLearnItWell:PythonforBeginnerswithHands-onProject.Theonlybookyouneedtostartcod', '0312311443', 'Thomas Dunne Books', 11.11, 6),
(94, 'https://images.isbndb.com/covers/52/17/9781787285217.jpg ', ' Michael Heydt', 'Python:ProgrammingForAdvanced:LearnTheBasicsOfPythonIn7Days!', '1787285219', 'Packt Publishing - ebooks Account', 1.2, 6),
(95, 'https://images.isbndb.com/covers/27/56/9781543292756.jpg ', ' Charlie Masterson', 'Pythonin24HoursSamsTeachYourself(2ndEdition)', '1543292755', 'CreateSpace Independent Publishing Platform', 12.08, 7),
(96, 'https://images.isbndb.com/covers/43/80/9781506094380.jpg ', ' Jamie Chan', 'Pythonineasysteps', '1506094384', 'CreateSpace Independent Publishing Platform', 3.87, 9),
(97, 'https://images.isbndb.com/covers/11/41/9781980921141.jpg ', ' Maurice J. Thompson', 'ProblemSolvingwithAlgorithmsandDataStructuresUsingPythonSECONDEDITION', '1980921148', 'Independently published', 6.16, 6),
(98, 'https://images.isbndb.com/covers/68/74/9780672336874.jpg ', ' Katie Cunningham', 'Java:ABeginner&;sGuideSeventhEdition', '0672336871', 'Sams Publishing', 8.12, 0),
(99, 'https://images.isbndb.com/covers/59/68/9781840785968.jpg ', ' Mike McGrath', 'HeadFirstJava2ndEdition', '1840785969', 'In Easy Steps Limited', 17.79, 0),
(100, 'https://images.isbndb.com/covers/25/71/9781590282571.jpg ', ' Bradley N. Miller', 'EffectiveJava(3rdEdition)', '1590282574', 'Franklin', 0, 3),
(101, 'https://images.isbndb.com/covers/93/17/9781259589317.jpg ', ' Herbert Schildt', 'Java:ProgrammingBasicsforAbsoluteBeginners(Step-By-StepJava)(Volume1)', '1259589315', 'McGraw-Hill Education', 19.87, 1),
(102, 'https://images.isbndb.com/covers/92/05/9780596009205.jpg ', ' Kathy Sierra', 'CoreJavaVolumeI-Fundamentals(10thEdition)(CoreSeries)', '0596009208', 'O&#039;Reilly Media', 9.13, 6),
(103, 'https://images.isbndb.com/covers/59/91/9780134685991.jpg ', ' Joshua Bloch', 'Java:ABeginner&;sGuideSixthEdition', '0134685997', 'Addison-Wesley Professional', 12.47, 0),
(104, 'https://images.isbndb.com/covers/44/71/9781978104471.jpg ', ' Nathan Clark', 'Java:TheCompleteReferenceTenthEdition(CompleteReferenceSeries)', '1978104472', 'CreateSpace Independent Publishing Platform', 1.85, 8),
(105, 'https://images.isbndb.com/covers/73/04/9780134177304.jpg ', ' Cay S. Horstmann', 'LearnJavainOneDayandLearnItWell(LearnCodingFast)(Volume4)', '0134177304', 'Prentice Hall', 12.98, 2),
(106, 'https://images.isbndb.com/covers/92/52/9780071809252.jpg ', ' Herbert Schildt', 'JavaAll-in-OneForDummies(ForDummies(Computers))', '0071809252', 'McGraw-Hill Education', 11.85, 9),
(107, 'https://images.isbndb.com/covers/93/31/9781259589331.jpg ', ' Herbert Schildt', 'Murach&;sJavaProgramming(5thEdition)', '1259589331', 'McGraw-Hill Education', 17.08, 5),
(108, 'https://images.isbndb.com/covers/78/30/9781539397830.jpg ', ' Jamie Chan', 'OCA/OCPJavaSE8ProgrammerCertificationKit:Exam1Z0-808andExam1Z0-809', '1539397831', 'CreateSpace Independent Publishing Platform', 8.85, 5),
(109, 'https://images.isbndb.com/covers/77/91/9781119247791.jpg ', ' Doug Lowe', 'IntroductiontoJavaProgrammingandDataStructuresComprehensiveVersion(11thEdition)', '1119247799', 'For Dummies', 8.61, 0),
(110, 'https://images.isbndb.com/covers/20/77/9781943872077.jpg ', ' Joel Murach', 'ElementsofProgrammingInterviewsinJava:TheInsiders&;Guide', '1943872074', 'Mike Murach &amp; Associates', 8.9, 7),
(111, 'https://images.isbndb.com/covers/20/90/9781119272090.jpg ', ' Jeanne Boyarsky', 'JavaConcurrencyinPractice', '1119272092', 'Sybex', 16.24, 4),
(112, 'https://images.isbndb.com/covers/09/42/9780134670942.jpg ', ' Y. Daniel Liang', 'Java8inAction:LambdasStreamsandfunctional-styleprogramming', '0134670949', 'Pearson', 2.84, 7),
(113, 'https://images.isbndb.com/covers/12/73/9781517671273.jpg ', ' Adnan Aziz', 'StartingOutwithJava:FromControlStructuresthroughObjects(6thEdition)', '1517671272', 'CreateSpace Independent Publishing Platform', 12, 9),
(114, 'https://images.isbndb.com/covers/96/06/9780321349606.jpg ', ' Brian Goetz', 'BeginningProgrammingwithJavaForDummies', '0321349601', 'Addison-Wesley Professional', 20.07, 4),
(115, 'https://images.isbndb.com/covers/19/99/9781617291999.jpg ', ' Raoul-Gabriel Urma', 'DataStructuresandAlgorithmsinJava(2ndEdition)', '1617291994', 'Manning Publications', 1.49, 3),
(116, 'https://images.isbndb.com/covers/70/51/9780133957051.jpg ', ' Tony Gaddis', 'Java:TheCompleteReferenceNinthEdition', '0133957055', 'Pearson', 3.8, 8),
(117, 'https://images.isbndb.com/covers/78/13/9781118407813.jpg ', ' Barry A. Burd', 'ThinkinginJava(4thEdition)', '1118407814', 'For Dummies', 3.97, 8),
(118, 'https://images.isbndb.com/covers/45/36/9780672324536.jpg ', ' Robert Lafore', 'OCA:OracleCertifiedAssociateJavaSE8ProgrammerIStudyGuide:Exam1Z0-808', '0672324539', 'Sams Publishing', 19, 9),
(119, 'https://images.isbndb.com/covers/85/52/9780071808552.jpg ', ' Herbert Schildt', 'Javain24HoursSamsTeachYourself(CoveringJava9)(8thEdition)', '0071808558', 'McGraw-Hill Education', 14.37, 3),
(120, 'https://images.isbndb.com/covers/24/86/9780131872486.jpg ', ' Bruce Eckel', 'JavaPrecisely(MITPress)', '0131872486', 'Prentice Hall', 16.53, 2),
(121, 'https://images.isbndb.com/covers/74/00/9781118957400.jpg ', ' Jeanne Boyarsky', 'LearningJavabyBuildingAndroidGames:ExploreJavaThroughMobileGameDevelopment', '1118957407', 'Sybex', 12.59, 4),
(122, 'https://images.isbndb.com/covers/79/49/9780672337949.jpg ', ' Rogers Cadenhead', 'BeginningProgrammingwithJavaForDummies(ForDummies(Computer/Tech))', '0672337940', 'Sams Publishing', 19.28, 0),
(123, 'https://images.isbndb.com/covers/90/75/9780262529075.jpg ', ' Peter Sestoft', 'IntrotoJavaProgrammingComprehensiveVersion(10thEdition)', '0262529076', 'The MIT Press', 3.48, 8),
(124, 'https://images.isbndb.com/covers/88/59/9781784398859.jpg ', ' John Horton', 'CoreJavaVolumeII--AdvancedFeatures(10thEdition)(CoreSeries)', '1784398853', 'Packt Publishing - ebooks Account', 9.9, 0),
(125, 'https://images.isbndb.com/covers/55/38/9781119235538.jpg ', ' Barry A. Burd', 'LearnJavatheEasyWay:AHands-OnIntroductiontoProgramming', '1119235537', 'For Dummies', 11.71, 4),
(126, 'https://images.isbndb.com/covers/13/13/9780133761313.jpg ', ' Y. Daniel Liang', 'MasteringJava9:Writereactivemodularconcurrentandsecurecode', '0133761312', 'Pearson', 11.95, 8),
(127, 'https://images.isbndb.com/covers/72/98/9780134177298.jpg ', ' Cay S. Horstmann', 'Java:AnIntroductiontoProblemSolvingandProgramming(7thEdition)', '0134177290', 'Prentice Hall', 10.96, 3),
(128, 'https://images.isbndb.com/covers/80/52/9781593278052.jpg ', ' Bryson Payne', 'BuildingJavaPrograms:ABacktoBasicsApproach(4thEdition)', '1593278055', 'No Starch Press', 5.73, 0),
(129, 'https://images.isbndb.com/covers/87/34/9781786468734.jpg ', ' Dr. Edward Lavieri', 'Java:SimpleBeginner’sGuidetoJavaProgramming(TipsandTricksStrategiesJavaScriptProgramming)', '1786468735', 'Packt Publishing - ebooks Account', 12.41, 7),
(130, 'https://images.isbndb.com/covers/62/64/9780133766264.jpg ', ' Walter Savitch', 'Java:AnIntroductiontoProblemSolvingandProgramming(6thEdition)', '0133766268', 'Pearson', 15.08, 1),
(131, 'https://images.isbndb.com/covers/27/66/9780134322766.jpg ', ' Stuart Reges', 'Java:AdvancedFeaturesandProgrammingTechniques(Step-By-StepJava)(Volume3)', '0134322762', 'Pearson', 6.76, 6),
(132, 'https://images.isbndb.com/covers/39/14/9781718753914.jpg ', ' Paul Laurence', 'MasteringJava9:Writereactivemodularconcurrentandsecurecode', '1718753918', 'CreateSpace Independent Publishing Platform', 17.79, 9),
(133, 'https://images.isbndb.com/covers/27/08/9780132162708.jpg ', ' Walter Savitch', 'JavainaNutshell:ADesktopQuickReference', '0132162709', 'Pearson', 8.78, 9),
(134, 'https://images.isbndb.com/covers/43/04/9781985574304.jpg ', ' Nathan Clark', 'JavaHowtoProgramEarlyObjects(11thEdition)(Deitel:HowtoProgram)', '1985574306', 'CreateSpace Independent Publishing Platform', 18.11, 6),
(135, 'https://images.isbndb.com/covers/87/34/9781786468734.jpg ', ' Dr. Edward Lavieri', 'Java9forProgrammers(4thEdition)(DeitelDeveloperSeries)', '1786468735', 'Packt Publishing - ebooks Account', 10.04, 0),
(136, 'https://images.isbndb.com/covers/08/24/9781449370824.jpg ', ' Benjamin J Evans', 'Java:ADetailedApproachtoPracticalCoding(Step-By-StepJava)(Volume2)', '1449370829', 'O&#039;Reilly Media', 0.9, 1),
(137, 'https://images.isbndb.com/covers/33/56/9780134743356.jpg ', ' Paul J. Deitel', 'Java:2017UltimateBeginnersGuidetoLearnJavaProgramming(javafordummiesjavaappsjavaforbeginnersjavaapps', '0134743350', 'Pearson', 19.89, 1),
(138, 'https://images.isbndb.com/covers/75/66/9780134777566.jpg ', ' Paul J. Deitel', 'OCPJavaSE8ProgrammerIIExamGuide(Exam1Z0-809)', '0134777565', 'Prentice Hall', 17.33, 9),
(139, 'https://images.isbndb.com/covers/36/95/9781983683695.jpg ', ' Nathan Clark', 'ModernJavainAction:Lambdastreamsfunctionalandreactiveprogramming', '1983683698', 'CreateSpace Independent Publishing Platform', 18.75, 2),
(140, 'https://images.isbndb.com/covers/34/91/9781544763491.jpg ', ' Andrew Butler', 'Java:TheUltimateBeginnersGuidetoJavaProgramming', '1544763492', 'CreateSpace Independent Publishing Platform', 8.15, 2),
(141, 'https://images.isbndb.com/covers/73/87/9781260117387.jpg ', ' Kathy Sierra', 'LearningJava:ABestsellingHands-OnJavaTutorial', '1260117383', 'McGraw-Hill Education', 4.28, 6),
(142, 'https://images.isbndb.com/covers/35/66/9781617293566.jpg ', ' Raoul-Gabriel Urma', 'CoreJavaSE9fortheImpatient(2ndEdition)', '1617293563', 'Manning Publications', 13.86, 3),
(143, 'https://images.isbndb.com/covers/12/14/9781539591214.jpg ', ' Steve Tale', 'OCA/OCPJavaSE8ProgrammerPracticeTests', '1539591212', 'CreateSpace Independent Publishing Platform', 7.68, 6),
(144, 'https://images.isbndb.com/covers/92/43/9781449319243.jpg ', ' Patrick Niemeyer', 'MasteringJavaMachineLearning:AJavadeveloper&;sguidetoimplementingmachinelearningandbigdataarchitectu', '1449319246', 'O&#039;Reilly Media', 17.09, 4),
(145, 'https://images.isbndb.com/covers/47/26/9780134694726.jpg ', ' Cay S. Horstmann', 'ModernJavaRecipes:SimpleSolutionstoDifficultProblemsinJava8and9', '0134694724', 'Addison-Wesley Professional', 5.56, 2),
(146, 'https://images.isbndb.com/covers/33/92/9781119363392.jpg ', ' Scott Selikoff', 'JavaCookbook:SolutionsandExamplesforJavaDevelopers', '111936339X', 'Sybex', 5.2, 2),
(147, 'https://images.isbndb.com/covers/05/13/9781785880513.jpg ', ' Dr. Uday Kamath', 'StartingOutwithJava:FromControlStructuresthroughDataStructures(3rdEdition)', '1785880519', 'Packt Publishing - ebooks Account', 19.74, 9),
(148, 'https://images.isbndb.com/covers/31/72/9781491973172.jpg ', ' Ken Kousen', 'JavaCookbook:SolutionsandExamplesforJavaDevelopers', '149197317X', 'O&#039;Reilly Media', 1.14, 8),
(149, 'https://images.isbndb.com/covers/70/49/9781449337049.jpg ', ' Ian F. Darwin', 'IntroductiontoProgramminginJava:AnInterdisciplinaryApproach(2ndEdition)', '144933704X', 'O&#039;Reilly Media', 5.51, 5),
(150, 'https://images.isbndb.com/covers/81/79/9780134038179.jpg ', ' Tony Gaddis', 'OptimizingJava:PracticalTechniquesforImprovingJVMApplicationPerformance', '0134038177', 'Pearson', 1.45, 1),
(151, 'https://images.isbndb.com/covers/70/49/9781449337049.jpg ', ' Ian F. Darwin', 'JavaByComparison:BecomeaJavaCraftsmanin70Examples', '144933704X', 'O&#039;Reilly Media', 4.3, 6),
(152, 'https://images.isbndb.com/covers/78/40/9780672337840.jpg ', ' Robert Sedgewick', 'EffectiveJava(2ndEdition)', '0672337843', 'Addison-Wesley Professional', 12.29, 6),
(153, 'https://images.isbndb.com/covers/57/95/9781492025795.jpg ', ' Benjamin J Evans', 'JavaSoftwareSolutions(9thEdition)', '1492025798', 'O&#039;Reilly Media', 7.18, 5),
(154, 'https://images.isbndb.com/covers/28/79/9781680502879.jpg ', ' Simon Harrer', 'JavaEE8ApplicationDevelopment:DevelopEnterpriseapplicationsusingthelatestversionsofCDIJAX-RSJSON-BJP', '1680502875', 'Pragmatic Bookshelf', 13.45, 5),
(155, 'https://images.isbndb.com/covers/66/80/9780321356680.jpg ', ' Joshua Bloch', 'EffectiveJava:ProgrammingLanguageGuide(JavaSeries)', '0321356683', 'Addison-Wesley', 11.65, 5),
(156, 'https://images.isbndb.com/covers/20/28/9780134462028.jpg ', ' John Lewis', 'Murach&;sBeginningJavawithEclipse', '0134462025', 'Pearson', 13.42, 6),
(157, 'https://images.isbndb.com/covers/36/79/9781788293679.jpg ', ' David R. Heffelfinger', 'ThinkJava:HowtoThinkLikeaComputerScientist', '1788293673', 'Packt Publishing - ebooks Account', 20.15, 1),
(158, 'https://images.isbndb.com/covers/00/54/9780201310054.jpg ', ' Joshua Bloch', 'Java:LearnJavaProgramminginOneWeekwithStepByStepTutorials', '0201310058', 'Addison-Wesley', 9.87, 1),
(159, 'https://images.isbndb.com/covers/48/99/9781890774899.jpg ', ' Joel Murach', 'JavaPerformance:TheDefinitiveGuide:GettingtheMostOutofYourCode', '1890774898', 'Mike Murach &amp; Associates', 4.02, 9),
(160, 'https://images.isbndb.com/covers/95/68/9781491929568.jpg ', ' Allen B. Downey', 'Java:AnEventfulApproach', '1491929561', 'O&#039;Reilly Media', 13.61, 4),
(161, 'https://images.isbndb.com/covers/79/50/9781973707950.jpg ', ' Dr. Michael Lombard', 'AbsoluteJava(6thEdition)', '1973707950', 'CreateSpace Independent Publishing Platform', 5.63, 4),
(162, 'https://images.isbndb.com/covers/84/57/9781449358457.jpg ', ' Scott Oaks', 'OCAJavaSE8ProgrammerIExamGuide(Exams1Z0-808)', '1449358454', 'O&#039;Reilly Media', 2.1, 9),
(163, 'https://images.isbndb.com/covers/41/59/9780131424159.jpg ', ' Kim Bruce', 'OCP:OracleCertifiedProfessionalJavaSE8ProgrammerIIStudyGuide:Exam1Z0-809', '0131424157', 'Pearson', 2.82, 0),
(164, 'https://images.isbndb.com/covers/16/74/9780134041674.jpg ', ' Walter Savitch', 'JavaProgrammingforBeginners:LearnthefundamentalsofprogrammingwithJava', '0134041674', 'Pearson', 11.9, 1),
(165, 'https://images.isbndb.com/covers/13/95/9781260011395.jpg ', ' Kathy Sierra', 'JavaForDummies(ForDummies(Computers))', '1260011399', 'McGraw-Hill Education', 14.21, 6),
(166, 'https://images.isbndb.com/covers/79/00/9781119067900.jpg ', ' Jeanne Boyarsky', 'TheJavaProgrammingLanguage4thEdition', '1119067901', 'Sybex', 19.41, 2),
(167, 'https://images.isbndb.com/covers/62/98/9781788296298.jpg ', ' Mark Lassoff', 'CoreJavafortheImpatient', '178829629X', 'Packt Publishing', 13.9, 3),
(168, 'https://images.isbndb.com/covers/55/52/9781119235552.jpg ', ' Barry A. Burd', 'Java:HowtoProgram8thEdition', '1119235553', 'For Dummies', 16.42, 6),
(169, 'https://images.isbndb.com/covers/98/04/9780321349804.jpg ', ' Ken Arnold', 'OCP:OracleCertifiedProfessionalJavaSE8ProgrammerIIStudyGuide:Exam1Z0-809', '0321349806', 'Addison-Wesley Professional', 13.78, 1),
(170, 'https://images.isbndb.com/covers/63/29/9780321996329.jpg ', ' Cay S. Horstmann', 'JavaProgrammingforBeginners:LearnthefundamentalsofprogrammingwithJava', '0321996321', 'Addison-Wesley Professional', 5.75, 9),
(171, 'https://images.isbndb.com/covers/30/64/9780136053064.jpg ', ' Harvey M. Deitel', 'JavaProgramming(MindTapCourseList)', '0136053068', 'Pearson', 16.76, 0),
(172, 'https://images.isbndb.com/covers/79/00/9781119067900.jpg ', ' Jeanne Boyarsky', 'Javaineasysteps:CoversJava9', '1119067901', 'Sybex', 11.41, 5),
(173, 'https://images.isbndb.com/covers/62/98/9781788296298.jpg ', ' Mark Lassoff', 'JavaEEDevelopmentwithEclipse-SecondEdition', '178829629X', 'Packt Publishing', 11.72, 2),
(174, 'https://images.isbndb.com/covers/69/19/9781285856919.jpg ', ' Joyce Farrell', 'JavaHowToProgramLateObjects(11thEdition)', '1285856910', 'Course Technology', 13.95, 7),
(175, 'https://images.isbndb.com/covers/75/35/9781840787535.jpg ', ' Mike McGrath', 'HeadFirstDesignPatterns:ABrain-FriendlyGuide', '1840787538', 'In Easy Steps Limited', 17.12, 8),
(176, 'https://images.isbndb.com/covers/53/49/9781785285349.jpg ', ' Ram Kulkarni', 'Java:Today&;sProgrammingLanguage(Volume)', '1785285343', 'Packt Publishing - ebooks Account', 12.39, 7),
(177, 'https://images.isbndb.com/covers/14/01/9780134791401.jpg ', ' Paul J. Deitel', 'Javain21DaysSamsTeachYourself(CoveringJava8)(7thEdition)', '0134791401', 'Pearson', 6.59, 0),
(178, 'https://images.isbndb.com/covers/71/26/9780596007126.jpg ', ' Eric Freeman', 'DataStructuresandAlgorithmsMadeEasyinJava:DataStructureandAlgorithmicPuzzles', '0596007124', 'O&#039;Reilly Media', 13.41, 7),
(179, 'https://images.isbndb.com/covers/72/18/9780997817218.jpg ', ' Joslyn A Smith', 'JAVA:TheUltimateBeginner&;sGuide!', '0997817216', 'Joslyn A. Smith', 10.49, 7),
(180, 'https://images.isbndb.com/covers/71/09/9780672337109.jpg ', ' Rogers Cadenhead', 'JavaInterviewGuide:HowtoBuildConfidenceWithaSolidUnderstandingofCoreJavaPrinciples', '067233710X', 'Sams Publishing', 8.53, 0),
(181, 'https://images.isbndb.com/covers/75/54/9788192107554.jpg ', ' Narasimha Karumanchi', 'Java:LearnJavaIn2Hours!', '8192107558', 'CareerMonk Publications', 12.98, 2),
(182, 'https://images.isbndb.com/covers/13/91/9781530011391.jpg ', ' Andrew Johansen', 'Java8PocketGuide:InstantHelpforJavaProgrammers', '1530011396', 'CreateSpace Independent Publishing Platform', 0.47, 7),
(183, 'https://images.isbndb.com/covers/34/26/9780692573426.jpg ', ' Anthony DePalma', 'JavaandAlgorithmicThinkingfortheCompleteBeginner:LearntoThinkLikeaProgrammer', '0692573429', 'Anthony DePalma', 12.33, 4),
(184, 'https://images.isbndb.com/covers/98/57/9781981399857.jpg ', ' Cooper Alvin', 'CoreJavaVolumeII-AdvancedFeatures(11thEdition)', '1981399852', 'CreateSpace Independent Publishing Platform', 13.79, 8),
(185, 'https://images.isbndb.com/covers/08/64/9781491900864.jpg ', ' Robert Liguori', 'JavaAll-in-OneForDummies', '1491900865', 'O&#039;Reilly Media', 4.65, 5),
(186, 'https://images.isbndb.com/covers/93/91/9781506179391.jpg ', ' Aristides S Bouras', 'JavaHowToProgram(EarlyObjects)(10thEdition)', '1506179398', 'CreateSpace Independent Publishing Platform', 14.77, 4),
(187, 'https://images.isbndb.com/covers/63/14/9780135166314.jpg ', ' Cay S. Horstmann', 'StartingOutwithJava:FromControlStructuresthroughObjectsplusMyLabProgrammingwithPearsoneText-AccessCa', '0135166314', 'Prentice Hall', 10.51, 5),
(188, 'https://images.isbndb.com/covers/17/25/9780470371725.jpg ', ' Doug Lowe', 'StartingOutwithJava:FromControlStructuresthroughObjectsplusMyLabProgrammingwithPearsoneText-AccessCa', '0470371722', 'For Dummies', 16.03, 8),
(189, 'https://images.isbndb.com/covers/78/06/9780133807806.jpg ', ' Paul J. Deitel', 'LearningJavawithGames', '0133807800', 'Pearson', 5.22, 5),
(190, 'https://images.isbndb.com/covers/98/77/9780134059877.jpg ', ' Tony Gaddis', 'CoreJavaVolumeII-AdvancedFeatures(11thEdition)', '0134059875', 'Pearson', 1.09, 8),
(191, 'https://images.isbndb.com/covers/98/77/9780134059877.jpg ', ' Tony Gaddis', 'JavaForKids(andgrown-ups):LearntocodeandcreateyourownprojectswithJava8', '0134059875', 'Pearson', 1.71, 6),
(192, 'https://images.isbndb.com/covers/88/58/9783319728858.jpg ', ' Chong-wei Xu', 'Java:HowtoProgram9thEdition(Deitel)', '3319728857', 'Springer', 2.19, 8),
(193, 'https://images.isbndb.com/covers/63/14/9780135166314.jpg ', ' Cay S. Horstmann', 'Java:TheDefiniteBeginner&;sGuidetoGetStartedwithJavaProgramming', '0135166314', 'Prentice Hall', 13.1, 6),
(194, 'https://images.isbndb.com/covers/73/14/9781981597314.jpg ', ' Nadia Ameziane Garcia', 'BigJavaBinderReadyVersion:EarlyObjects', '198159731X', 'CreateSpace Independent Publishing Platform', 15.05, 2),
(195, 'https://images.isbndb.com/covers/56/69/9780132575669.jpg ', ' Paul Deitel', 'Java:ABeginner&;sTutorialUpdatedforJavaSE8', '0132575663', 'Prentice Hall', 1.38, 7),
(196, 'https://images.isbndb.com/covers/64/22/9781985706422.jpg ', ' IT Starter Series', 'JavatheCompleteReference', '1985706423', 'CreateSpace Independent Publishing Platform', 3.21, 1),
(197, 'https://images.isbndb.com/covers/64/47/9781119056447.jpg ', ' Cay S. Horstmann', 'Java:TheGoodParts:UnearthingtheExcellenceinJava', '1119056446', 'Wiley', 16.5, 2),
(198, 'https://images.isbndb.com/covers/30/47/9780992133047.jpg ', ' Budi Kurniawan', 'RubyForBeginners:YourGuideToEasilyLearnRubyProgrammingin7days', '0992133041', 'BrainySoftware', 16, 6),
(199, 'https://images.isbndb.com/covers/87/03/9781978388703.jpg ', ' Mr Kotiyana', 'TheRubyProgrammingLanguage:EverythingYouNeedtoKnow', '1978388705', 'CreateSpace Independent Publishing Platform', 12.14, 3),
(200, 'https://images.isbndb.com/covers/37/35/9780596803735.jpg ', ' Jim Waldo', 'TheStoryOfRubyBridges:SpecialAnniversaryEdition', '0596803737', 'O&#039;Reilly Media', 3.56, 6),
(201, 'https://images.isbndb.com/covers/77/04/9781521367704.jpg ', ' iCode Academy', 'Ruby&;sWish', '1521367701', 'Independently published', 19.19, 5),
(202, 'https://images.isbndb.com/covers/61/78/9780596516178.jpg ', ' David Flanagan', 'RubyonRailsTutorial:LearnWebDevelopmentwithRails(4thEdition)(Addison-WesleyProfessionalRubySeries)', '0596516177', 'O&#039;Reilly Media', 15.97, 6),
(203, 'https://images.isbndb.com/covers/22/65/9780439472265.jpg ', ' Robert Coles', 'PracticalObject-OrientedDesigninRuby:AnAgilePrimer(Addison-WesleyProfessionalRubySeries)', '0439472261', 'Scholastic Paperbacks', 15.79, 0),
(204, 'https://images.isbndb.com/covers/56/93/9781452145693.jpg ', ' Shirin Yim Bridges', 'RubytheCopycat', '1452145695', 'Chronicle Books', 2.35, 4),
(205, 'https://images.isbndb.com/covers/86/28/9780134598628.jpg ', ' Michael Hartl', 'HeadFirstRuby:ABrain-FriendlyGuide', '0134598628', 'Addison-Wesley Professional', 17.97, 4),
(206, 'https://images.isbndb.com/covers/13/34/9780321721334.jpg ', ' Sandi Metz', 'Ruby:TheRedFairy(RainbowMagic:TheRainbowFairiesNo.1)', '0321721330', 'Addison-Wesley Professional', 1.72, 4),
(207, 'https://images.isbndb.com/covers/22/89/9780439472289.jpg ', ' Margaret Rathmann', 'HelloRuby:JourneyInsidetheComputer', '0439472288', 'Scholastic', 14.15, 9),
(208, 'https://images.isbndb.com/covers/26/51/9781449372651.jpg ', ' Jay McGavren', 'RubyRedfortBlinkandYouDie', '1449372651', 'O&#039;Reilly Media', 7.72, 1),
(209, 'https://images.isbndb.com/covers/86/13/9780439738613.jpg ', ' Daisy Meadows', 'RubyPocketReference:InstantHelpforRubyProgrammers', '043973861X', 'Scholastic Inc.', 8.08, 8),
(210, 'https://images.isbndb.com/covers/53/22/9781250065322.jpg ', ' Linda Liukas', 'RubyLeeandMe', '1250065321', 'Feiwel &amp; Friends', 3.89, 2),
(211, 'https://images.isbndb.com/covers/47/26/9780763654726.jpg ', ' Lauren Child', 'EloquentRuby(Addison-WesleyProfessionalRubySeries)', '0763654728', 'Candlewick', 18.01, 1),
(212, 'https://images.isbndb.com/covers/60/17/9781491926017.jpg ', ' Michael Fitzgerald', 'York:TheShadowCipher', '1491926015', 'O&#039;Reilly Media', 5.17, 5),
(213, 'https://images.isbndb.com/covers/23/19/9780545782319.jpg ', ' Shannon Hitchcock', 'RubyHoller', '0545782317', 'Scholastic Press', 17.46, 8),
(214, 'https://images.isbndb.com/covers/41/06/9780321584106.jpg ', ' Russ Olsen', 'EatUp:FoodAppetiteandEatingWhatYouWant', '0321584104', 'Addison-Wesley Professional', 7.24, 8),
(215, 'https://images.isbndb.com/covers/69/44/9780062306944.jpg ', ' Laura Ruby', 'BrandNewSchoolBraveNewRuby(RubyandtheBookerBoys#1)', '0062306944', 'Walden Pond Press', 13.28, 7),
(216, 'https://images.isbndb.com/covers/01/57/9780060560157.jpg ', ' Sharon Creech', 'LearntoProgramSecondEdition(TheFacetsofRubySeries)', '0060560150', 'HarperCollins', 0.37, 9),
(217, 'https://images.isbndb.com/covers/95/97/9781781259597.jpg ', ' Ruby Tandoh', 'AgileWebDevelopmentwithRails5.1', '1781259593', 'Serpent&#039;s Tail', 9.35, 4),
(218, 'https://images.isbndb.com/covers/76/02/9780545017602.jpg ', ' Derrick Barnes', 'York:TheShadowCipher', '0545017602', 'Scholastic Paperbacks', 6.3, 9),
(219, 'https://images.isbndb.com/covers/63/64/9781934356364.jpg ', ' Chris Pine', 'LearntoProgramSecondEdition(TheFacetsofRubySeries)', '1934356360', 'Pragmatic Bookshelf', 8.73, 4),
(220, 'https://images.isbndb.com/covers/25/10/9781680502510.jpg ', ' Sam Ruby', 'TheRubyWay:SolutionsandTechniquesinRubyProgramming(3rdEdition)(Addison-WesleyProfessionalRubySeries)', '1680502514', 'Pragmatic Bookshelf', 6.73, 8),
(221, 'https://images.isbndb.com/covers/69/44/9780062306944.jpg ', ' Laura Ruby', 'AFrameworkforUnderstandingPoverty;ACognitiveApproach', '0062306944', 'Walden Pond Press', 5.36, 0),
(222, 'https://images.isbndb.com/covers/63/64/9781934356364.jpg ', ' Chris Pine', 'TheRails5Way(4thEdition)(Addison-WesleyProfessionalRubySeries)', '1934356360', 'Pragmatic Bookshelf', 4.18, 9),
(223, 'https://images.isbndb.com/covers/46/33/9780321714633.jpg ', ' Hal Fulton', 'RubyLuBraveandTrue', '0321714636', 'Addison-Wesley Professional', 12.01, 6),
(224, 'https://images.isbndb.com/covers/80/16/9781938248016.jpg ', ' Ruby K. Payne', 'TheRubyCircle:ABloodlinesNovel', '1938248015', 'aha! Process', 0, 8),
(225, 'https://images.isbndb.com/covers/76/77/9780134657677.jpg ', ' Obie Fernandez', 'RubyBridgesGoestoSchool:MyTrueStory(ScholasticReaderLevel2)', '0134657675', 'Addison-Wesley Professional', 8.44, 3),
(226, 'https://images.isbndb.com/covers/38/94/9781416913894.jpg ', ' Lenore Look', 'RubyUnderaMicroscope:AnIllustratedGuidetoRubyInternals', '1416913890', 'Atheneum Books for Young Readers', 16.67, 2),
(227, 'https://images.isbndb.com/covers/63/35/9781595146335.jpg ', ' Richelle Mead', 'PracticalObject-OrientedDesign:AnAgilePrimerUsingRuby(2ndEdition)', '1595146334', 'Razorbill', 14.57, 4),
(228, 'https://images.isbndb.com/covers/85/53/9780545108553.jpg ', ' Ruby Bridges', 'LoveRubyLavender', '0545108551', 'Cartwheel Books', 6.58, 5),
(229, 'https://images.isbndb.com/covers/52/73/9781593275273.jpg ', ' Pat Shaughnessy', 'RubyRedfortFeeltheFear', '1593275277', 'No Starch Press', 3.68, 8),
(230, 'https://images.isbndb.com/covers/64/78/9780134456478.jpg ', ' Sandi Metz', 'Ruby(Landry)', '0134456475', 'Addison-Wesley Professional', 9.95, 4),
(231, 'https://images.isbndb.com/covers/47/86/9780152054786.jpg ', ' Deborah Wiles', 'ThroughMyEyes', '0152054782', 'HMH Books for Young Readers', 18.06, 1),
(232, 'https://images.isbndb.com/covers/45/24/9780763694524.jpg ', ' Lauren Child', 'RubyintheRuins', '0763694525', 'Candlewick', 8.41, 6),
(233, 'https://images.isbndb.com/covers/22/44/9781501162244.jpg ', ' V.C. Andrews', 'RubyInHerOwnTime', '1501162241', 'Pocket Books', 6.37, 6),
(234, 'https://images.isbndb.com/covers/92/31/9780590189231.jpg ', ' Ruby Bridges', 'TheRuinedHouse:ANovel', '0590189239', 'Scholastic Press', 9.72, 1),
(235, 'https://images.isbndb.com/covers/23/77/9780763692377.jpg ', ' Shirley Hughes', 'RubyontheOutside', '0763692379', 'Candlewick', 19.95, 1),
(236, 'https://images.isbndb.com/covers/91/55/9780439579155.jpg ', ' Jonathan Emmett', 'PiperandRuby:TheCourageWithin', '0439579155', 'Scholastic Press', 20.07, 2),
(237, 'https://images.isbndb.com/covers/74/92/9780062467492.jpg ', ' Ruby Namdar', 'MemoriesUnwound', '0062467492', 'Harper', 5.81, 7),
(238, 'https://images.isbndb.com/covers/50/44/9781442485044.jpg ', ' Nora Raleigh Baskin', 'RubytheFosterDog', '1442485043', 'Simon &amp; Schuster Books for Young Readers', 13.33, 5),
(239, 'https://images.isbndb.com/covers/07/42/9781480860742.jpg ', ' Stefanie Phillips', 'PokémonOmegaRuby&amp;AlphaSapphireVol.6(Pokemon)', '1480860743', 'Archway Publishing', 20.02, 6),
(240, 'https://images.isbndb.com/covers/53/21/9781527205321.jpg ', ' Ruby Dhal', 'BridgesOutofPoverty:StrategiesforProfessionalandCommunities', '1527205320', 'Ajmeet Dhal', 18.43, 4),
(241, 'https://images.isbndb.com/covers/40/89/9781424554089.jpg ', ' Jimmy Wayne', 'RubyRed(TheRubyRedTrilogy)', '142455408X', 'Broadstreet Publishing Group', 0, 6),
(242, 'https://images.isbndb.com/covers/73/86/9781421597386.jpg ', ' Hidenori Kusaka', 'WastingtimeillusionsVersusreality', '1421597381', 'VIZ Media - Children&#039;s', 1.03, 2),
(243, 'https://images.isbndb.com/covers/33/57/9781934583357.jpg ', ' Philip E. DeVol', 'FarAboveRubies:APracticalGuidethroughProverbs31forBiblicalWomanhood', '1934583359', 'aha! Process', 0, 15),
(244, 'https://images.isbndb.com/covers/15/13/9780312551513.jpg ', ' Kerstin Gier', 'Ruby&;sChineseNewYear', '0312551517', 'Square Fish', 8.54, 1),
(245, 'https://images.isbndb.com/covers/50/58/9780692095058.jpg ', ' Ruby Larry', 'RubyRidge:TheTruthandTragedyoftheRandyWeaverFamily', '0692095055', 'Ruby Larry', 3.12, 5),
(246, 'https://images.isbndb.com/covers/27/50/9781533662750.jpg ', ' Brenda Leavenworth', 'Ruby&;sBeautyShop(MaxandRuby)', '1533662754', 'CreateSpace Independent Publishing Platform', 10.95, 8),
(247, 'https://images.isbndb.com/covers/33/80/9781250133380.jpg ', ' Vickie Lee', 'Ruby&;sChineseNewYear', '1250133386', 'Henry Holt and Co. (BYR)', 17.69, 5),
(248, 'https://images.isbndb.com/covers/79/42/9780060007942.jpg ', ' Jess Walter', 'TheRubyRedTrilogyBoxedSet:RubyRedSapphireBlueEmeraldGreen', '006000794X', 'Harper Perennial', 15.66, 1),
(249, 'https://images.isbndb.com/covers/19/41/9780142401941.jpg ', ' Rosemary Wells', 'Max&;sBreakfast(MaxandRuby)', '0142401943', 'Puffin Books', 12.99, 5),
(250, 'https://images.isbndb.com/covers/33/80/9781250133380.jpg ', ' Vickie Lee', 'Ruby&;sBeautyShop(MaxandRuby)', '1250133386', 'Henry Holt and Co. (BYR)', 5.94, 8),
(251, 'https://images.isbndb.com/covers/04/33/9781250060433.jpg ', ' Kerstin Gier', 'RubyandOlivia', '1250060435', 'Square Fish', 7.59, 2),
(252, 'https://images.isbndb.com/covers/71/25/9780670887125.jpg ', ' Rosemary Wells', 'TheRubyinHerNavel', '0670887129', 'Viking Books for Young Readers', 8.28, 6),
(253, 'https://images.isbndb.com/covers/19/41/9780142401941.jpg ', ' Rosemary Wells', 'RubyBridges(RookieBiographies)', '0142401943', 'Puffin Books', 3.53, 6),
(254, 'https://images.isbndb.com/covers/96/18/9780399169618.jpg ', ' Rachel Hawkins', 'PokémonAdventuresRuby&amp;SapphireBoxSet:IncludesVolumes15-22(Pokemon)', '039916961X', 'G.P. Putnam&#039;s Sons Books for Young Read', 11.25, 7),
(255, 'https://images.isbndb.com/covers/52/59/9780525435259.jpg ', ' Barry Unsworth', 'Max&;sBedtime(MaxandRuby)', '0525435255', 'Anchor', 3.94, 6),
(256, 'https://images.isbndb.com/covers/99/36/9780531209936.jpg ', ' Simone T Ribke', 'TriviaQueenThirdGradeSupreme(RubyandtheBookerBoys#2)', '0531209938', 'C. Press/F. Watts Trade', 16.92, 7),
(257, 'https://images.isbndb.com/covers/77/60/9781421577760.jpg ', ' Hidenori Kusaka', 'MaxatSchool(MaxandRuby)', '1421577763', 'VIZ Media - Children&#039;s', 5.36, 1),
(258, 'https://images.isbndb.com/covers/71/01/9780670887101.jpg ', ' Rosemary Wells', 'TheRubyintheSmoke:ASallyLockhartMystery', '0670887102', 'Viking Books for Young Readers', 1.41, 1),
(259, 'https://images.isbndb.com/covers/76/19/9780545017619.jpg ', ' Derrick Barnes', 'Max&;sHalfBirthday(MaxandRuby)', '0545017610', 'Scholastic Paperbacks', 3.12, 0),
(260, 'https://images.isbndb.com/covers/74/37/9780515157437.jpg ', ' Rosemary Wells', 'PokémonOmegaRuby&amp;PokémonAlphaSapphire:TheOfficialHoennRegionStrategyGuide', '0515157430', 'Penguin Young Readers', 11.39, 4),
(261, 'https://images.isbndb.com/covers/51/61/9780375845161.jpg ', ' Philip Pullman', 'HowtoBeHuman:TheManual', '037584516X', 'Ember', 13.36, 2),
(262, 'https://images.isbndb.com/covers/74/68/9780515157468.jpg ', ' Rosemary Wells', 'PokémonOmegaRubyAlphaSapphireVol.2(Pokemon)', '0515157465', 'Penguin Young Readers', 5.48, 4),
(263, 'https://images.isbndb.com/covers/82/08/9781101898208.jpg ', ' Pokemon Company International', 'TheAdventuresofRubyPricklebottom:Book1:RubyHasPKU', '1101898208', 'The Pokémon Company International', 3.04, 9);
INSERT INTO `books` (`id`, `image`, `author`, `bookName`, `isbn`, `publisher`, `price`, `quantity`) VALUES
(264, 'https://images.isbndb.com/covers/47/27/9780241294727.jpg ', ' RUBY WAX', 'RevisedEdition-ResearchBasedStrategies:NarrowingtheAchievementGapforUnderResourcedStudents', '024129472X', 'Penguin', 18.32, 4),
(265, 'https://images.isbndb.com/covers/01/65/9781421590165.jpg ', ' Hidenori Kusaka', 'MaxDrivesAway:ashapedboardbook(MaxandRuby)', '1421590166', 'VIZ Media - Children&#039;s', 10.04, 3),
(266, 'https://images.isbndb.com/covers/87/87/9781532878787.jpg ', ' Anna Marie Parker', 'EmeraldGreen(TheRubyRedTrilogy)', '1532878788', 'CreateSpace Independent Publishing Platform', 3.43, 9),
(267, 'https://images.isbndb.com/covers/89/00/9781938248900.jpg ', ' Ruby K. Payne', 'PokémonOmegaRubyAlphaSapphireVol.3(Pokemon)', '1938248902', 'aha! Process', 11.68, 9),
(268, 'https://images.isbndb.com/covers/65/16/9780670036516.jpg ', ' Rosemary Wells', 'Max&;sBug(MaxandRuby)', '067003651X', 'Viking Books for Young Readers', 6.03, 3),
(269, 'https://images.isbndb.com/covers/08/16/9781250050816.jpg ', ' Kerstin Gier', 'FindingYourRubySlippers:TransformativeLifeLessonsfromtheTherapist&;sCouch', '1250050812', 'Square Fish', 18.09, 5),
(270, 'https://images.isbndb.com/covers/15/68/9781421591568.jpg ', ' Hidenori Kusaka', 'RubyLearnstoSwim', '1421591561', 'VIZ Media - Children&#039;s', 12.53, 5),
(271, 'https://images.isbndb.com/covers/74/06/9780515157406.jpg ', ' Rosemary Wells', 'BunnyCakes(MaxandRuby)', '0515157406', 'Penguin Young Readers', 6.92, 3),
(272, 'https://images.isbndb.com/covers/04/22/9781683730422.jpg ', ' Lisa Ferentz', 'AbidingHope:Book4intheHealingRubySeries(Volume4)', '1683730429', 'PESI Publishing &amp; Media', 0.19, 0),
(273, 'https://images.isbndb.com/covers/75/06/9781742377506.jpg ', ' Phillip Gwynne', 'TheRubyMoon(Thirteen)', '1742377505', 'Allen &amp; Unwin', 2.41, 9),
(274, 'https://images.isbndb.com/covers/66/73/9780140566673.jpg ', ' Rosemary Wells', 'RubyGoldberg&;sBrightIdea', '0140566678', 'Puffin Books', 5.02, 7),
(275, 'https://images.isbndb.com/covers/27/19/9780997662719.jpg ', ' Jennifer H. Westall', 'BunnyMoney(MaxandRuby)', '0997662719', 'Jennifer H. Westall', 4.62, 4),
(276, 'https://images.isbndb.com/covers/90/35/9781634099035.jpg ', ' Trisha Priebe', 'VIsforVegan:TheABCsofBeingKind', '1634099036', 'Shiloh Run Press', 18.22, 5),
(277, 'https://images.isbndb.com/covers/02/92/9781442480292.jpg ', ' Anna Humphrey', 'PoetryofPresence:AnAnthologyofMindfulnessPoems', '1442480297', 'Simon &amp; Schuster Books for Young Readers', 8.99, 5),
(278, 'https://images.isbndb.com/covers/75/02/9780140567502.jpg ', ' Rosemary Wells', 'RubyFuzzybrush&;sStarDance(MagicAnimalFriends#7)', '014056750X', 'Puffin Books', 14.58, 8),
(279, 'https://images.isbndb.com/covers/64/97/9781583946497.jpg ', ' Ruby Roth', 'HealingRuby:ANovel(Volume1)', '1583946497', 'North Atlantic Books', 1.32, 7),
(280, 'https://images.isbndb.com/covers/88/36/9780998258836.jpg ', ' ', 'Max&;sToys(MaxandRuby)', '0998258830', 'Grayson Books', 4.46, 2),
(281, 'https://images.isbndb.com/covers/74/53/9780545907453.jpg ', ' Daisy Meadows', 'MaxandRuby&;sBedtimeBook', '0545907454', 'Scholastic Paperbacks', 4.99, 9),
(282, 'https://images.isbndb.com/covers/59/01/9780990875901.jpg ', ' Jennifer H Westall', 'WorkingwithStudents:DisciplineStrategiesfortheClassroom;', '0990875903', 'Jennifer H. Westall', 6.41, 4),
(283, 'https://images.isbndb.com/covers/72/00/9780670887200.jpg ', ' Rosemary Wells', 'BunnyParty(MaxandRuby)', '067088720X', 'Viking Books for Young Readers', 15.35, 9),
(284, 'https://images.isbndb.com/covers/74/63/9780147517463.jpg ', ' Rosemary Wells', 'PoetryofPresence:AnAnthologyofMindfulnessPoems', '014751746X', 'Puffin Books', 17.6, 4),
(285, 'https://images.isbndb.com/covers/96/80/9781929229680.jpg ', ' Ruby K. Payne', 'BunnyParty(MaxandRuby)', '1929229682', 'aha! Process', 0, 8),
(286, 'https://images.isbndb.com/covers/16/27/9780142501627.jpg ', ' Rosemary Wells', 'TheThebanPlays:AntigoneKingOidipousandOidipousatColonus(FocusClassicalLibrary)', '014250162X', 'Puffin Books', 12.42, 2),
(287, 'https://images.isbndb.com/covers/88/36/9780998258836.jpg ', ' ', 'Max&;sBirthday(MaxandRuby)', '0998258830', 'Grayson Books', 2.17, 3),
(288, 'https://images.isbndb.com/covers/16/27/9780142501627.jpg ', ' Rosemary Wells', 'RubyRedfortLookIntoMyEyes', '014250162X', 'Puffin Books', 12.06, 3),
(289, 'https://images.isbndb.com/covers/03/78/9781585100378.jpg ', ' Sophocles', 'Max&;sABC(MaxandRuby)', '1585100374', 'Focus', 18.04, 3),
(290, 'https://images.isbndb.com/covers/71/18/9780670887118.jpg ', ' Rosemary Wells', 'RubyRedfortTakeYourLastBreath', '0670887110', 'Viking Books for Young Readers', 14.4, 3),
(291, 'https://images.isbndb.com/covers/25/78/9780763662578.jpg ', ' Lauren Child', 'TheFourthRuby(Section13)', '0763662577', 'Candlewick', 13.97, 6),
(292, 'https://images.isbndb.com/covers/17/28/9780142411728.jpg ', ' Rosemary Wells', 'RubyAmongUs(LaRosaledaSeries#1)', '0142411728', 'Puffin Books', 12.38, 2),
(293, 'https://images.isbndb.com/covers/93/24/9780763669324.jpg ', ' Lauren Child', 'Max&;sToys(MaxandRuby)', '0763669326', 'Candlewick', 2.47, 7),
(294, 'https://images.isbndb.com/covers/71/24/9781481467124.jpg ', ' James R. Hannibal', 'JavaScript:TheDefinitiveGuide:ActivateYourWebPages(DefinitiveGuides)', '1481467123', 'Simon &amp; Schuster Books for Young Readers', 16.05, 7),
(295, 'https://images.isbndb.com/covers/35/80/9781400073580.jpg ', ' Tina Ann Forkner', 'ASmarterWaytoLearnJavaScript.Thenewtech-assistedapproachthatrequireshalftheeffort', '1400073588', 'WaterBrook', 10.76, 9),
(296, 'https://images.isbndb.com/covers/72/00/9780670887200.jpg ', ' Rosemary Wells', 'WebDesignwithHTMLCSSJavaScriptandjQuerySet', '067088720X', 'Viking Books for Young Readers', 7.21, 9),
(297, 'https://images.isbndb.com/covers/55/24/9780596805524.jpg ', ' David Flanagan', 'JavaScriptandJQuery:InteractiveFront-EndWebDevelopment', '0596805527', 'O&#039;Reilly Media', 0.29, 7),
(298, 'https://images.isbndb.com/covers/81/80/9781497408180.jpg ', ' Mark Myers', 'JavaScript:TheGoodParts', '1497408180', 'CreateSpace Independent Publishing Platform', 16.47, 9),
(299, 'https://images.isbndb.com/covers/74/43/9781118907443.jpg ', ' Jon Duckett', 'ThePrinciplesofObject-OrientedJavaScript', '1118907442', 'Wiley', 14.92, 3),
(300, 'https://images.isbndb.com/covers/16/48/9781118531648.jpg ', ' Jon Duckett', 'HeadFirstJavaScriptProgramming:ABrain-FriendlyGuide', '1118531647', 'Wiley', 3.16, 8),
(301, 'https://images.isbndb.com/covers/77/48/9780596517748.jpg ', ' Douglas Crockford', 'EloquentJavaScript2ndEd.:AModernIntroductiontoProgramming', '0596517742', 'O&#039;Reilly Media', 15.93, 8),
(302, 'https://images.isbndb.com/covers/54/02/9781593275402.jpg ', ' Nicholas C. Zakas', 'YouDon&;tKnowJS:Up&amp;Going', '1593275404', 'No Starch Press', 17.54, 8),
(303, 'https://images.isbndb.com/covers/01/31/9781449340131.jpg ', ' Eric T. Freeman', 'JavaScript:ProgrammingBasicsforAbsoluteBeginners(Step-By-Step)(Volume1)', '144934013X', 'O&#039;Reilly Media', 18.42, 1),
(304, 'https://images.isbndb.com/covers/58/46/9781593275846.jpg ', ' Marijn Haverbeke', 'SimplifyingJavaScript:WritingModernJavaScriptwithES5ES6andBeyond', '1593275846', 'No Starch Press', 13.72, 9),
(305, 'https://images.isbndb.com/covers/44/64/9781491924464.jpg ', ' Kyle Simpson', 'Murach&;sJavaScriptandjQuery(3rdEdition)', '1491924462', 'O&#039;Reilly Media', 18.7, 9),
(306, 'https://images.isbndb.com/covers/12/14/9781974581214.jpg ', ' Nathan Clark', 'SecretsoftheJavaScriptNinja', '1974581217', 'CreateSpace Independent Publishing Platform', 7.94, 7),
(307, 'https://images.isbndb.com/covers/28/86/9781680502886.jpg ', ' Joe Morgan', 'JavaScriptPatterns:BuildBetterApplicationswithCodingandDesignPatterns', '1680502883', 'Pragmatic Bookshelf', 18.22, 1),
(308, 'https://images.isbndb.com/covers/20/53/9781943872053.jpg ', ' Zak Ruvalcaba', 'UnderstandingECMAScript6:TheDefinitiveGuideforJavaScriptDevelopers', '1943872058', 'Mike Murach &amp; Associates', 7.36, 1),
(309, 'https://images.isbndb.com/covers/28/59/9781617292859.jpg ', ' John Resig', 'EffectiveJavaScript:68SpecificWaystoHarnessthePowerofJavaScript(EffectiveSoftwareDevelopmentSeries)', '1617292850', 'Manning Publications', 11.4, 3),
(310, 'https://images.isbndb.com/covers/67/50/9780596806750.jpg ', ' Stoyan Stefanov', 'MasteringJavaScriptFunctionalProgramming:In-depthguideforwritingrobustandmaintainableJavaScriptcodei', '0596806752', 'O&#039;Reilly Media', 8.88, 1),
(311, 'https://images.isbndb.com/covers/75/74/9781593277574.jpg ', ' Nicholas C. Zakas', 'LearningJavaScriptDataStructuresandAlgorithms:WritecomplexandpowerfulJavaScriptcodeusingthelatestECM', '1593277571', 'No Starch Press', 2.44, 8),
(312, 'https://images.isbndb.com/covers/21/86/9780321812186.jpg ', ' David Herman', 'GetCoding!:LearnHTMLCSS&amp;JavaScript&amp;BuildaWebsiteApp&amp;Game', '0321812182', 'Addison-Wesley Professional', 2.22, 0),
(313, 'https://images.isbndb.com/covers/74/40/9781787287440.jpg ', ' Federico Kereki', 'ProfessionalJavaScriptforWebDevelopers', '1787287440', 'Packt Publishing - ebooks Account', 0.57, 0),
(314, 'https://images.isbndb.com/covers/38/72/9781788623872.jpg ', ' Loiane Groner', 'Node.js8theRightWay:PracticalServer-SideJavaScriptThatScales', '1788623878', 'Packt Publishing - ebooks Account', 10.56, 4),
(315, 'https://images.isbndb.com/covers/27/66/9780763692766.jpg ', ' Young Rewired State', 'CodingwithJavaScriptForDummies(ForDummiesSeries)', '076369276X', 'Candlewick', 12.63, 7),
(316, 'https://images.isbndb.com/covers/66/94/9781118026694.jpg ', ' Nicholas C. Zakas', 'LearningJavaScript:JavaScriptEssentialsforModernApplicationDevelopment', '1118026691', 'Wrox', 3.96, 4),
(317, 'https://images.isbndb.com/covers/19/57/9781680501957.jpg ', ' Jim Wilson', 'JavaScript:TheWebWarriorSeries', '168050195X', 'Pragmatic Bookshelf', 11.89, 9),
(318, 'https://images.isbndb.com/covers/60/72/9781119056072.jpg ', ' Chris Minnick', 'LearningPHPMySQL&amp;JavaScript:WithjQueryCSS&amp;HTML5', '1119056071', 'For Dummies', 3.73, 1),
(319, 'https://images.isbndb.com/covers/49/15/9781491914915.jpg ', ' Ethan Brown', 'JavaScript&amp;jQuery:TheMissingManual', '1491914912', 'O&#039;Reilly Media', 17.74, 6),
(320, 'https://images.isbndb.com/covers/84/44/9781305078444.jpg ', ' Sasha Vodnik', 'JavaScriptforKids:APlayfulIntroductiontoProgramming', '1305078446', 'Course Technology', 0.71, 9),
(321, 'https://images.isbndb.com/covers/89/17/9781491978917.jpg ', ' Robin Nixon', 'LearningPHPMySQL&amp;JavaScript:WithjQueryCSS&amp;HTML5(LearningPhpMysqlJavascriptCss&amp;Html5)', '1491978910', 'O&#039;Reilly Media', 11.43, 7),
(322, 'https://images.isbndb.com/covers/70/74/9781491947074.jpg ', ' David Sawyer McFarland', 'JAVASCRIPT:EasyJavaScriptProgrammingForBeginners.YourStep-By-StepGuidetoLearningJavaScriptProgrammin', '1491947071', 'O&#039;Reilly Media', 0.71, 4),
(323, 'https://images.isbndb.com/covers/40/85/9781593274085.jpg ', ' Nick Morgan', 'YouDon&;tKnowJS:Scope&amp;Closures', '1593274084', 'No Starch Press', 4.59, 0),
(324, 'https://images.isbndb.com/covers/86/61/9781491918661.jpg ', ' Robin Nixon', 'Functional-LightJavaScript:BalancedPragmaticFPinJavaScript', '1491918667', 'O&#039;Reilly Media', 5.56, 9),
(325, 'https://images.isbndb.com/covers/91/85/9781539929185.jpg ', ' Felix Alvaro', 'JavaScript:ADetailedApproachtoPracticalCoding(Step-By-StepJavaScript)(Volume2)', '1539929183', 'CreateSpace Independent Publishing Platform', 18.93, 0),
(326, 'https://images.isbndb.com/covers/55/88/9781449335588.jpg ', ' Kyle Simpson', 'JavaScript:ABeginner&;sGuideFourthEdition', '1449335586', 'O&#039;Reilly Media', 0.83, 6),
(327, 'https://images.isbndb.com/covers/23/49/9781981672349.jpg ', ' Kyle Simpson', 'JavaScript:NovicetoNinja', '1981672346', 'CreateSpace Independent Publishing Platform', 2.96, 5),
(328, 'https://images.isbndb.com/covers/39/41/9781977703941.jpg ', ' Nathan Clark', 'ProfessionalJavaScriptforWebDevelopers', '1977703941', 'CreateSpace Independent Publishing Platform', 13.66, 8),
(329, 'https://images.isbndb.com/covers/93/75/9780071809375.jpg ', ' John Pollock', 'JavaScriptin24HoursSamsTeachYourself(6thEdition)', '0071809376', 'McGraw-Hill Education', 8.93, 9),
(330, 'https://images.isbndb.com/covers/26/26/9780995382626.jpg ', ' Darren Jones', 'JavaScriptPocketReference:ActivateYourWebPages(PocketReference(O&;Reilly))', '099538262X', 'SitePoint', 11.79, 1),
(331, 'https://images.isbndb.com/covers/64/47/9781119366447.jpg ', ' Matt Frisbie', 'JavaScriptCookbook:ProgrammingtheWeb', '1119366445', 'Wrox', 1.78, 1),
(332, 'https://images.isbndb.com/covers/73/83/9780672337383.jpg ', ' Phil Ballard', 'JavaScript:TheUltimateBeginnersGuide:StartCodingToday', '067233738X', 'Sams Publishing', 4.54, 0),
(333, 'https://images.isbndb.com/covers/68/53/9781449316853.jpg ', ' David Flanagan', 'Javascript:JavascriptProgrammingForBeginnersGuideToJavascriptCodingJavascriptProgramsAndJavascriptLa', '1449316859', 'O&#039;Reilly Media', 1.3, 4),
(334, 'https://images.isbndb.com/covers/18/85/9781491901885.jpg ', ' Shelley Powers', 'Javascript:JavascriptProgrammingTheUltimateBeginnersGuide', '1491901888', 'O&#039;Reilly Media', 7.42, 5),
(335, 'https://images.isbndb.com/covers/46/34/9781539984634.jpg ', ' Steve Tale', 'LearningWebDesign:ABeginner&;sGuidetoHTMLCSSJavaScriptandWebGraphics', '153998463X', 'CreateSpace Independent Publishing Platform', 7.07, 8),
(336, 'https://images.isbndb.com/covers/09/56/9781548110956.jpg ', ' Josh Thompsons', 'JavaScriptandJSONEssentials:BuildlightweightscalableandfasterwebapplicationswiththepowerofJSON2ndEdi', '1548110957', 'CreateSpace Independent Publishing Platform', 3.07, 7),
(337, 'https://images.isbndb.com/covers/07/19/9781977650719.jpg ', ' Dennis Hutten', 'JavaScriptQuickStartGuide:TheSimplifiedBeginner&;sGuidetoJavaScript', '1977650716', 'CreateSpace Independent Publishing Platform', 8.32, 7),
(338, 'https://images.isbndb.com/covers/02/02/9781491960202.jpg ', ' Jennifer Robbins', 'ASoftwareEngineerLearnsHTML5JavaScriptandjQuery', '1491960205', 'O&#039;Reilly Media', 4.1, 0),
(339, 'https://images.isbndb.com/covers/47/01/9781788624701.jpg ', ' Bruno Joseph D&#039;mello', 'Javascript:LearnJavascriptin2hoursandstartprogrammingtoday!', '178862470X', 'Packt Publishing', 0.96, 1),
(340, 'https://images.isbndb.com/covers/67/31/9780996366731.jpg ', ' ClydeBank Technology', 'HTMLandCSS:DesignandBuildWebsites', '0996366733', 'ClydeBank Media LLC', 20.08, 8),
(341, 'https://images.isbndb.com/covers/26/13/9781493692613.jpg ', ' Dane Cameron', 'JavaScriptonThings:Hackinghardwareforwebdevelopers', '1493692615', 'CreateSpace Independent Publishing Platform', 6.74, 3),
(342, 'https://images.isbndb.com/covers/47/37/9781981554737.jpg ', ' Cooper Alvin', 'JavaScript:AdvancedFeaturesandProgrammingTechniques(Step-By-StepJavaScript)(Volume3)', '1981554734', 'CreateSpace Independent Publishing Platform', 15.71, 6),
(343, 'https://images.isbndb.com/covers/81/88/9781118008188.jpg ', ' Jon Duckett', 'ASoftwareEngineerLearnsHTML5JavaScriptandjQuery', '1118008189', 'John Wiley &amp; Sons', 11.68, 0),
(344, 'https://images.isbndb.com/covers/38/63/9781617293863.jpg ', ' Lyza Danger Gardner', 'Javascript:LearnJavascriptin2hoursandstartprogrammingtoday!', '1617293865', 'Manning Publications', 7.15, 5),
(345, 'https://images.isbndb.com/covers/95/09/9781593279509.jpg ', ' Marijn Haverbeke', 'JavaScriptAbsoluteBeginner&;sGuide', '1593279507', 'No Starch Press', 17.15, 3),
(346, 'https://images.isbndb.com/covers/54/81/9781986205481.jpg ', ' Nathan Clark', 'LearnJavaScriptVisually', '1986205487', 'CreateSpace Independent Publishing Platform', 14.79, 3),
(347, 'https://images.isbndb.com/covers/26/13/9781493692613.jpg ', ' Dane Cameron', 'JavaScriptForKidsForDummies(ForDummies(Computers))', '1493692615', 'CreateSpace Independent Publishing Platform', 6.9, 6),
(348, 'https://images.isbndb.com/covers/47/37/9781981554737.jpg ', ' Cooper Alvin', 'YouDon&;tKnowJS:Async&amp;Performance', '1981554734', 'CreateSpace Independent Publishing Platform', 13.42, 0),
(349, 'https://images.isbndb.com/covers/80/64/9780789758064.jpg ', ' Kirupa Chinnathambi', 'JavaScriptwithPromises:ManagingAsynchronousCode', '0789758067', 'Que Publishing', 16.61, 9),
(350, 'https://images.isbndb.com/covers/67/01/9780993836701.jpg ', ' Ivelin Demirov', 'LearningWebDesign:ABeginner&;sGuidetoHTMLCSSJavaScriptandWebGraphics', '0993836704', 'Nai inc.', 5.89, 5),
(351, 'https://images.isbndb.com/covers/98/69/9781119119869.jpg ', ' Chris Minnick', 'CodingforKids:LearnJavaScript:BuildtheRoomAdventureGame(Volume1)', '1119119863', 'For Dummies', 19.26, 6),
(352, 'https://images.isbndb.com/covers/42/20/9781491904220.jpg ', ' Kyle Simpson', 'JavaScript:TheDefinitiveGuide', '1491904224', 'O&#039;Reilly Media', 15.81, 8),
(353, 'https://images.isbndb.com/covers/32/14/9781449373214.jpg ', ' Daniel Parker', 'BeginningJavaScript', '1449373216', 'O&#039;Reilly Media', 2.35, 4),
(354, 'https://images.isbndb.com/covers/92/74/9781449319274.jpg ', ' Jennifer Robbins', 'ASmarterWaytoLearnHTML&amp;CSS:Learnitfaster.Rememberitlonger.(Volume2)', '1449319270', 'O&#039;Reilly Media', 0.39, 7),
(355, 'https://images.isbndb.com/covers/46/90/9780996984690.jpg ', ' Stephen J Wolf', 'TheRoadtolearnReact:YourjourneytomasterplainyetpragmaticReact.js', '0996984690', 'Stephen J. Wolf', 12.28, 6),
(356, 'https://images.isbndb.com/covers/19/92/9780596101992.jpg ', ' David Flanagan', 'GetProgrammingwithJavaScript', '0596101996', 'O&#039;Reilly Media', 7.63, 4),
(357, 'https://images.isbndb.com/covers/89/60/9781785888960.jpg ', ' Sandro Pasquali', 'JavaScriptAsync:EventsCallbacksPromisesandAsyncAwait', '178588896X', 'Packt Publishing - ebooks Account', 7.53, 2),
(358, 'https://images.isbndb.com/covers/54/93/9781785285493.jpg ', ' Loiane Groner', 'JavaScriptTheCompleteReference3rdEdition', '1785285491', 'Packt Publishing - ebooks Account', 9.47, 8),
(359, 'https://images.isbndb.com/covers/33/39/9781118903339.jpg ', ' Jeremy McPeak', 'ASmarterWaytoLearnjQuery:Learnitfaster.Rememberitlonger.(Volume3)', '1118903331', 'Wrox', 1.91, 1),
(360, 'https://images.isbndb.com/covers/38/73/9781508673873.jpg ', ' Mark Myers', 'PracticalModernJavaScript:DiveintoES6andtheFutureofJavaScript', '150867387X', 'CreateSpace Independent Publishing Platform', 15.86, 4),
(361, 'https://images.isbndb.com/covers/88/20/9781986338820.jpg ', ' Robin Wieruch', 'TheSelf-TaughtProgrammer:TheDefinitiveGuidetoProgrammingProfessionally', '1986338827', 'CreateSpace Independent Publishing Platform', 0.5, 4),
(362, 'https://images.isbndb.com/covers/31/08/9781617293108.jpg ', ' John Larsen', 'JavaScript:TheCompleteReferenceSecondEdition', '1617293105', 'Manning Publications', 12.47, 5),
(363, 'https://images.isbndb.com/covers/25/67/9781871962567.jpg ', ' Ian Elliot', 'FunctionalProgramminginJavaScript:HowtoimproveyourJavaScriptprogramsusingfunctionaltechniques', '1871962560', 'I/O Press', 13.41, 7),
(364, 'https://images.isbndb.com/covers/12/00/9780071741200.jpg ', ' Thomas A. Powell', 'LearningJavaScriptDesignPatterns:AJavaScriptandjQueryDeveloper&;sGuide', '0071741208', 'McGraw-Hill Education', 8.94, 6),
(365, 'https://images.isbndb.com/covers/64/60/9781523986460.jpg ', ' Mark Myers', 'Murach&;sJavaScript2ndEdition', '1523986468', 'CreateSpace Independent Publishing Platform', 6.2, 5),
(366, 'https://images.isbndb.com/covers/35/33/9781491943533.jpg ', ' Nicolas Bevacqua', 'YouDon&;tKnowJS:this&amp;ObjectProto', '149194353X', 'O&#039;Reilly Media', 17.44, 6),
(367, 'https://images.isbndb.com/covers/59/07/9780999685907.jpg ', ' Cory Althoff', 'AnEffectiveGuidetoModernJavaScript:(ECMAScript2017/ES8)', '0999685902', 'Self-Taught Media', 2.32, 1),
(368, 'https://images.isbndb.com/covers/35/73/9780072253573.jpg ', ' Thomas Powell', 'JavaScript:VisualQuickStartGuide(9thEdition)', '0072253576', 'McGraw-Hill Osborne Media', 13.77, 4),
(369, 'https://images.isbndb.com/covers/28/28/9781617292828.jpg ', ' Luis Atencio', 'BeginningJavaScript', '1617292826', 'Manning Publications', 11.52, 9),
(370, 'https://images.isbndb.com/covers/18/18/9781449331818.jpg ', ' Addy Osmani', 'FunctionalJavaScript:IntroducingFunctionalProgrammingwithUnderscore.js', '1449331815', 'O&#039;Reilly Media', 15.66, 5),
(371, 'https://images.isbndb.com/covers/48/51/9781890774851.jpg ', ' Mary Delamater', 'JavaScriptEnlightenment:FromLibraryUsertoJavaScriptDeveloper', '1890774855', 'Mike Murach &amp; Associates', 10.52, 0),
(372, 'https://images.isbndb.com/covers/41/52/9781491904152.jpg ', ' Kyle Simpson', 'HighPerformanceJavaScript:BuildFasterWebApplicationInterfaces', '1491904151', 'O&#039;Reilly Media', 9.14, 0),
(373, 'https://images.isbndb.com/covers/79/23/9781974207923.jpg ', ' Mr. Chong Lip Phang', 'JavaScript:TheDefinitiveGuide', '1974207927', 'CreateSpace Independent Publishing Platform', 10.24, 1),
(374, 'https://images.isbndb.com/covers/67/01/9780321996701.jpg ', ' Dori Smith', 'RefactoringJavaScript:TurningBadCodeIntoGoodCode', '0321996704', 'Peachpit Press', 0.74, 2),
(375, 'https://images.isbndb.com/covers/59/37/9780470525937.jpg ', ' Paul Wilton', 'IsomorphicJavaScriptWebDevelopment:UniversalJavaScriptwithReactandNode', '0470525932', 'Wrox', 7.45, 2),
(376, 'https://images.isbndb.com/covers/07/26/9781449360726.jpg ', ' Michael Fogus', 'JavascriptforBabies(CodeBabies)', '1449360726', 'O&#039;Reilly Media', 13.18, 1),
(377, 'https://images.isbndb.com/covers/28/83/9781449342883.jpg ', ' Cody Lindley', 'JavaScript:2Booksin1:TipsandTricks+BestPracticestoProgrammingCodewithJavaScript(JavaScriptPythonJava', '1449342884', 'O&#039;Reilly Media', 14.2, 7),
(378, 'https://images.isbndb.com/covers/27/90/9780596802790.jpg ', ' Nicholas C. Zakas', '3DGameProgrammingforKids:CreateInteractiveWorldswithJavaScript', '059680279X', 'O&#039;Reilly Media', 5.58, 1),
(379, 'https://images.isbndb.com/covers/04/86/9780596000486.jpg ', ' David Flanagan', 'JavaScript:ComputerProgrammingforBeginners:LearntheBasicsofJavaScript', '0596000480', 'O&#039;Reilly Media', 2.21, 2),
(380, 'https://images.isbndb.com/covers/49/27/9781491964927.jpg ', ' Evan Burchard', 'JavaScript:ComputerProgrammingforBeginners:LearntheBasicsofJavaScript', '1491964928', 'O&#039;Reilly Media', 16.1, 8),
(381, 'https://images.isbndb.com/covers/97/69/9781785889769.jpg ', ' Tomas Alabes', 'ExamRef70-480ProgramminginHTML5withJavaScriptandCSS3(MCSD)', '1785889761', 'Packt Publishing - ebooks Account', 7.38, 8),
(382, 'https://images.isbndb.com/covers/15/78/9781454921578.jpg ', ' Sterling Children&#039;s', 'JavaScript:TheUltimateBeginner&;sGuide!', '1454921579', 'Sterling Children&#039;s Books', 16.87, 6),
(383, 'https://images.isbndb.com/covers/23/92/9781545472392.jpg ', ' Charlie Masterson', 'Javascript:JavascriptCodingForCompleteNovices(Volume1)', '1545472394', 'CreateSpace Independent Publishing Platform', 17.27, 2),
(384, 'https://images.isbndb.com/covers/27/01/9781680502701.jpg ', ' Chris Strom', 'YouDon&;tKnowJS:ES6&amp;Beyond', '1680502700', 'Pragmatic Bookshelf', 6.55, 9),
(385, 'https://images.isbndb.com/covers/25/02/9781985772502.jpg ', ' IT Starter Series', 'JavaScript:TheNewToys', '1985772507', 'CreateSpace Independent Publishing Platform', 11.2, 0),
(386, 'https://images.isbndb.com/covers/25/02/9781985772502.jpg ', ' IT Starter Series', 'Javascript:LearnJavascriptInADAY!-TheUltimateCrashCoursetoLearningtheBasicsoftheJavascriptProgrammin', '1985772507', 'CreateSpace Independent Publishing Platform', 3.23, 8),
(387, 'https://images.isbndb.com/covers/66/33/9780735676633.jpg ', ' Rick Delorme', 'JavaScript:4Booksin1:Beginner&;sGuide+TipsandTricks+BestPractices+AdvancedGuidetoProgrammingCodewith', '0735676631', 'Microsoft Press', 5.16, 2),
(388, 'https://images.isbndb.com/covers/08/27/9781523730827.jpg ', ' Andrew Johansen', 'HeadFirstDesignPatterns:ABrain-FriendlyGuide', '152373082X', 'CreateSpace Independent Publishing Platform', 4.16, 0),
(389, 'https://images.isbndb.com/covers/78/17/9781543007817.jpg ', ' Scott Bernard', 'MasteringJavaScript', '1543007813', 'CreateSpace Independent Publishing Platform', 4.1, 8),
(390, 'https://images.isbndb.com/covers/42/44/9781491904244.jpg ', ' Kyle Simpson', '', '1491904240', 'O&#039;Reilly Media', 12.13, 9),
(391, 'https://images.isbndb.com/covers/79/56/9781119367956.jpg ', ' T. J. Crowder', '', '1119367956', 'Wrox', 1.64, 2),
(392, 'https://images.isbndb.com/covers/71/40/9781507587140.jpg ', ' Acodemy', '', '1507587147', 'CreateSpace Independent Publishing Platform', 5.04, 4),
(393, 'https://images.isbndb.com/covers/73/10/9781544877310.jpg ', ' Charlie Masterson', '', '1544877315', 'CreateSpace Independent Publishing Platform', 0.57, 0),
(394, 'https://images.isbndb.com/covers/71/26/9780596007126.jpg ', ' Eric Freeman', '', '0596007124', 'O&#039;Reilly Media', 14.6, 8),
(395, 'https://images.isbndb.com/covers/13/41/9781785281341.jpg ', ' Ved Antani', '', '1785281348', 'Packt Publishing - ebooks Account', 3.26, 3),
(396, 'sdfsdf', 'sdfsdfa', NULL, 'asdfasdf', 'asdfasdf', 1243, 1),
(397, 'sdfsdf', 'sdfsdfa', NULL, 'asdfasdf', 'asdfasdf', 1243, 1),
(398, 'sdfsdf', 'sdfsdfa', NULL, 'asdfasdf', 'asdfasdf', 12.21, 1),
(399, 'url.jpg', 'Rio', NULL, '21231233', 'Penguin', 12.21, 1),
(400, 'url.jpg', 'Rio', NULL, '21231233', 'Penguin', 12.21, 1),
(401, 'url.jpg', 'Rio', NULL, '21231233', 'Penguin', 1221, 1),
(402, 'url.jpg', 'Rio', NULL, '21231233', 'Penguin', 1, 1),
(403, 'url.jpg', 'Rio', NULL, '21231233', 'Penguin', 1, 1),
(404, 'url.jpg', 'Rio', NULL, '21231233', 'Penguin', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books_customers`
--

CREATE TABLE `books_customers` (
  `id` int(10) NOT NULL,
  `books_id` int(10) NOT NULL,
  `customers_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_address`) VALUES
(1, 'Austin', '600 1st Ave, Seattle'),
(2, 'Austin', '600 1st Ave, Seattle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_customers`
--
ALTER TABLE `books_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;
--
-- AUTO_INCREMENT for table `books_customers`
--
ALTER TABLE `books_customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

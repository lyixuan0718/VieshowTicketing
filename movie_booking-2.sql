-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2025 年 12 月 07 日 16:55
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `movie_booking`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cinema`
--

CREATE TABLE `cinema` (
  `cinemaID` varchar(2) NOT NULL,
  `cinemaAddress` varchar(80) NOT NULL,
  `cinemaName` varchar(20) NOT NULL,
  `cinemaTele` varchar(15) NOT NULL,
  `cinemaCity` varchar(50) NOT NULL,
  `cinemaPicturePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `cinema`
--

INSERT INTO `cinema` (`cinemaID`, `cinemaAddress`, `cinemaName`, `cinemaTele`, `cinemaCity`, `cinemaPicturePath`) VALUES
('01', '台北市信義區松壽路20號', '台北信義威秀影城', '(02) 8780-5566', '雙北', 'rgproject/cinema/01.jpg\n'),
('02', '桃園市桃園區中正路61號9樓 (統領廣場TONLIN PLAZA)', '桃園統領威秀影城', '(03) 333-3232', '桃園', 'rgproject/cinema/02.jpg\n'),
('03', '台中市西屯區臺灣大道三段251號13樓 (Top City台中大遠百)', '台中大遠百威秀影城', '(04) 2258-8511', '台中', 'rgproject/cinema/03.jpg\n'),
('04', '台南市中西區公園路60號5樓 (台南大遠百公園店)', '台南大遠百威秀影城', '(06) 600-5566', '台南', 'rgproject/cinema/04.jpg\n'),
('05', '花蓮縣吉安鄉南濱路一段503號3樓 (花蓮新天堂樂園購物商場)', '花蓮新天堂樂園威秀影城', '(03) 842-1133', '花蓮', 'rgproject/cinema/05.jpg\n'),
('06', '高雄市苓雅區三多四路21號13樓 (高雄大遠百購物中心)', '高雄大遠百威秀影城', '(07) 334-5566', '高雄', 'rgproject/cinema/06.jpg\n');

-- --------------------------------------------------------

--
-- 資料表結構 `cinemaShowtimes`
--

CREATE TABLE `cinemaShowtimes` (
  `cinemaID` varchar(2) NOT NULL,
  `movieID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `cinemaShowtimes`
--

INSERT INTO `cinemaShowtimes` (`cinemaID`, `movieID`) VALUES
('01', 1001),
('01', 1002),
('01', 1003),
('01', 1004),
('01', 1005),
('01', 1006),
('01', 1007),
('02', 1001),
('02', 1002),
('02', 1003),
('02', 1004),
('02', 1005),
('02', 1006),
('02', 1007),
('03', 1001),
('03', 1002),
('03', 1003),
('03', 1004),
('03', 1005),
('03', 1006),
('03', 1007),
('04', 1001),
('04', 1002),
('04', 1003),
('04', 1004),
('04', 1005),
('04', 1006),
('04', 1007),
('05', 1001),
('05', 1002),
('05', 1003),
('05', 1004),
('05', 1005),
('05', 1006),
('05', 1007),
('06', 1001),
('06', 1002),
('06', 1003),
('06', 1004),
('06', 1005),
('06', 1006),
('06', 1007);

-- --------------------------------------------------------

--
-- 資料表結構 `grade`
--

CREATE TABLE `grade` (
  `gradeID` int(11) NOT NULL,
  `gradeName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `grade`
--

INSERT INTO `grade` (`gradeID`, `gradeName`) VALUES
(21, '輔15+'),
(22, '普0+'),
(23, '護6+');

-- --------------------------------------------------------

--
-- 資料表結構 `meals`
--

CREATE TABLE `meals` (
  `mealsID` varchar(10) NOT NULL,
  `mealsName` varchar(20) NOT NULL,
  `mealsPrice` int(11) NOT NULL,
  `mealsInfo` varchar(1000) NOT NULL,
  `mealsTypeID` varchar(10) NOT NULL,
  `mealsPicturePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `meals`
--

INSERT INTO `meals` (`mealsID`, `mealsName`, `mealsPrice`, `mealsInfo`, `mealsTypeID`, `mealsPicturePath`) VALUES
('3001', '【動物方城市2 】電影套餐A', 459, '1個動物方城市II中爆米花+2杯動物方城市II大杯飲料+1個動物方城市II手機支架(11/12起開放領取)。', '2001', 'rgproject/meals/3001.jpg\n'),
('3002', '威秀 X 築間《麻辣奶香爆米花》', 170, '🎁販售至2026/01/31限時開吃．好禮享不完🎁🍿麻辣奶香風味爆米花$170\r\n贈：1張築間火鍋七選一餐劵（數量有限、送完為止）🍿熱辣聯名套餐$439\r\n1中份麻辣奶香風味爆米花\r\n2杯中杯可口可樂公司全系列飲料\r\n1份熱食\r\n贈：２張築間火鍋七選一餐劵（數量有限、送完為止）\r\n再抽：爽辣韓旅『首爾』單人機票', '2001', 'rgproject/meals/3002.jpg'),
('3003', '爆米花', 100, '爆米花 很好吃 大家都來買 一個100塊 ', '2002', 'rgproject/meals/3003.jpg\n'),
('3004', '可樂', 50, '可樂 喝了既可口又快樂', '2003', 'rgproject/meals/3004.jpg\n'),
('3005', '焗香軟法肉醬熱狗堡', 160, '非常好吃非常好吃', '2004', 'rgproject/meals/3005.jpg\r\n'),
('3006', '焗香軟法墨西哥辣醬熱狗堡', 160, '非常好吃', '2004', 'rgproject/meals/3006.jpg\r\n'),
('3007', '肉桂吉拿棒佐熔岩巧克力', 151, '非常好吃', '2004', 'rgproject/meals/3007.jpg\r\n');

-- --------------------------------------------------------

--
-- 資料表結構 `mealsType`
--

CREATE TABLE `mealsType` (
  `mealsTypeID` varchar(10) NOT NULL,
  `mealsType` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `mealsType`
--

INSERT INTO `mealsType` (`mealsTypeID`, `mealsType`) VALUES
('2001', '套餐'),
('2002', '爆米花'),
('2003', '飲料'),
('2004', '熱食');

-- --------------------------------------------------------

--
-- 資料表結構 `memberCashCard`
--

CREATE TABLE `memberCashCard` (
  `memberCardID` varchar(10) NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `paymentCustmerID` varchar(8) NOT NULL,
  `paymentMethod` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `memberPoint`
--

CREATE TABLE `memberPoint` (
  `memberPointID` int(10) NOT NULL,
  `memberID` varchar(10) NOT NULL,
  `totalPoint` int(10) NOT NULL,
  `updateAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `memberPoint`
--

INSERT INTO `memberPoint` (`memberPointID`, `memberID`, `totalPoint`, `updateAt`) VALUES
(1, '0000000001', 10000, '2025-12-07 15:46:39'),
(2, '0000000002', 1, '2025-12-07 15:46:39');

-- --------------------------------------------------------

--
-- 資料表結構 `memberProfile`
--

CREATE TABLE `memberProfile` (
  `memberID` varchar(10) NOT NULL,
  `memberCardID` varchar(10) NOT NULL,
  `memberName` varchar(20) NOT NULL,
  `memberPwd` varchar(50) NOT NULL,
  `memberEmail` varchar(50) NOT NULL,
  `memberBirth` date NOT NULL,
  `memberPhone` varchar(10) NOT NULL,
  `IsVIP` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `memberProfile`
--

INSERT INTO `memberProfile` (`memberID`, `memberCardID`, `memberName`, `memberPwd`, `memberEmail`, `memberBirth`, `memberPhone`, `IsVIP`) VALUES
('0000000001', 'O206621803', 'ABC', '1234abcd', 'test@vieshow.com', '2000-01-01', '0912345678', 0),
('0000000002', 'A172398774', 'Hi', '361633153a464830a1fe85dec5efab17', 'david.wang@vieshow.tw', '2025-09-09', '0912345678', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `memberRecharge`
--

CREATE TABLE `memberRecharge` (
  `TranscationID` varchar(10) NOT NULL,
  `memberCardID` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `paymentMethod` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `commitAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `memberRecord`
--

CREATE TABLE `memberRecord` (
  `orderID` varchar(10) NOT NULL,
  `memberCardID` varchar(10) NOT NULL,
  `showingID` int(11) NOT NULL,
  `orderTime` datetime NOT NULL,
  `ticketNumber` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `GetTicketNum` int(11) NOT NULL,
  `orderStatusID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `menuStatus`
--

CREATE TABLE `menuStatus` (
  `orderID` varchar(10) NOT NULL,
  `selectedMeals` varchar(15) NOT NULL,
  `totalAmount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `movie`
--

CREATE TABLE `movie` (
  `movieID` int(11) NOT NULL,
  `movieName` varchar(35) NOT NULL,
  `movieTime` int(11) NOT NULL,
  `gradeID` int(11) NOT NULL,
  `movieStart` datetime NOT NULL,
  `movieAverageRating` int(11) NOT NULL,
  `movieInfo` varchar(1000) NOT NULL,
  `movieTypeID` int(11) NOT NULL,
  `director` varchar(40) DEFAULT NULL,
  `actors` varchar(100) DEFAULT NULL,
  `posterPath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `movie`
--

INSERT INTO `movie` (`movieID`, `movieName`, `movieTime`, `gradeID`, `movieStart`, `movieAverageRating`, `movieInfo`, `movieTypeID`, `director`, `actors`, `posterPath`) VALUES
(1001, '劇場版『鏈鋸人 蕾潔篇』', 100, 21, '2025-09-24 00:00:00', 5, '鏈鋸人首度登上大銀幕，帶來一場史詩級、火力全開的動作冒險，延續這部超人氣動畫系列的精彩篇章。\r\n為了償還父母留下的債務，為黑道打工的惡魔獵人淀治，遭到背叛並慘遭殺害。在意識消散之際，與他感情深厚的鏈鋸惡魔狗波奇塔，與淀治簽訂契約救了他一命，也讓兩人合而為一，從此誕生了所向無敵的「鏈鋸人」。\r\n如今，在惡魔、獵人與潛藏敵人交鋒的殘酷戰爭中，一位神秘少女蕾潔，闖入了淀治的世界。面對史上最致命的對決，淀治將在這個毫無規則可言的生存遊戲中，被愛推向命運的漩渦。', 31, '吉原達矢', '(配音)戶谷菊之介、楠木燈、坂田將吾、菲魯茲藍、上田麗奈', 'rgproject/movie/1001.jpg\n'),
(1002, '動物方城市2', 108, 22, '2025-11-26 00:00:00', 5, '本片為迪士尼動畫工作室第64部動畫長片作品，由奧斯卡得獎導演傑瑞布希許與拜倫霍華德執導。\r\n\r\n在《動物方城市2》中，警官哈茱蒂和胡尼克將再次合體，追查一名潛入動物方城市、並將其鬧得天翻地覆的神秘爬行動物。為了破案，茱蒂和尼克必須潛入城市中從未有動物踏足的新區域，他們看似堅不可摧的關係也將面臨前所未有的考驗。全新角色逃犯蛇蓋瑞（Gary）也在影片中亮相，蓋瑞由關繼威配音。\r\n\r\n《動物方城市2》將帶來更多有趣的新角色，除了毒蛇蓋瑞（由關繼威配音）外，還有河狸妮寶以及短尾矮袋鼠諮商師絨絨博士，同時第一集深受觀眾喜愛的角色也全數回歸。導演同時也是迪士尼動畫創意總監傑瑞布希表示：「能夠再次與第一集的優秀演員團隊合作是一大樂事，而新加入的卡司也為本片注入了無限活力。我迫不及待想讓觀眾看到這場全新冒險中我們準備的驚喜！」', 32, '傑瑞布希', '傑森貝特曼、Fortune Feimster、珍妮佛古德溫、關繼威', 'rgproject/movie/1002.jpg\n'),
(1003, '魔法壞女巫：第二部', 137, 22, '2025-11-19 00:00:00', 5, '而如今，無論我們的故事將如何結束，我知道因為妳是我的朋友，妳已經改寫了我的故事…\r\n\r\n去年風靡全球的現象級電影，以及影史最成功的百老匯音樂劇改編電影，即將在續集【魔法壞女巫：第二部】中迎來震撼人心及感人肺腑的史詩般精彩結局。', 33, '朱浩偉', '辛西婭艾利沃、亞莉安娜、喬納森貝利、伊森斯萊特、楊伯文、瑪麗莎博德、楊紫瓊、傑夫高布倫', 'rgproject/movie/1003.jpg\n'),
(1004, '劇場版 BANG DREAM! ITS MYGO!!!!! 前篇', 118, 22, '2025-12-07 10:35:41', 5, '《劇場版 BanG Dream! It‘s MyGO!!!!! 前篇：春暖向陽，迷星之貓》大銀幕巨獻——史詩級少女樂團物語，現在正是復權的時刻。\r\n在 Live House「RiNG」中，總有一隻「流浪貓」神出鬼沒——這位少女的名字，叫做 要樂奈。受到外婆 都築詩船 的影響，樂奈從小就對吉他有著濃厚興趣。\r\n然而，也因此逐漸荒廢了學業。外婆在幾經思考後，決心關閉自己經營的 Live House「SPACE」，希望孫女能不再依賴，而是靠自己找尋出屬於自己的歸屬。\r\n自此受到打擊的樂奈，在兩年間從未再碰過吉他。直到前員工 真次凜凜子 的勸說，她才再次拾起最愛的吉他，在 RiNG 展現自我，並踏上尋找樂團（歸屬）之路。\r\n時間一轉，故事來到現在。\r\n從英國轉學回日本的少女 千早愛音，在同儕的影響下萌生了「想組樂團」的想法。\r\n她從邀請同班同學 高松燈 開始，與突然現身阻攔的 椎名立希、看似溫柔地給予幫助的 長崎爽世，以及在 RiNG 彈奏吉他的 要樂奈 相遇。\r\n踏入 RiNG 的那一刻，五人的命運開始交織。\r\n這段故事，將會迸發出什麼樣的火花？\r\n這個冬天，就讓我們一同踏進影院，感受這場史無前例、最炙熱的少女樂團動畫吧！\r\n\r\n前篇劇情介紹\r\n少女們的樂團物語，即將揭開序幕——\r\n在 Live House「RiNG」裡，神出鬼沒的「流浪貓」——要樂奈，因外婆關閉 Live House 而不再碰吉他。\r\n直到凜凜子的勸說下，才再次拾起吉他，踏上尋找歸屬之路。\r\n時間來到現在，故事再次從英國歸國的 千早愛音身上出發，因受同儕影響開始組建起了樂團。\r\n在 RiNG 中相遇的五人——高松燈、椎名立希、長崎爽世、要樂奈、千早愛音，命運交織。\r\n她們的樂章，將在這個冬天響起。\r\n\r\n-我在意的不是股份有限公司', 34, '柿本廣大', '(配音)青木陽菜、羊宮妃那、立石凛、小日向美香、林鼓子、高尾奏音、渡瀨結月、岡田夢以、小山茉美、小清水亞美、儀武祐子', 'rgproject/movie/1004.jpg\n'),
(1005, '出神入化 3', 112, 23, '2025-12-07 10:35:41', 5, '《出神入化》續集電影，《屍樂園》魯賓弗來舍執導，首集人馬強勢歸隊，包括傑西艾森柏格、伍迪哈里遜、戴夫法蘭科以及此次重新回歸的艾拉費雪，元組四人完整合體「四騎士」重振天團威名。以及蘿莎蒙派克與摩根費里曼共同主演。\r\n\r\n\r\n這次他們將成為鑽石大盜，對決邪惡勢力，嗆聲「要阻止惡魔，不是斬斷它的雙手，而是扒走它的錢包」。\r\n\r\n影片更網羅了新生代實力派新星亞莉安娜葛林布拉特、多明尼克塞薩、賈斯提斯史密斯等人加入神偷行列，隨著老將與新血的碰撞，勢將掀起前所未見的魔術戲法，而系列靈魂人物摩根費里曼也確定現身，他將領導著全新的騎士團，對抗這次重磅加盟的影后羅莎蒙派克所飾演的犯罪集團首腦。\r\n\r\n-龍祥電影', 35, '魯賓弗來舍', '賽斯葛雷恩史密斯、麥可雷斯理、雷特瑞斯、Edward Ricourt、Eric Warren Singer、保羅韋尼克、摩根費里曼', 'rgproject/movie/1005.jpg\n'),
(1006, '大濛', 134, 23, '2025-11-27 00:00:00', 5, '入圍2025金馬獎最佳劇情片、最佳導演、最佳男主角、最佳女主角、最佳原著劇本、最佳美術設計等11項獎項，陳玉勳繼2020年《消失的情人節》後再度編導第6部劇情長片《大濛》，與監製葉如芬、李烈4度合作，方郁婷、香港新生代男星柯煒林、金曲音樂人9m88主演，全新組合帶觀眾重返民國40年代動盪的台灣，感受小人物在時代洪流下為生存奮鬥的勇氣與情感。\r\n\r\n女主角阿月接獲哥哥被槍斃死訊，毅然決然從嘉義北上，尋覓姊姊阿霞一起前往認屍，因緣際會結識三輪車伕趙公道，發展出一段超越血緣的羈絆。陳玉勳表示這些年來，看了不少白色恐怖時期的文章，許多令人動容的真實事件撼動了他，但相關電影屈指可數，他自問：「是大家不熟悉還是不願再提起？」\r\n\r\n金馬新人方郁婷與香港新生代男星柯煒林在電影《大濛》中首度合作，戲裡展現十足的默契，戲外更攜手挺進金馬獎，雙雙入圍男女主角獎，成為最矚目的新星組合。雖然兩人相差15歲，但私下經常打鬧互動，在旁人眼裡像極了兄妹，柯煒林大方分享片中兩人的微妙互動：「我飾演的趙公道像『怪叔叔』、『壞哥哥』，帶她一起闖蕩台北。」他形容角色「有點屁孩」，笑說：「會不斷在她面前罵髒話，不會把她當小孩。我私下也常鬧郁婷，因為我們感情要好，戲裡的感情才能自然。」他甚至在等戲空檔上演「廣東粗話教學」，讓現場氣氛變得很熱絡。\r\n\r\n電影自2023年12月初開拍，取景地遍及台南、嘉義，更在鹽水「岸內影視基地」斥資6千萬台幣搭建早期的台灣農村建築、金山街道、市場、福馬林池等重要場景，並重現熱鬧繁榮的台北榮町商圈。\r\n\r\n-牽猴子', 36, '陳玉勳', '柯煒林、方郁婷、9m88', 'rgproject/movie/1006.jpg\n'),
(1007, '終極戰士：殺戮星球', 107, 21, '2025-12-07 10:35:41', 5, '《終極戰士》系列作品，本片由《終極戰士：獸獵者》導演丹崔克坦伯格繼續執導，《巴布狄倫：搖滾詩人》艾兒芬妮主演，丹崔克坦伯格與《終極戰士：獸獵者》編劇搭檔派屈克艾森再度執筆劇本，攝影指導傑夫卡特也應聲歸隊，一同打造超越想像的磅礴壯麗異星世界。\r\n\r\n宇宙最強獵人終極戰士身處危機四伏的神秘星球，但這次他並非因爲嗜血而大開殺戒，而竟是被逐出自己的家園，且被迫展開「獵殺訓練」，才能為自己贖回返家的資格！\r\n\r\n本集武器也再度升級，除了終極戰士的招牌「開山刀」，更有強化版弓箭和超帥迴旋鏢，令他的戰鬥力大幅提升，即使面臨再龐大凶猛的飛天遁地駭人怪獸，從掠食者成為獵物的他也無須畏懼並咆哮宣示：「我不是任何人的獵物！」但艾兒芬妮最後又丟出一句：「這趟獵殺我們並不孤單」，要他做好全力迎戰的心理準備。', 31, '丹雀柏格', '艾兒芬妮、Dimitrius Schuster-Koloamatangi', 'rgproject/movie/1007.jpg\n');

-- --------------------------------------------------------

--
-- 資料表結構 `movieRating`
--

CREATE TABLE `movieRating` (
  `ratingID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `memberID` varchar(10) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `movieType`
--

CREATE TABLE `movieType` (
  `movieTypeID` int(11) NOT NULL,
  `movieTypeName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `movieType`
--

INSERT INTO `movieType` (`movieTypeID`, `movieTypeName`) VALUES
(31, '動作'),
(32, '喜劇'),
(33, '奇幻/科幻'),
(34, '音樂/歌舞'),
(35, '犯罪'),
(36, '歷史');

-- --------------------------------------------------------

--
-- 資料表結構 `orderStatus`
--

CREATE TABLE `orderStatus` (
  `orderStatusID` varchar(10) NOT NULL,
  `orderStatusName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orderStatus`
--

INSERT INTO `orderStatus` (`orderStatusID`, `orderStatusName`) VALUES
('401', '已預約'),
('402', '已取消'),
('403', '已付款'),
('404', '退款中'),
('405', '已建立'),
('406', '預約失敗'),
('407', '已退款');

-- --------------------------------------------------------

--
-- 資料表結構 `playVersion`
--

CREATE TABLE `playVersion` (
  `versionID` int(11) NOT NULL,
  `versionName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `playVersion`
--

INSERT INTO `playVersion` (`versionID`, `versionName`) VALUES
(501, '2D'),
(502, '3D'),
(503, 'IMAX'),
(504, '4DX'),
(505, 'D-BOX'),
(506, 'ATMOS');

-- --------------------------------------------------------

--
-- 資料表結構 `redemptionRecord`
--

CREATE TABLE `redemptionRecord` (
  `redemptionID` int(11) NOT NULL,
  `memberID` varchar(10) NOT NULL,
  `voucherID` int(11) NOT NULL,
  `redeemDate` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `seatCondition`
--

CREATE TABLE `seatCondition` (
  `showingID` int(11) NOT NULL,
  `seatNumber` varchar(10) NOT NULL,
  `seatEmpty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `seatCondition`
--

INSERT INTO `seatCondition` (`showingID`, `seatNumber`, `seatEmpty`) VALUES
(801, 'A1', 1),
(801, 'A10', 1),
(801, 'A2', 1),
(801, 'A3', 1),
(801, 'A4', 1),
(801, 'A5', 1),
(801, 'A6', 1),
(801, 'A7', 1),
(801, 'A8', 1),
(801, 'A9', 1),
(801, 'B1', 1),
(801, 'B10', 1),
(801, 'B2', 1),
(801, 'B3', 1),
(801, 'B4', 1),
(801, 'B5', 1),
(801, 'B6', 1),
(801, 'B7', 1),
(801, 'B8', 1),
(801, 'B9', 1),
(801, 'C1', 1),
(801, 'C10', 1),
(801, 'C2', 1),
(801, 'C3', 1),
(801, 'C4', 1),
(801, 'C5', 1),
(801, 'C6', 1),
(801, 'C7', 1),
(801, 'C8', 1),
(801, 'C9', 1),
(801, 'D1', 1),
(801, 'D10', 1),
(801, 'D2', 1),
(801, 'D3', 1),
(801, 'D4', 1),
(801, 'D5', 1),
(801, 'D6', 1),
(801, 'D7', 1),
(801, 'D8', 1),
(801, 'D9', 1),
(801, 'E1', 1),
(801, 'E10', 1),
(801, 'E2', 1),
(801, 'E3', 1),
(801, 'E4', 1),
(801, 'E5', 1),
(801, 'E6', 1),
(801, 'E7', 1),
(801, 'E8', 1),
(801, 'E9', 1),
(801, 'F1', 1),
(801, 'F10', 1),
(801, 'F2', 1),
(801, 'F3', 1),
(801, 'F4', 1),
(801, 'F5', 1),
(801, 'F6', 1),
(801, 'F7', 1),
(801, 'F8', 1),
(801, 'F9', 1),
(801, 'G1', 1),
(801, 'G10', 1),
(801, 'G2', 1),
(801, 'G3', 1),
(801, 'G4', 1),
(801, 'G5', 1),
(801, 'G6', 1),
(801, 'G7', 1),
(801, 'G8', 1),
(801, 'G9', 1),
(801, 'H1', 1),
(801, 'H10', 1),
(801, 'H2', 1),
(801, 'H3', 1),
(801, 'H4', 1),
(801, 'H5', 1),
(801, 'H6', 1),
(801, 'H7', 1),
(801, 'H8', 1),
(801, 'H9', 1),
(801, 'I1', 1),
(801, 'I10', 1),
(801, 'I2', 1),
(801, 'I3', 1),
(801, 'I4', 1),
(801, 'I5', 1),
(801, 'I6', 1),
(801, 'I7', 1),
(801, 'I8', 1),
(801, 'I9', 1),
(801, 'J1', 1),
(801, 'J10', 1),
(801, 'J2', 1),
(801, 'J3', 1),
(801, 'J4', 1),
(801, 'J5', 1),
(801, 'J6', 1),
(801, 'J7', 1),
(801, 'J8', 1),
(801, 'J9', 1),
(802, 'A1', 1),
(802, 'A10', 1),
(802, 'A2', 1),
(802, 'A3', 1),
(802, 'A4', 1),
(802, 'A5', 1),
(802, 'A6', 1),
(802, 'A7', 1),
(802, 'A8', 1),
(802, 'A9', 1),
(802, 'B1', 1),
(802, 'B10', 1),
(802, 'B2', 1),
(802, 'B3', 1),
(802, 'B4', 1),
(802, 'B5', 1),
(802, 'B6', 1),
(802, 'B7', 1),
(802, 'B8', 1),
(802, 'B9', 1),
(802, 'C1', 1),
(802, 'C10', 1),
(802, 'C2', 1),
(802, 'C3', 1),
(802, 'C4', 1),
(802, 'C5', 1),
(802, 'C6', 1),
(802, 'C7', 1),
(802, 'C8', 1),
(802, 'C9', 1),
(802, 'D1', 1),
(802, 'D10', 1),
(802, 'D2', 1),
(802, 'D3', 1),
(802, 'D4', 1),
(802, 'D5', 1),
(802, 'D6', 1),
(802, 'D7', 1),
(802, 'D8', 1),
(802, 'D9', 1),
(802, 'E1', 1),
(802, 'E10', 1),
(802, 'E2', 1),
(802, 'E3', 1),
(802, 'E4', 1),
(802, 'E5', 1),
(802, 'E6', 1),
(802, 'E7', 1),
(802, 'E8', 1),
(802, 'E9', 1),
(802, 'F1', 1),
(802, 'F10', 1),
(802, 'F2', 1),
(802, 'F3', 1),
(802, 'F4', 1),
(802, 'F5', 1),
(802, 'F6', 1),
(802, 'F7', 1),
(802, 'F8', 1),
(802, 'F9', 1),
(802, 'G1', 1),
(802, 'G10', 1),
(802, 'G2', 1),
(802, 'G3', 1),
(802, 'G4', 1),
(802, 'G5', 1),
(802, 'G6', 1),
(802, 'G7', 1),
(802, 'G8', 1),
(802, 'G9', 1),
(802, 'H1', 1),
(802, 'H10', 1),
(802, 'H2', 1),
(802, 'H3', 1),
(802, 'H4', 1),
(802, 'H5', 1),
(802, 'H6', 1),
(802, 'H7', 1),
(802, 'H8', 1),
(802, 'H9', 1),
(802, 'I1', 1),
(802, 'I10', 1),
(802, 'I2', 1),
(802, 'I3', 1),
(802, 'I4', 1),
(802, 'I5', 1),
(802, 'I6', 1),
(802, 'I7', 1),
(802, 'I8', 1),
(802, 'I9', 1),
(802, 'J1', 1),
(802, 'J10', 1),
(802, 'J2', 1),
(802, 'J3', 1),
(802, 'J4', 1),
(802, 'J5', 1),
(802, 'J6', 1),
(802, 'J7', 1),
(802, 'J8', 1),
(802, 'J9', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `sessionClass`
--

CREATE TABLE `sessionClass` (
  `sessionToken` varchar(128) NOT NULL,
  `memberID` varchar(10) NOT NULL,
  `createAt` date NOT NULL,
  `experiedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `showing`
--

CREATE TABLE `showing` (
  `showingID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `theaterID` varchar(6) NOT NULL,
  `versionID` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `cinemaID` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `showing`
--

INSERT INTO `showing` (`showingID`, `movieID`, `theaterID`, `versionID`, `startTime`, `cinemaID`) VALUES
(801, 1001, '601', 501, '2025-12-23 09:00:00', '01'),
(802, 1002, '603', 504, '2025-12-07 16:43:45', '01');

-- --------------------------------------------------------

--
-- 資料表結構 `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisorAcc` varchar(50) NOT NULL,
  `supervisorPwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `supervisor`
--

INSERT INTO `supervisor` (`supervisorAcc`, `supervisorPwd`) VALUES
('ChuaYongPing2004@viewshow.com', 'c666c49370da29d08dea0800803ba51e'),
('test@vieshow.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 資料表結構 `Theater`
--

CREATE TABLE `Theater` (
  `theaterID` varchar(6) NOT NULL,
  `theaterName` varchar(30) NOT NULL,
  `seatNumber` int(11) NOT NULL,
  `cinemaID` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `Theater`
--

INSERT INTO `Theater` (`theaterID`, `theaterName`, `seatNumber`, `cinemaID`) VALUES
('601', '1廳', 100, '01'),
('602', '2廳', 100, '01'),
('603', 'IMAX廳', 100, '01'),
('604', 'D-BOX廳', 100, '01');

-- --------------------------------------------------------

--
-- 資料表結構 `ticketClass`
--

CREATE TABLE `ticketClass` (
  `ticketID` varchar(10) NOT NULL,
  `ticketTypeName` varchar(10) NOT NULL,
  `ticketValue` int(11) NOT NULL,
  `ticketTypeID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `ticketClass`
--

INSERT INTO `ticketClass` (`ticketID`, `ticketTypeName`, `ticketValue`, `ticketTypeID`) VALUES
('801', '全票', 300, '701'),
('802', '學生票', 250, '701'),
('803', '敬老票', 220, '701'),
('804', '網路全票', 280, '702'),
('805', '網路學生', 230, '702'),
('806', '套票', 450, '703');

-- --------------------------------------------------------

--
-- 資料表結構 `ticketType`
--

CREATE TABLE `ticketType` (
  `ticketTypeID` varchar(10) NOT NULL,
  `ticketTypeName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `ticketType`
--

INSERT INTO `ticketType` (`ticketTypeID`, `ticketTypeName`) VALUES
('701', '現場購票'),
('702', '網路訂票'),
('703', '套票'),
('704', '優惠票'),
('705', '團體票');

-- --------------------------------------------------------

--
-- 資料表結構 `voucherClass`
--

CREATE TABLE `voucherClass` (
  `voucherID` int(10) NOT NULL,
  `voucherName` varchar(100) NOT NULL,
  `voucherImage` varchar(255) NOT NULL,
  `pricePointsl` int(10) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`cinemaID`);

--
-- 資料表索引 `cinemaShowtimes`
--
ALTER TABLE `cinemaShowtimes`
  ADD PRIMARY KEY (`cinemaID`,`movieID`),
  ADD KEY `fk_cshow_movie` (`movieID`);

--
-- 資料表索引 `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeID`);

--
-- 資料表索引 `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`mealsID`),
  ADD KEY `fk_meals_type` (`mealsTypeID`);

--
-- 資料表索引 `mealsType`
--
ALTER TABLE `mealsType`
  ADD PRIMARY KEY (`mealsTypeID`);

--
-- 資料表索引 `memberCashCard`
--
ALTER TABLE `memberCashCard`
  ADD PRIMARY KEY (`memberCardID`);

--
-- 資料表索引 `memberPoint`
--
ALTER TABLE `memberPoint`
  ADD PRIMARY KEY (`memberPointID`),
  ADD KEY `fk_session_member` (`memberID`);

--
-- 資料表索引 `memberProfile`
--
ALTER TABLE `memberProfile`
  ADD PRIMARY KEY (`memberID`),
  ADD UNIQUE KEY `uq_member_card` (`memberCardID`);

--
-- 資料表索引 `memberRecharge`
--
ALTER TABLE `memberRecharge`
  ADD PRIMARY KEY (`TranscationID`),
  ADD KEY `fk_recharge_member` (`memberCardID`);

--
-- 資料表索引 `memberRecord`
--
ALTER TABLE `memberRecord`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `fk_mrecord_member` (`memberCardID`),
  ADD KEY `fk_mrecord_showing` (`showingID`),
  ADD KEY `orderStatusID` (`orderStatusID`) USING BTREE;

--
-- 資料表索引 `menuStatus`
--
ALTER TABLE `menuStatus`
  ADD PRIMARY KEY (`orderID`,`selectedMeals`);

--
-- 資料表索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movieID`),
  ADD KEY `fk_movie_grade` (`gradeID`),
  ADD KEY `fk_movie_type` (`movieTypeID`);

--
-- 資料表索引 `movieRating`
--
ALTER TABLE `movieRating`
  ADD PRIMARY KEY (`ratingID`),
  ADD UNIQUE KEY `uq_movie_member` (`movieID`,`memberID`),
  ADD KEY `fk_rating_member` (`memberID`);

--
-- 資料表索引 `movieType`
--
ALTER TABLE `movieType`
  ADD PRIMARY KEY (`movieTypeID`);

--
-- 資料表索引 `orderStatus`
--
ALTER TABLE `orderStatus`
  ADD PRIMARY KEY (`orderStatusID`);

--
-- 資料表索引 `playVersion`
--
ALTER TABLE `playVersion`
  ADD PRIMARY KEY (`versionID`);

--
-- 資料表索引 `redemptionRecord`
--
ALTER TABLE `redemptionRecord`
  ADD PRIMARY KEY (`redemptionID`),
  ADD KEY `fk_redemption_member` (`memberID`),
  ADD KEY `fk_redemption_voucher` (`voucherID`);

--
-- 資料表索引 `seatCondition`
--
ALTER TABLE `seatCondition`
  ADD PRIMARY KEY (`showingID`,`seatNumber`);

--
-- 資料表索引 `sessionClass`
--
ALTER TABLE `sessionClass`
  ADD PRIMARY KEY (`sessionToken`),
  ADD KEY `fk_member_ID` (`memberID`);

--
-- 資料表索引 `showing`
--
ALTER TABLE `showing`
  ADD PRIMARY KEY (`showingID`),
  ADD KEY `fk_showing_movie` (`movieID`),
  ADD KEY `fk_showing_theater` (`theaterID`),
  ADD KEY `fk_showing_version` (`versionID`),
  ADD KEY `idx_showing_cinema` (`cinemaID`);

--
-- 資料表索引 `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`supervisorAcc`);

--
-- 資料表索引 `Theater`
--
ALTER TABLE `Theater`
  ADD PRIMARY KEY (`theaterID`),
  ADD KEY `fk_theater_cinema` (`cinemaID`);

--
-- 資料表索引 `ticketClass`
--
ALTER TABLE `ticketClass`
  ADD PRIMARY KEY (`ticketID`),
  ADD KEY `fk_ticketclass_type` (`ticketTypeID`);

--
-- 資料表索引 `ticketType`
--
ALTER TABLE `ticketType`
  ADD PRIMARY KEY (`ticketTypeID`);

--
-- 資料表索引 `voucherClass`
--
ALTER TABLE `voucherClass`
  ADD PRIMARY KEY (`voucherID`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `cinemaShowtimes`
--
ALTER TABLE `cinemaShowtimes`
  ADD CONSTRAINT `fk_cshow_cinema` FOREIGN KEY (`cinemaID`) REFERENCES `cinema` (`cinemaID`),
  ADD CONSTRAINT `fk_cshow_movie` FOREIGN KEY (`movieID`) REFERENCES `movie` (`movieID`);

--
-- 資料表的限制式 `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `fk_meals_type` FOREIGN KEY (`mealsTypeID`) REFERENCES `mealsType` (`mealsTypeID`);

--
-- 資料表的限制式 `memberCashCard`
--
ALTER TABLE `memberCashCard`
  ADD CONSTRAINT `fk_cashcard_member` FOREIGN KEY (`memberCardID`) REFERENCES `memberProfile` (`memberCardID`);

--
-- 資料表的限制式 `memberPoint`
--
ALTER TABLE `memberPoint`
  ADD CONSTRAINT `fk_session_member` FOREIGN KEY (`memberID`) REFERENCES `memberProfile` (`memberID`);

--
-- 資料表的限制式 `memberRecharge`
--
ALTER TABLE `memberRecharge`
  ADD CONSTRAINT `fk_recharge_member` FOREIGN KEY (`memberCardID`) REFERENCES `memberProfile` (`memberCardID`);

--
-- 資料表的限制式 `memberRecord`
--
ALTER TABLE `memberRecord`
  ADD CONSTRAINT `fk_mrecord_member` FOREIGN KEY (`memberCardID`) REFERENCES `memberProfile` (`memberCardID`),
  ADD CONSTRAINT `fk_mrecord_showing` FOREIGN KEY (`showingID`) REFERENCES `showing` (`showingID`);

--
-- 資料表的限制式 `menuStatus`
--
ALTER TABLE `menuStatus`
  ADD CONSTRAINT `fk_menustatus_order` FOREIGN KEY (`orderID`) REFERENCES `memberRecord` (`orderID`);

--
-- 資料表的限制式 `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `fk_movie_grade` FOREIGN KEY (`gradeID`) REFERENCES `grade` (`gradeID`),
  ADD CONSTRAINT `fk_movie_type` FOREIGN KEY (`movieTypeID`) REFERENCES `movieType` (`movieTypeID`);

--
-- 資料表的限制式 `movieRating`
--
ALTER TABLE `movieRating`
  ADD CONSTRAINT `fk_rating_member` FOREIGN KEY (`memberID`) REFERENCES `memberProfile` (`memberID`),
  ADD CONSTRAINT `fk_rating_movie` FOREIGN KEY (`movieID`) REFERENCES `movie` (`movieID`);

--
-- 資料表的限制式 `redemptionRecord`
--
ALTER TABLE `redemptionRecord`
  ADD CONSTRAINT `fk_redemption_member` FOREIGN KEY (`memberID`) REFERENCES `memberProfile` (`memberID`),
  ADD CONSTRAINT `fk_redemption_voucher` FOREIGN KEY (`voucherID`) REFERENCES `voucherClass` (`voucherID`);

--
-- 資料表的限制式 `seatCondition`
--
ALTER TABLE `seatCondition`
  ADD CONSTRAINT `fk_seat_showing` FOREIGN KEY (`showingID`) REFERENCES `showing` (`showingID`);

--
-- 資料表的限制式 `sessionClass`
--
ALTER TABLE `sessionClass`
  ADD CONSTRAINT `fk_member_ID` FOREIGN KEY (`memberID`) REFERENCES `memberProfile` (`memberID`);

--
-- 資料表的限制式 `showing`
--
ALTER TABLE `showing`
  ADD CONSTRAINT `fk_showing_cinema` FOREIGN KEY (`cinemaID`) REFERENCES `cinema` (`cinemaID`),
  ADD CONSTRAINT `fk_showing_movie` FOREIGN KEY (`movieID`) REFERENCES `movie` (`movieID`),
  ADD CONSTRAINT `fk_showing_theater` FOREIGN KEY (`theaterID`) REFERENCES `Theater` (`theaterID`),
  ADD CONSTRAINT `fk_showing_version` FOREIGN KEY (`versionID`) REFERENCES `playVersion` (`versionID`);

--
-- 資料表的限制式 `Theater`
--
ALTER TABLE `Theater`
  ADD CONSTRAINT `fk_theater_cinema` FOREIGN KEY (`cinemaID`) REFERENCES `cinema` (`cinemaID`);

--
-- 資料表的限制式 `ticketClass`
--
ALTER TABLE `ticketClass`
  ADD CONSTRAINT `fk_ticketclass_type` FOREIGN KEY (`ticketTypeID`) REFERENCES `ticketType` (`ticketTypeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

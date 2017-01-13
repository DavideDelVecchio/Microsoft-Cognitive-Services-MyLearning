# EXample Data for the Azure Cognitive Services Translator Text API 
CREATE TABLE [dbo].[DetectLanguage](
	[LineNo] [int] IDENTITY(1,1) NOT NULL,
	[Textline] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DetectLanguage] PRIMARY KEY CLUSTERED 
(
	[LineNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DetectLanguage] ON 

GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (1, N'Vor vielen Jahren jagte einmal im Walde von Shimoda1 der Sohn eines Fürsten.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (2, N'Er hatte das seltene Glück einen schneeweißen Fuchs weiblichen Geschlechts zu fangen.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (3, N'The Time Traveller (for so it will be convenient to speak of him) was expounding a recondite matter to us. His grey eyes shone and twinkled, and his usually pale face was flushed and animated.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (4, N'The fire burned brightly, and the soft radiance of the incandescent lights in the lilies of silver caught the bubbles that flashed and passed in our glasses.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (5, N'Η ακρόπολις Μαχαιρουσία υψούτο προς ανατολάς της Νεκράς θαλάσσης επί κωνοειδούς βράχου μελανού και αποκρήμνου.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (6, N'Τέσσαρες βαθείαι κοιλάδες την περιέκλειον, δύο προς τα πλάγια, μία απέναντι και η τετάρτη πέραν.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (7, N'周公，聖人之治者也，後王不能舉，則仲尼述之，而周公之道明。')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (8, N'文中子，聖人之修者也，孟軻之徒歟，非諸子流矣。蓋萬章、公孫醜不能極師之奧，盡錄其言，故孟氏章 句略而多闕。')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (9, N'Ne ovat kevään ensimäisiä nuo kömpelöt, niukkatuoksuiset keltakukat.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (10, N'Ne nousevat melkein samoihin aikoihin kuin niittyjen nurmi ja juuri silloin kuin lämpöiset kevättuulet lumien alla levänneistä laihoista ruosteenkarvaa pois hiovat.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (11, N'אני שכבתי בעליתי, ואשמע ממעל לי את קול השעון אשר השמיע את השעה הששית.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (12, N'הבקר כמעט כבר האיר.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (13, N'אנחנו עמדנו בחדר-המבוא.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (14, N'或日の暮方の事である。')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (15, N'一人の下人が、羅生門の下で雨やみを待っていた。')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (16, N'Na początku osiemnastego wieku gra osiągnęła wysokie stadium rozwoju we 
Francji, Anglii i Niemczech.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (17, N'Za najlepszych graczy obecnie uważa się 
Newella Banksa i Alfreda Jordana.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (18, N'Paa veien avla jeg et besøk hos min slegt i Edinburgh. ')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (19, N'Det har sine fordele at være amerikaner.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (20, N'V tomto kraji vyrostli kdysi zbojníci Ondráš a Juráš.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (21, N'Zemřeli Ondráš a Juráš. Valašská statečnost však nezemřela.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (22, N'Byli to valašští partyzáni.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (23, N'Það eru eigi fötin, hatturinn, skórnir eða fingurgullin.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (24, N'Sama gildir auðvitað um konur.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (25, N'hefir mikla þýðingu og getur borið mikinn ávöxt.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (26, N'. إنه اسم مشروعه الخطير، مشروع أول وأعرق مكتبة الكترونية في التاريخ. إنه مشروع غوتنبرغ ')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (27, N'ترى هل نسينا شيئاً خلال حديثنا عن مغامرة هارت الكبرى؟ نعم. إنه اسم مشروعه الخطير، مشروع أول وأعرق مكتبة الكترونية في التاريخ. إنه مشروع غوتنبرغ Project Gutenberg.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (28, N'Die bedrywigheid van die laaste jare is van veelsydige geaardheid.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (29, N'Aan die spits van die intellektuele gedeelte van die volk staan die
wetenskaplik gevormde leiers, ten volle toegerus met al die geestelike
goedere van die buiteland.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (30, N'т, без никакъв катехизис за изкуството и неговите цели.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (31, N'буждане добри чувства в човешкото сърце.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (32, N'Няколко пъти се е ръкувал с Юнгфрау,
оная дивна красавица, която и нему, както и на великия руски романист,
е пришепвала световни тайни.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (33, N'Ka tupu nei a Tutanekai ratou ko ana
tuakana, a ka whakatangata.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (34, N'Na, ka hanga e Tutanekai tona pourewa ki reira ki Kaiweka.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (35, N'A ka ngaro te ngenge, ka kauhoe ano a Hinemoa.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (36, N'Ei meile ole waja midagi. Meie olime õemehe pool sees ja
oleme küla hääd saanud.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (37, N'Küll sa homme kõnelema hakkad. Roni nüüd ära ülesse ahju
pääle, sääl on sul soe magada.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (38, N'Уже и сейчасъ въ Англіи, въ Германіи,
въ Чехіи издаются книги о старомъ и новомъ русскомъ искусствѣ.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (39, N'Бытъ, жизнь Московіи кажется имъ суровой.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (40, N'Såtillvida var allting gott och väl.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (41, N'Så erinrade hon sig
väckarklockan. Även den stod men kunde dragas upp i ett nafs.')
GO
INSERT [dbo].[DetectLanguage] ([LineNo], [Textline]) VALUES (42, N'Соба код Томе. На средини и са стране по једна врата.')
GO
SET IDENTITY_INSERT [dbo].[DetectLanguage] OFF
GO
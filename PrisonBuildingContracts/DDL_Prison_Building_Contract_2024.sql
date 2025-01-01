--Student Name		: Vinit Sharma
--Project Title		: Prison Building Contracts
--Course Title		: Msc in Data Analytics
--Date Tested		: 11/12/2024 

Drop Table Prison;
Drop Table Builder;

Create Table Builder 	 (				
	Builder_Id	 Number	(2),
	Name	 	 Varchar2(37),
	Town	 	 Varchar2(13),
	County	 	 Varchar2(9),
	Web_Site	 Varchar2(28),
	Num_Staff	 Number	(4),
	Specialism	 Varchar2(19),
	Payment_Terms	 Varchar2(11),
	Annual_Turnover	 Number	(6),
Constraint Builder_Builder_Id_Pk Primary Key (Builder_Id),
Constraint Builder_Specialism_Ck Check (Specialism In ('Prisons', 'Office Blocks', 'Specialist Premises', 'Underground Prisons')),
Constraint Builder_Payment_Terms_Ck Check (Payment_Terms In ('Weekly', 'Fortnightly', 'Monthly', 'Quarterly')));

Create Table Prison 	(				
	Prison_Id	Number	(2),
	Prison_Name	Varchar2(24),
	Prison_Capacity	Number	(3),
	Gender	 	Varchar2(6),
	Start_Year	Number	(4),
	End_Year	Number	(4),
	Prison_Security	Varchar2(6),
	Num_Officers	Number	(3),
	Projected_Cost	Number	(6),
	Actual_Cost	Number	(6),
	Funding_Source	Varchar2(25),
	Builder_Id	Number	(2),
	Date_Opened	Date,
Constraint Prison_Prison_Id_Pk Primary Key (Prison_Id),
Constraint Prison_Builder_Id_Fk Foreign Key (Builder_Id) References Builder (Builder_Id),
Constraint Prison_Gender_Ck Check (Gender In ('Female', 'Male', 'Mixed')),
Constraint Prison_Prison_Security_Ck Check (Prison_Security In ('Low', 'Medium', 'High')));


--Builder Table Inserts
Insert Into Builder Values ('1', 'HBG Ascon', 'Crookstown', 'Cork', 'www.asconrohcon.com', '1100', 'Prisons', 'Weekly', '280');
Insert Into Builder Values ('2', 'Michael McNamara And Co', 'Carrigtwohill', 'Cork', 'www.mcnamaraconstruction.com', '500', 'Prisons', 'Fortnightly', '270.31');
Insert Into Builder Values ('3', 'PJ Hegarty And Sons', 'Blarney', 'Cork', 'www.pjhegarty.ie', '670', 'Specialist Premises', 'Monthly', '251.4');
Insert Into Builder Values ('4', 'Bowen Group', 'Buttevant', 'Cork', 'www.bowengroup.ie', '870', 'Underground Prisons', 'Monthly', '193');
Insert Into Builder Values ('5', 'G And T Crampton Group', 'Conna', 'Cork', 'www.gtcrampton.ie', '250', 'Office Blocks', 'Monthly', '160.51');
Insert Into Builder Values ('6', 'Menolly Homes', 'Castlefin', 'Donegal', 'www.menolly.ie', '15', 'Prisons', 'Weekly', '157.4');
Insert Into Builder Values ('7', 'John Fleming Construction', 'Ballyshannon', 'Donegal', 'www.jfConstruction.ie', '168', 'Underground Prisons', 'Monthly', '135');
Insert Into Builder Values ('8', 'Ballymore Properties', 'Greencastle', 'Donegal', 'www.ballymoreproperties.ie', '140', 'Prisons', 'Quarterly', '134');
Insert Into Builder Values ('9', 'P Elliott And Co', 'Brinlack', 'Donegal', 'www.pelliott.com', '250', 'Prisons', 'Weekly', '130');
Insert Into Builder Values ('10', 'Park Developments (Dublin)', 'Dunfanaghy', 'Donegal', 'www.parkDevelopments.com', '150', 'Prisons', 'Fortnightly', '111');
Insert Into Builder Values ('11', 'O''Flynn Construction', 'Dublin City', 'Dublin', 'www.oFlynnConstruction.ie', '110', 'Specialist Premises', 'Monthly', '74.6');
Insert Into Builder Values ('12', 'Manor Park Homebuilders', 'Brittas', 'Dublin', 'www.manorpark.ie', '120', 'Underground Prisons', 'Quarterly', '72.7');
Insert Into Builder Values ('13', 'Uniform Construction', 'Dublin', 'Dublin', 'www.uniformConstruction.ie', '250', 'Underground Prisons', 'Weekly', '68.3');
Insert Into Builder Values ('14', 'Murnane And O''Shea', 'Clifden', 'Galway', 'www.mando.ie', '200', 'Prisons', 'Weekly', '58');
Insert Into Builder Values ('15', 'Duggan Brothers (Contractors)', 'Ahascragh', 'Galway', 'www.duggans.ie', '150', 'Prisons', 'Monthly', '57.53');
Insert Into Builder Values ('16', 'TBD Building Contractors', 'Ballygar', 'Galway', 'www.tbd.ie', '45', 'Office Blocks', 'Quarterly', '54.67');
Insert Into Builder Values ('17', 'Coffey Construction', 'Glenamaddy', 'Galway', 'www.coffeyconstruction.com', '380', 'Specialist Premises', 'Weekly', '51.26');
Insert Into Builder Values ('18', 'Brian McCarthy Building Contractors', 'Galway City', 'Galway', 'www.bmcc.ie', '120', 'Specialist Premises', 'Monthly', '51');
Insert Into Builder Values ('19', 'John F Supple', 'Cloonboo', 'Galway', 'www.johnfsupple.ie', '100', 'Prisons', 'Monthly', '47.11');
Insert Into Builder Values ('20', 'Maplewood Development Group', 'Carraroe', 'Galway', 'www.maplewood.ie', '40', 'Office Blocks', 'Quarterly', '41.15');
Insert Into Builder Values ('21', 'Noonan Construction', 'Athenry', 'Galway', 'www.noonanconstruction.ie', '48', 'Specialist Premises', 'Weekly', '36.75');
Insert Into Builder Values ('22', 'CLG Builders', 'Gort', 'Galway', 'www.clg.ie', '300', 'Underground Prisons', 'Fortnightly', '35');
Insert Into Builder Values ('23', 'Collen Group', 'Headford', 'Galway', 'www.cpmarchitecture.com', '95', 'Prisons', 'Monthly', '33.82');
Insert Into Builder Values ('24', 'Dwyer Nolan Developments', 'Fenit', 'Kerry', 'www.dwyernolan.ie', '37', 'Prisons', 'Quarterly', '30');
Insert Into Builder Values ('25', 'McCabe Builders', 'Causeway', 'Kerry', 'www.mccabebuilders.com', '170', 'Prisons', 'Weekly', '30');
Insert Into Builder Values ('26', 'William Neville And Sons Construction', 'Castleisland', 'Kerry', 'www.nevilleconstruction.ie', '47', 'Office Blocks', 'Weekly', '29.82');
Insert Into Builder Values ('27', 'SMC Group', 'Ballyduff', 'Kerry', 'www.smcgroup.ie', '250', 'Underground Prisons', 'Monthly', '26.73');
Insert Into Builder Values ('28', 'Allen And Smyth Construction', 'Annascaul', 'Kerry', 'www.allenandsmyth.com', '75', 'Underground Prisons', 'Monthly', '24');
Insert Into Builder Values ('29', 'Cedar Building Co', 'Athlone', 'Westmeath', 'www.cedarbuildingco.ie', '70', 'Prisons', 'Weekly', '23.5');
Insert Into Builder Values ('30', 'Kelland Homes', 'Mullingar', 'Westmeath', 'www.kellandhomes.ie', '40', 'Underground Prisons', 'Weekly', '22');

ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';


--Prison Table Inserts
Insert Into Prison Values (1,'Banagher Prison',356,'Mixed',1998,2001,'High',294,124000,129000,'KEB Ireland',12,'27-07-2001');
Insert Into Prison Values (2,'Crookstown Prison',270,'Male',1983,1984,'Medium',245,111000,116000,'ACT Venture Capital',25,'09-09-1984');
Insert Into Prison Values (3,'Ballyroe Prison',317,'Female',2011,2012,'Low',290,92000,95000,'Sanpaolo IMI Bank Ireland',25,'29-03-2012');
Insert Into Prison Values (4,'Arklow Prison',251,'Male',2000,2002,'Medium',215,101000,113000,'National Credit',14,'04-04-2002');
Insert Into Prison Values (5,'Fenit Prison',353,'Male',2003,2006,'High',315,93000,107000,'HFC Bank',24,'04-07-2006');
Insert Into Prison Values (6,'Ballysax Prison',387,'Male',1995,1996,'Medium',353,105000,105000,'ICC Venture Capital',15,'12-03-1996');
Insert Into Prison Values (7,'Gortnahoo Prison',264,'Male',2006,2008,'High',231,118000,118000,'KEB Ireland',19,'30-06-2008');
Insert Into Prison Values (8,'Causeway Prison',383,'Male',1999,2002,'Medium',346,93000,95000,'AIB Finance And Leasing',19,'19-12-2002');
Insert Into Prison Values (9,'Inistioge Prison',265,'Mixed',1992,1994,'High',224,112000,118000,'ACT Venture Capital',25,'28-09-1994');
Insert Into Prison Values (10,'Carrigtwohill Prison',255,'Mixed',1981,1982,'Low',189,90000,99000,'Sanpaolo IMI Bank Ireland',26,'20-12-1982');
Insert Into Prison Values (11,'Bellanode Prison',380,'Mixed',1999,2000,'Medium',360,120000,123000,'National Credit',12,'18-09-2000');
Insert Into Prison Values (12,'Clifden Prison',291,'Female',2002,2005,'Medium',255,91000,94000,'HFC Bank',11,'08-09-2005');
Insert Into Prison Values (13,'Graiguenamanagh Prison',365,'Male',1986,1989,'High',337,110000,119000,'ACT Venture Capital',10,'30-10-1989');
Insert Into Prison Values (14,'Castlefin Prison',266,'Male',1993,1995,'High',202,101000,113000,'HFC Bank',22,'18-05-1995');
Insert Into Prison Values (15,'Blarney Prison',332,'Mixed',2012,2015,'Medium',305,99000,113000,'AIB Finance And Leasing',27,'29-04-2015');
Insert Into Prison Values (16,'Coolgreany Prison',258,'Female',2014,2015,'Low',197,114000,115000,'ACT Venture Capital',4,'29-11-2015');
Insert Into Prison Values (17,'Delvin Prison',389,'Mixed',2009,2011,'Low',346,109000,115000,'Sanpaolo IMI Bank Ireland',2,'29-05-2011');
Insert Into Prison Values (18,'Ballyshannon Prison',276,'Female',2023,2024,'High',237,90000,95000,'National Credit',13,'05-04-2024');
Insert Into Prison Values (19,'Greencastle Prison',396,'Mixed',1988,1991,'High',337,127000,129000,'HFC Bank',7,'31-03-1991');
Insert Into Prison Values (20,'Clashmore Prison',330,'Female',1985,1986,'High',310,113000,128000,'ICC Venture Capital',9,'22-02-1986');
Insert Into Prison Values (21,'Clonegal Prison',300,'Female',1981,1983,'Low',231,108000,120000,'KEB Ireland',10,'12-08-1983');
Insert Into Prison Values (22,'Dublin City Prison',311,'Mixed',1982,1984,'Medium',280,116000,127000,'National Credit',23,'04-07-1984');
Insert Into Prison Values (23,'Garristown Prison',252,'Mixed',1993,1996,'Medium',187,127000,133000,'HFC Bank',10,'14-04-1996');
Insert Into Prison Values (24,'Broadford Prison',369,'Male',2006,2009,'Medium',316,127000,139000,'Sanpaolo IMI Bank Ireland',8,'03-12-2009');
Insert Into Prison Values (25,'Adare Prison',267,'Male',1982,1985,'Low',243,103000,113000,'National Credit',18,'26-06-1985');
Insert Into Prison Values (26,'Ballyjamesduff Prison',394,'Mixed',1991,1993,'Medium',346,117000,119000,'HFC Bank',25,'24-07-1993');
Insert Into Prison Values (27,'Buttevant Prison',320,'Female',1995,1997,'High',269,94000,108000,'ICC Venture Capital',17,'27-05-1997');
Insert Into Prison Values (28,'Brinlack Prison',393,'Female',1988,1991,'Medium',373,105000,107000,'KEB Ireland',6,'12-09-1991');
Insert Into Prison Values (29,'Ballybay Prison',276,'Mixed',1981,1983,'High',210,97000,101000,'ACT Venture Capital',6,'25-01-1983');
Insert Into Prison Values (30,'Conna Prison',352,'Female',2007,2009,'Low',292,93000,95000,'Sanpaolo IMI Bank Ireland',2,'15-07-2009');
Insert Into Prison Values (31,'Castleisland Prison',269,'Female',1997,1998,'High',202,113000,123000,'National Credit',26,'23-08-1998');
Insert Into Prison Values (32,'Dromiskin Prison',273,'Mixed',2009,2011,'Low',218,125000,135000,'HFC Bank',2,'20-03-2011');
Insert Into Prison Values (33,'Dunfanaghy Prison',277,'Male',2002,2003,'High',250,124000,131000,'ICC Venture Capital',8,'29-10-2003');
Insert Into Prison Values (34,'Ahascragh Prison',354,'Mixed',1992,1993,'Low',326,120000,131000,'KEB Ireland',27,'08-05-1993');
Insert Into Prison Values (35,'Ballyduff Prison',323,'Female',1983,1985,'Low',276,104000,108000,'HFC Bank',21,'02-11-1985');
Insert Into Prison Values (36,'Clones Prison',339,'Male',2001,2003,'High',306,120000,129000,'National Credit',11,'13-10-2003');
Insert Into Prison Values (37,'Balreask Prison',292,'Mixed',2013,2016,'High',238,117000,117000,'Sanpaolo IMI Bank Ireland',4,'15-09-2016');
Insert Into Prison Values (38,'Caherconlish Prison',358,'Mixed',1986,1988,'Medium',337,127000,133000,'National Credit',25,'23-08-1988');
Insert Into Prison Values (39,'Donegal Prison',268,'Female',1997,1998,'Low',229,107000,113000,'HFC Bank',26,'23-07-1998');
Insert Into Prison Values (40,'Ardagh Prison',335,'Female',2022,2023,'High',301,130000,141000,'ICC Venture Capital',5,'16-06-2023');
Insert Into Prison Values (41,'Brownstown Prison',313,'Male',1987,1988,'High',275,91000,92000,'KEB Ireland',7,'15-05-1988');
Insert Into Prison Values (42,'Glenealy Prison',276,'Female',1982,1983,'Medium',233,128000,140000,'AIB Finance And Leasing',17,'27-03-1983');
Insert Into Prison Values (43,'Ballinlough Prison',257,'Mixed',2023,2024,'Medium',226,112000,112000,'ACT Venture Capital',22,'03-09-2024');
Insert Into Prison Values (44,'Ballydesmond Prison',268,'Male',2009,2011,'Low',236,95000,106000,'Sanpaolo IMI Bank Ireland',20,'22-05-2011');
Insert Into Prison Values (45,'Ballygar Prison',366,'Mixed',1997,1999,'Medium',324,120000,135000,'National Credit',1,'01-03-1999');
Insert Into Prison Values (46,'Drimoleague Prison',251,'Mixed',1993,1996,'High',202,95000,102000,'KEB Ireland',9,'23-07-1996');
Insert Into Prison Values (47,'Ballycumber Prison',369,'Male',1989,1991,'High',329,96000,97000,'ICC Venture Capital',7,'22-05-1991');
Insert Into Prison Values (48,'Gowran Prison',373,'Female',2023,2024,'Medium',317,101000,112000,'KEB Ireland',21,'11-09-2024');
Insert Into Prison Values (49,'Ballyconnell Prison',396,'Mixed',1980,1983,'Low',335,114000,121000,'AIB Finance And Leasing',5,'29-01-1983');
Insert Into Prison Values (50,'Ballyhaise Prison',352,'Mixed',1989,1992,'Low',304,101000,116000,'ACT Venture Capital',11,'21-11-1992');
Insert Into Prison Values (51,'Castlemartyr Prison',305,'Mixed',1988,1990,'Low',272,93000,104000,'Sanpaolo IMI Bank Ireland',5,'29-08-1990');
Insert Into Prison Values (52,'Edenderry Prison',357,'Female',1981,1984,'Medium',294,96000,103000,'National Credit',25,'21-03-1984');
Insert Into Prison Values (53,'Johnstown Prison',307,'Female',1990,1992,'Medium',247,96000,102000,'HFC Bank',23,'30-09-1992');
Insert Into Prison Values (54,'Bridge End Prison',296,'Male',1995,1998,'Medium',268,116000,130000,'ICC Venture Capital',8,'02-12-1998');
Insert Into Prison Values (55,'Ballisodare Prison',289,'Female',2002,2005,'High',266,103000,110000,'AIB Finance And Leasing',25,'05-09-2005');
Insert Into Prison Values (56,'Glasslough Prison',388,'Male',2001,2003,'High',366,120000,130000,'KEB Ireland',7,'07-11-2003');
Insert Into Prison Values (57,'Glenamaddy Prison',390,'Mixed',2004,2007,'Medium',344,120000,128000,'Sanpaolo IMI Bank Ireland',23,'15-10-2007');
Insert Into Prison Values (58,'Ballytore Prison',359,'Male',1990,1991,'Medium',323,116000,119000,'National Credit',10,'01-03-1991');
Insert Into Prison Values (59,'Abbeyfeale Prison',308,'Female',1991,1993,'Low',251,102000,108000,'HFC Bank',23,'30-07-1993');
Insert Into Prison Values (60,'Emyvale Prison',319,'Male',2018,2021,'High',254,113000,123000,'ICC Venture Capital',12,'22-08-2021');
Insert Into Prison Values (61,'Baltimore Prison',359,'Male',2021,2022,'Low',311,115000,127000,'ACT Venture Capital',21,'28-12-2022');
Insert Into Prison Values (62,'Cootehill Prison',394,'Male',2003,2005,'High',362,95000,95000,'AIB Finance And Leasing',24,'05-11-2005');
Insert Into Prison Values (63,'Clonlara Prison',304,'Mixed',2012,2015,'High',279,108000,123000,'ACT Venture Capital',26,'06-08-2015');
Insert Into Prison Values (64,'Grangemore Prison',377,'Female',1996,1997,'Medium',312,94000,99000,'Sanpaolo IMI Bank Ireland',21,'14-06-1997');
Insert Into Prison Values (65,'Collon Prison',387,'Mixed',1991,1994,'Medium',358,119000,121000,'National Credit',25,'21-03-1994');
Insert Into Prison Values (66,'Galway City Prison',301,'Female',2016,2018,'Medium',232,109000,124000,'HFC Bank',19,'27-06-2018');
Insert Into Prison Values (67,'Cloonboo Prison',332,'Female',1985,1987,'High',273,116000,119000,'ICC Venture Capital',23,'10-01-1987');
Insert Into Prison Values (68,'Ballymore Eustace Prison',338,'Mixed',1984,1987,'High',314,98000,111000,'KEB Ireland',13,'21-03-1987');
Insert Into Prison Values (69,'Golden Prison',250,'Male',2009,2012,'Low',183,125000,130000,'AIB Finance And Leasing',1,'07-10-2012');
Insert Into Prison Values (70,'Burtonport Prison',356,'Male',2018,2021,'Medium',310,128000,137000,'KEB Ireland',12,'05-06-2021');
Insert Into Prison Values (71,'Coolaney Prison',352,'Female',1997,2000,'High',287,125000,138000,'Sanpaolo IMI Bank Ireland',1,'31-10-2000');
Insert Into Prison Values (72,'Carraroe Prison',303,'Mixed',2018,2020,'Medium',276,100000,115000,'Sanpaolo IMI Bank Ireland',17,'02-10-2020');
Insert Into Prison Values (73,'Drumlish Prison',319,'Male',2005,2007,'Low',269,123000,126000,'KEB Ireland',15,'23-01-2007');
Insert Into Prison Values (74,'Carrickmacross Prison',292,'Mixed',2004,2005,'High',254,103000,106000,'Sanpaolo IMI Bank Ireland',28,'19-12-2005');
Insert Into Prison Values (75,'Annascaul Prison',264,'Mixed',1984,1985,'High',201,102000,102000,'ACT Venture Capital',19,'12-12-1985');
Insert Into Prison Values (76,'Ballydehob Prison',275,'Male',2019,2021,'Medium',224,109000,119000,'AIB Finance And Leasing',26,'18-02-2021');
Insert Into Prison Values (77,'Clonaslee Prison',369,'Female',2012,2013,'Medium',333,126000,135000,'ACT Venture Capital',30,'24-11-2013');
Insert Into Prison Values (78,'Ballyclerahan Prison',340,'Mixed',2001,2002,'High',316,104000,110000,'Sanpaolo IMI Bank Ireland',1,'03-01-2002');
Insert Into Prison Values (79,'Cavan Prison',397,'Mixed',1987,1990,'Medium',351,126000,128000,'National Credit',25,'08-01-1990');
Insert Into Prison Values (80,'Belmullet Prison',311,'Female',2023,2024,'Low',272,125000,140000,'HFC Bank',28,'04-09-2024');
Insert Into Prison Values (81,'Cashel Prison',316,'Male',2020,2021,'Low',271,117000,130000,'ICC Venture Capital',27,'17-05-2021');
Insert Into Prison Values (82,'Ballinroad Prison',278,'Mixed',1981,1984,'Medium',249,124000,126000,'HFC Bank',12,'27-09-1984');
Insert Into Prison Values (83,'Glencullen Prison',297,'Male',2013,2016,'Medium',260,112000,124000,'ICC Venture Capital',25,'13-02-2016');
Insert Into Prison Values (84,'Ballynacargy Prison',377,'Female',1989,1990,'Low',340,118000,131000,'KEB Ireland',14,'26-12-1990');
Insert Into Prison Values (85,'Carrigans Prison',339,'Mixed',2010,2011,'Low',282,97000,105000,'National Credit',5,'30-01-2011');
Insert Into Prison Values (86,'Convoy Prison',354,'Mixed',1985,1986,'Medium',295,116000,131000,'National Credit',22,'12-11-1986');
Insert Into Prison Values (87,'Bray Prison',336,'Mixed',2022,2024,'High',283,119000,125000,'ACT Venture Capital',11,'22-09-2024');
Insert Into Prison Values (88,'Courtown Harbour Prison',303,'Male',2024,2024,'Low',236,93000,103000,'National Credit',10,'22-11-2024');


Select Count(*) As Builder_Count
From Builder;

Select Count(*) As Prison_Count
From Prison;






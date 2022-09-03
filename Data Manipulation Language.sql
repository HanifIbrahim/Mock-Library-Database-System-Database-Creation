/*
Hanif Lumsden
Oracle SQL DML Script
08/10/2021
*/

set define off;
/*The following will populate all tables with at least 10 rows*/
--10 Tables
INSERT INTO LibraryUser (name, username, password, institution)
VALUES ('Hanif lumsden', 'HanifLumsden1',  'CarsRock1', 'University of Maryland Global Campus');
INSERT INTO LibraryUser (name, username, password, institution)
VALUES ('Iylah Rhodes', 'IRoad',  'Genisis304', NULL);
INSERT INTO LibraryUser (name, username, password, institution)
VALUES ('Ffion Vickers', 'VicksTM',  'DoYouEvenMath131', 'University of Higher Math');
INSERT INTO LibraryUser (name, username, password, institution)
VALUES ('Lillie-May Stamp', 'LMSystem',  'LibrariesRCOOL4', 'University of Particular Librarians');
INSERT INTO LibraryUser (name, username, password, institution)
VALUES ('Lucinda Cummings', 'LeafyPlant',  'ExtraView2', NULL);
INSERT INTO LibraryUser (name, username, password, institution)
VALUES ('Nyle Marks', 'NyleMarx',  'MarxistsX0X0', 'Stonehedge College');
INSERT INTO LibraryUser (name, username, password, institution)
VALUES ('Beulah Hebert', 'Nebula134',  'OINoise3', NULL);
INSERT INTO LibraryUser (name, username, password, institution)
VALUES ('Zac Knapp', 'KnappNaps',  'Sleep424', 'Sleep & Relaxation University');
INSERT INTO LibraryUser (name, username, password, institution)
VALUES ('Suraj McCullough', 'RayofSunshine',  'DarbRock1', NULL);
INSERT INTO LibraryUser (name, username, password, institution)
VALUES ('Luisa Arnold', 'SocksSocky',  'Socks4Ever33', 'School of Hard Socks');

--18 Tables
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('SDLC Methodology', NULL, 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Hilbert Space Derivation', 'Mathematics', 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Pternonophobia', 'Psychology', 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('SQL vs. NoSQL', NULL, 'A');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Project Authorization', 'Library & Information Science', 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Moose Psychology', 'Anthropology', 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Neural Networks', NULL, 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Cerebral Cortex', NULL, 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Socks', NULL, 'B');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('History of Socks', 'History', 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Neural Activity Sleep', 'Anatomy & Physiology', 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Chicken Exports', NULL, 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Marxism', NULL, 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Data Definition Language', NULL, 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Capital', 'History', 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Library', NULL, 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Library Card Generator', NULL, 'F');
INSERT INTO Searches (fields, discipline, search_mode)
VALUES ('Physical & Logical ERD', NULL, 'A');

--12 Tables
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('ScienceDirect', 'Science', 'Elsevier', 'https://www.sciencedirect.com/');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('JSTOR Journal', 'All', 'Ithaka Harbors, Inc', 'https://www.jstor.org/');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('Newspaper Source Plus', 'News & Events', 'EBSCO Industries', 'https://www.ebsco.com/products/research-databases/newspaper-source-plus');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('EBSCO Discovery Service', 'General', 'EBSCO Industries', 'https://www.ebsco.com/products/ebsco-discovery-service');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('Regional Business News', 'Business & Economics', 'EBSCO Industries', 'https://www.ebsco.com/products/research-databases/regional-business-news');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('Business Source Ultimate', 'Business & Economics', 'EBSCO Industries', 'https://www.ebsco.com/products/research-databases/business-source-ultimate');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('Academic Search Ultimate', 'All', 'EBSCO Industries', 'https://www.ebsco.com/products/research-databases/academic-search-ultimate');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('Applied Science & Technology Source Ultimate', 'Engineering & Technology', 'EBSCO Industries', 'https://www.ebsco.com/products/research-databases/applied-science-technology-source-ultimate');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('Humanities Source Ultimate', 'Humanities', 'EBSCO Industries', 'https://www.ebsco.com/products/research-databases/humanities-source-ultimate');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('Sociology Source Ultimate', 'Sociology', 'EBSCO Industries', 'https://www.ebsco.com/products/research-databases/sociology-source-ultimate');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('IEEE Xplore Digital Library', 'Engineering & Technology', 'IEEE', 'https://ieeexplore.ieee.org/');
INSERT INTO Provider (name, subject_area, parent_company, url)
VALUES ('Cambridge University Press', 'All', 'University of Cambridge', 'https://www.cambridge.org/');

--19 Tables
INSERT INTO Subject (name, language, geography)
VALUES ('statistics', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('industry', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('industry', 'Spanish', 'South America');
INSERT INTO Subject (name, language, geography)
VALUES ('computing and processing', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('conferences & conventions', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('devices and systems', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('communications', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('education', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('therapeutics', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('history', 'English', 'Europe');
INSERT INTO Subject (name, language, geography)
VALUES ('history', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('finance', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('health & medicine', 'Dutch', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('language arts & disciplines', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('psychology', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('book reviews', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('mathematics', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('technology', 'English', 'All');
INSERT INTO Subject (name, language, geography)
VALUES ('philosophy', 'English', 'All');

--17 Tables
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (4, 'Conference', 'Impact of development methodology on cost & risk for development projects', 2017, 'https://doi.org/10.1109/ICRITO.2017.8342436');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (16, 'eBook', 'Hilbert Space Methods in Signal Processing', 2013, 'https://doi.org/10.1017/CBO9780511844515');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (14, 'News', 'Phobia of the week: Pteronophobia', 2002, 'https://search.ebscohost.com/login.aspx?direct=true&AuthType=ip,shib&db=n5h&AN=7EH3387720717&site=eds-live&scope=site&custid=gsu1');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (4, 'Conference', 'A survey on RDBMS and NoSQL Databases MySQL vs MongoDB', 2020, 'https://doi.org/10.1109/ICCCI48352.2020.9104047');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (10, 'Academic Journal', 'Aboriginal Harvesting in the Moose River Basin: A Historical and Contemporary Analysis', 1995, 'https://doi.org/10.1111/j.1755-618X.1995.tb00835.x');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (12, 'Academic Journal', 'Application of convolutional neural networks towards nuclei segmentation in localization-based super-resolution fluorescence microscopy images', 2021, 'https://doi.org/10.1186/s12859-021-04245-x');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (12, 'Academic Journal', 'Functional Parcellation of Individual Cerebral Cortex Based on Functional MRI', 2020, 'https://doi.org/10.1017/CBO9780511844515');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (18, 'eBook', 'Sock', 2017, 'https://search.ebscohost.com/login.aspx?direct=true&AuthType=ip,shib&db=nlebk&AN=1717187&site=eds-live&scope=site&custid=gsu1');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (10, 'Academic Journal', 'Socks at War: American Hand Knitters and Military Footwear Production for the World Wars', 2019, 'https://doi.org/10.2478/sho-2019-0005');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (8, 'Academic Journal', 'Novel concepts in sleep regulation', 2018, 'https://doi.org/10.1111/apha.13017');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (16, 'Periodical', 'China is now top destination for US chicken exports: U.S. poultry and egg products saw impressive year-over-year increases thanks to new Chinese demand.', 2020, 'https://search.ebscohost.com/login.aspx?direct=true&AuthType=ip,shib&db=bth&AN=145229935&site=eds-live&scope=site');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (9, 'Book', 'Marxism : with and beyond Marx', 2014, 'https://search.ebscohost.com/login.aspx?direct=true&AuthType=ip,shib&db=cat06552a&AN=gsu.9925394533402952&site=eds-live&scope=site');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (17, 'Academic Journal', 'The Development of SQL Language Skills in Data Definition and Data Manipulation Languages Using Exercises with Quizizz for Students Learning Engagement', 2018, 'https://doi.org/10.20961/ijie.v2i2.24430');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (10, 'eBook', 'Democracy’s Capital : Black Political Power in Washington, D.C., 1960s–1970s', 2019, 'https://doi.org/10.1017/CBO9780511844515');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (13, 'eBook', 'Libraries: A Design Manual', 2018, 'https://search.ebscohost.com/login.aspx?direct=true&AuthType=ip,shib&db=nlebk&AN=1221897&site=eds-live&scope=site');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (4, 'Conference', 'Template library for multi-GPU pseudorandom number recursion-based generators', 2013, 'https://ieeexplore.ieee.org/document/6644049');
INSERT INTO Sources (subjectid, source_type, title, year, url)
VALUES (17, 'eBook', 'Usage-Driven Database Design : From Logical Data Modeling through Physical Schema Definition', 2017, 'http://www.books24x7.com/marc.asp?bookid=128150');

INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (10, 0, 'IEEE', NULL, 'Bishan Dayal Chauhan');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (10, 0, 'IEEE', NULL, 'Ajay Rana');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (10, 0, 'IEEE', NULL, 'Neeraj Kumar Sharma');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (11, 1, 'Cambridge University Press', NULL, 'Rodney A. Kennedy');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (11, 1, 'Cambridge University Press', NULL, 'Parastoo Sadeghi');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (2, 2, 'Times Magazine UK', 'Times', NULL);
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (10, 3, 'IEEE', NULL, 'Sowndarya Palanisamy');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (10, 3, 'IEEE', NULL, 'P. SuvithaVani');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (9, 4, 'Canadian Review of Sociology', 'Canadian Sociological Association', 'Peter George');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (9, 4, 'Canadian Review of Sociology', 'Canadian Sociological Association', 'Fikret Berkes');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (9, 4, 'Canadian Review of Sociology', 'Canadian Sociological Association', 'Richard J. Preston');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (10, 5, 'BMC Bioinformatics', 'Springer Nature', 'Christopher A. Mela');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (10, 5, 'BMC Bioinformatics', 'Springer Nature', 'Yang Liu');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (7, 6, 'Neuroinformatics', 'Springer Link', 'Jiajia Zhao');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (7, 6, 'Neuroinformatics', 'Springer Link', 'Chao Tang');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (7, 6, 'Neuroinformatics', 'Springer Link', 'Jingxin Nie');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (6, 7, 'Bloomsbury', 'Bloomsbury Academic', 'Kim Adrian');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (6, 8, 'Studia Historiae Oeconomicae', 'De Gruyter Foundation', 'Rachel Maines');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (6, 9, 'Acta Physiologica', 'Scandinavian Physiological Society', 'H.-K. Wigren');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (6, 9, 'Acta Physiologica', 'Scandinavian Physiological Society', 'T. Porkka-Heiskanen');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (4, 10, 'Watt Poultry', NULL, 'Austin Alonzo');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (3, 11, 'Routledge India', 'Routledge', 'Amiya Bagchi');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (7, 12, 'Indonesian Journal of Informal Education', 'Universitas Sebelas Maret', 'Ratchadaporn Amornchewin');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (3, 13, 'University of North Carolina Press, The', 'University of North Carolina System', 'Lauren Pearlman');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (4, 14, 'Birkhäuser', NULL, 'Nolan Lushington');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (4, 14, 'Birkhäuser', NULL, 'Wolfgang Rudorf');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (4, 14, 'Birkhäuser', NULL, 'Liliane Wong');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (10, 15, 'IEEE', NULL, 'Dominik Szałkowski');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (10, 15, 'IEEE', NULL, 'Przemysław Stpiczyński');
INSERT INTO Publisher (providerid, issnisbn, publication, affiliation, author_name)
VALUES (10, 16, 'Business Media New York', 'Springer Science', 'George Tillman');

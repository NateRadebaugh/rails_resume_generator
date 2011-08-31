PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20110720061258');
INSERT INTO "schema_migrations" VALUES('20110720062651');
INSERT INTO "schema_migrations" VALUES('20110720062747');
INSERT INTO "schema_migrations" VALUES('20110720062808');
INSERT INTO "schema_migrations" VALUES('20110720062826');
INSERT INTO "schema_migrations" VALUES('20110720063504');
CREATE TABLE "experiences" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "role" varchar(255), "company" varchar(255), "location" varchar(255), "dates" varchar(255), "details" text, "created_at" datetime, "updated_at" datetime);
INSERT INTO "experiences" VALUES(1,'Interim Engineering Intern','Qualcomm, Inc.','San Diego, CA','May 2011 - August 2011','Wrote tools using Batch, Perl, Visual C++ and the MFC framework to automate the running of tests on an external server, generate regression reports, and send out emails, resulting in an over 705% increase in test productivity.
Wrote PHP and C++ scripts to streamline the creation and maintenance of Call Flow Analysis log parser tools.
Performed low level structure analysis and alignment, resulting in smaller data packets and faster data transfer speeds.
Wrote Ruby scripts to analyze header files and automatically refactor and decouple header files, significantly decreasing compile times.','2011-07-22 07:02:02.038169','2011-08-31 22:23:25.509762');
INSERT INTO "experiences" VALUES(2,'Senior Computer Consultant','Purdue ResNet','West Lafayette, IN','Fall 2010 - Present','Supervised ResNet Employees
Active role in the interviewing, hiring, and training of new employees','2011-07-22 07:02:14.862937','2011-08-31 04:48:50.900175');
INSERT INTO "experiences" VALUES(3,'Software Developer','Purdue ResNet','West Lafayette, IN','Spring 2010 - Present','Led a team of eight student developers in the development and maintenance of a PHP/MySQL driven management tool using the open source PHP Framework FuelPHP.
Developed PHP and Perl scripts to help monitor usage across the network.
Administered multiple Linux web and database servers used for development and production environments.','2011-07-22 07:02:28.914138','2011-08-31 04:48:04.356377');
INSERT INTO "experiences" VALUES(4,'Computer Consultant','Purdue ResNet','West Lafayette, IN','Fall 2009 - Spring 2010','Provided telephone and onsite support for over 10,000 ResNet internet users','2011-07-22 07:02:39.206421','2011-08-31 04:48:10.788547');
INSERT INTO "experiences" VALUES(5,'Web Designer','The Perfect Pastry','Allison Park, PA','2009','Worked with a client to create a website for a local bakery using HTML, CSS, JavaScript, and PHP.','2011-07-22 07:02:47.990407','2011-08-31 04:54:49.095217');
CREATE TABLE "computer_skills" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "skill" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "computer_skills" VALUES(1,'Windows, Mac, Unix, and Android','2011-07-22 06:59:18.910376','2011-07-22 06:59:18.910376');
INSERT INTO "computer_skills" VALUES(2,'SVN, Git, and Perforce','2011-07-22 06:59:23.981159','2011-07-22 06:59:23.981159');
INSERT INTO "computer_skills" VALUES(3,'Batch, Bash, Ruby, and Perl','2011-07-22 06:59:28.210809','2011-07-22 06:59:28.210809');
INSERT INTO "computer_skills" VALUES(4,'HTML, CSS, JavaScript, PHP, and MySQL','2011-07-22 06:59:32.517897','2011-07-22 06:59:32.517897');
INSERT INTO "computer_skills" VALUES(5,'C, C++, and Java using Object Oriented Programming','2011-07-22 06:59:36.232533','2011-07-22 06:59:36.232533');
CREATE TABLE "educations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "degree_type" varchar(255), "degree_subject" varchar(255), "school" varchar(255), "school_location" varchar(255), "graduation_date" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "educations" VALUES(1,'B.S.','Computer Science, concentration in Software Engineering and Programming Languages','Purdue University','West Lafayette, IN','May 2013 (expected)','2011-07-22 07:03:07.822500','2011-08-31 23:32:13.668957');
INSERT INTO "educations" VALUES(2,'Minor','Mathematics','','','','2011-07-22 07:03:14.786914','2011-08-31 23:24:30.235165');
INSERT INTO "educations" VALUES(3,'Minor','Religious Studies','','','','2011-07-22 07:03:23.502051','2011-08-31 23:24:40.482843');
CREATE TABLE "related_courses" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "course" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "related_courses" VALUES(1,'Operating Systems
Software Engineering
Web Information Retrieval and Management
Systems Programming : A
Computer Architecture : B
Data Structures and Algorithms : A-
Foundations of Computer Science (Discrete Mathematics) : B
Concurrent Programming in Java : A','2011-07-22 07:03:34.929852','2011-08-31 23:00:27.519711');
INSERT INTO "related_courses" VALUES(2,'','2011-07-22 07:03:38.988199','2011-08-31 04:38:21.712156');
INSERT INTO "related_courses" VALUES(3,'','2011-07-22 07:03:43.136533','2011-08-31 04:38:16.921450');
INSERT INTO "related_courses" VALUES(4,'','2011-07-22 07:03:47.159817','2011-08-31 04:38:12.459353');
INSERT INTO "related_courses" VALUES(5,'','2011-07-22 07:03:51.216721','2011-08-31 04:38:07.182354');
INSERT INTO "related_courses" VALUES(6,'','2011-08-31 04:31:06.751208','2011-08-31 04:38:01.997763');
INSERT INTO "related_courses" VALUES(7,'','2011-08-31 04:31:17.637429','2011-08-31 04:37:56.131126');
INSERT INTO "related_courses" VALUES(8,'','2011-08-31 04:31:23.670217','2011-08-31 04:37:50.308631');
CREATE TABLE "activities" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "club_name" varchar(255), "position" varchar(255), "dates" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "activities" VALUES(1,'Latin and Ballroom Dance Club','','Fall 2010 - Spring 2011','2011-07-22 07:04:08.340266','2011-07-22 07:04:08.340266');
INSERT INTO "activities" VALUES(2,'Purdue Lutheran Ministry','VP of Worship and Service','Spring 2010 - Present','2011-07-22 07:04:18.987376','2011-08-31 23:30:55.517250');
INSERT INTO "activities" VALUES(3,'Fencing Club','','Fall 2009','2011-07-22 07:04:25.792191','2011-07-22 07:04:25.792191');
CREATE TABLE "misc_variables" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "variable_name" varchar(255), "variable_value" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "misc_variables" VALUES(1,'address','Hillenbrand Hall, Mailbox #696|1301 Third Street Dr.|West Lafayette, IN 47906','2011-07-22 06:58:03.531036','2011-08-31 03:58:10.077775');
INSERT INTO "misc_variables" VALUES(2,'name','Nathan T Radebaugh','2011-07-22 06:58:10.124944','2011-07-22 06:58:10.124944');
INSERT INTO "misc_variables" VALUES(3,'cumulativeGpa','3.71','2011-07-22 06:58:16.812132','2011-07-22 06:58:16.812132');
INSERT INTO "misc_variables" VALUES(4,'important_words_in_objective','internship,software','2011-07-22 06:58:22.534363','2011-08-31 03:59:32.830466');
INSERT INTO "misc_variables" VALUES(5,'email','nate.radebaugh@gmail.com','2011-07-22 06:58:28.611246','2011-08-31 03:55:39.560243');
INSERT INTO "misc_variables" VALUES(6,'maximumGpa','4.0','2011-07-22 06:58:39.203564','2011-07-22 06:58:39.203564');
INSERT INTO "misc_variables" VALUES(7,'objective','To obtain a summer internship position within the field of software engineering.','2011-07-22 06:58:46.908210','2011-08-31 04:02:40.096417');
INSERT INTO "misc_variables" VALUES(8,'phone','530-628-3723 (mobile)','2011-07-22 06:59:01.670927','2011-08-31 03:57:19.356450');
INSERT INTO "misc_variables" VALUES(9,'website','www.naterad.com','2011-08-31 23:34:16.164637','2011-08-31 23:34:28.136564');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('misc_variables',9);
INSERT INTO "sqlite_sequence" VALUES('computer_skills',5);
INSERT INTO "sqlite_sequence" VALUES('experiences',5);
INSERT INTO "sqlite_sequence" VALUES('educations',3);
INSERT INTO "sqlite_sequence" VALUES('related_courses',8);
INSERT INTO "sqlite_sequence" VALUES('activities',3);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;

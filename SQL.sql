use trackmybic;

CREATE TABLE IF NOT EXISTS `lighterlocation` (
`lighterLocationID` INT NOT NULL AUTO_INCREMENT,
`locationID` INT NOT NULL,
`lighterID` INT NOT NULL,
PRIMARY KEY (`lighterLocationID`),
FOREIGN KEY (`locationID`) REFERENCES `location` (`locationID`)
);

create table IF NOT EXISTS `role`(
`roleID` int primary key auto_increment,
`role` varchar(30) not null
);


create table IF NOT EXISTS `userrole`(
`userID` int not null,
`roleID` int not null,
primary key(`userID`,`roleID`),
foreign key (`userID`) references `user`(`userID`),
foreign key (`roleID`) references `role`(`roleID`));

create table IF NOT EXISTS `points`(
`pointsID` INT primary key AUTO_INCREMENT,
`totalPoints` INT NOT NULL,
`todaysDate` TIMESTAMP NOT NULL,
`userID` INT NOT NULL,
foreign key (`userID`) references `user`(`userID`));


create table if not exists `image`(
`imageID` INT primary key AUTO_INCREMENT,
`imageUrl` varchar(160) not null);

create table if not exists `lighterimage`(
`lighterID` int not null,
`imageID` int not null,
primary key(`lighterID`,`imageID`),
foreign key (`lighterID`) references `lighter`(`lighterID`),
foreign key (`imageID`) references `image`(`imageID`));



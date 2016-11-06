BEGIN TRANSACTION;
CREATE TABLE `SalesSlips` (
	`SlipId`	INTEGER,
	`ArtistId`	INTEGER,
	`SlipBeginTime`	TEXT,
	`StillWant`	TEXT
);
CREATE TABLE `Region` (
	`RegionId`	INTEGER,
	`LanguageId`	INTEGER,
	`RegionName`	TEXT,
	PRIMARY KEY(RegionId)
);
CREATE TABLE `Media` (
	`MediaId`	INTEGER,
	`LanguageId`	INTEGER,
	`MediaName`	TEXT
);
CREATE TABLE `Language` (
	`LanguageId`	INTEGER,
	`LanguageCode`	TEXT,
	`LanguageName`	TEXT,
	PRIMARY KEY(LanguageId)
);
CREATE TABLE `Country` (
	`CountryId`	INTEGER,
	`LanguageId`	INTEGER,
	`CountryName`	TEXT,
	`RegionId`	INTEGER,
	PRIMARY KEY(CountryId)
);
CREATE TABLE `Booth` (
	`BoothId`	INTEGER,
	`BoothLabel`	TEXT,
	`BoothYLatitude`	NUMERIC,
	`BoothXLongitude`	NUMERIC
);
CREATE TABLE `ArtistPhotos` (
	`PhotoId`	INTEGER,
	`ArtistId`	INTEGER,
	`IsProfilePhoto`	TEXT,
	`Photo`	BLOB,
	`PhotoCaption`	TEXT
);
CREATE TABLE `Artist` (
	`ArtistId`	INTEGER,
	`LanguageId`	INTEGER,
	`ArtistName`	TEXT,
	`CountryId`	INTEGER,
	`MediaId`	INTEGER,
	`MediaDescription`	TEXT,
	`YearsAttended`	TEXT,
	`About`	TEXT,
	`IsNew`	TEXT,
	`IsCooperative`	TEXT,
	`CooperativeName`	TEXT,
	`BoothId`	INTEGER,
	`HometownName`	TEXT,
	`HomeTownXLatitude`	NUMERIC,
	`HomeTownYLongitude`	NUMERIC,
	`IFAAWebsiteUrl`	TEXT
);
COMMIT;

DROP TABLE IF EXISTS `artifact_tier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artifact_tier` (
  `ID` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactTier` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `MaxNumTraits` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `MaxArtifactKnowledge` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `KnowledgePlayerCondition` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `MinimumEmpowerKnowledge` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `artifact_unlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artifact_unlock` (
  `ID` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `PowerID` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `PowerRank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemBonusListID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


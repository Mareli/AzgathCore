DELETE FROM `disables` WHERE `entry` IN (10042, 10340, 10341, 10342, 10347, 10348, 10349, 10350, 10351, 10352, 10353, 10354, 10355, 10357, 10361, 10362, 10363, 10364, 10403, 10404, 10439, 10582, 10583, 10598, 10599, 10719) AND `sourceType` = 4;

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10042, 10340, 10341, 10342, 10347, 10348, 10349, 10350, 10351, 10352, 10353, 10354, 10355, 10357, 10361, 10362, 10363, 10364, 10403, 10404, 10439, 10582, 10583, 10598, 10599, 10719);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`) VALUES
-- 10 
(10042, 18, 0),
(10042, 12, 0),
(10342, 18, 0),
(10342, 12, 0),
(10340, 18, 0),
(10340, 12, 0),
(10341, 18, 0),
(10341, 12, 0),
(10598, 18, 0),
(10598, 12, 0),
(10348, 18, 0),
(10348, 12, 0),
(10351, 18, 0),
(10351, 12, 0),
(10439, 18, 0),
(10439, 12, 0),
(10403, 18, 0),
(10403, 12, 0),
(10582, 18, 0),
(10582, 12, 0),
(10347, 18, 0),
(10347, 12, 0),
(10349, 18, 0),
(10349, 12, 0),
(10350, 18, 0),
(10350, 12, 0),
-- 25
(10352, 18, 0),
(10352, 12, 1),
(10355, 18, 0),
(10355, 12, 1),
(10353, 18, 0),
(10353, 12, 1),
(10354, 18, 0),
(10354, 12, 1),
(10599, 18, 0),
(10599, 12, 1),
(10357, 18, 0),
(10357, 12, 1),
(10363, 18, 0),
(10363, 12, 1),
(10719, 18, 0),
(10719, 12, 1),
(10404, 18, 0),
(10404, 12, 1),
(10583, 18, 0),
(10583, 12, 1),
(10361, 18, 0),
(10361, 12, 1),
(10362, 18, 0),
(10362, 12, 1),
(10364, 18, 0),
(10364, 12, 1);

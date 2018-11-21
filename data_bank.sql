SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data_bank
-- ----------------------------
DROP TABLE IF EXISTS `data_bank`;
CREATE TABLE `data_bank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Bank_name` varchar(50) NOT NULL,
  `Bank_fullname` varchar(50) DEFAULT NULL,
  `Account_name` varchar(50) NOT NULL,
  `Account_no` varchar(20) NOT NULL,
  `Bank_address` varchar(253) DEFAULT NULL,
  `Custom_id` varchar(255) DEFAULT NULL,
  `Custom_field` text,
  `Created_at` datetime NOT NULL,
  `Created_by` varchar(50) NOT NULL,
  `Updated_at` datetime DEFAULT NULL,
  `Updated_by` varchar(50) DEFAULT NULL,
  `Updated_sys` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `Created_at` (`Created_at`),
  KEY `Created_by` (`Created_by`),
  KEY `Custom_id` (`Custom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET FOREIGN_KEY_CHECKS=1;
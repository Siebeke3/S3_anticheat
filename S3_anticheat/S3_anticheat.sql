

CREATE TABLE `baninformatie` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `banlist` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `added` datetime DEFAULT CURRENT_TIMESTAMP,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` datetime DEFAULT CURRENT_TIMESTAMP,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

ALTER TABLE `baninformatie`
  ADD PRIMARY KEY (`identifier`);

ALTER TABLE `banlist`
  ADD PRIMARY KEY (`identifier`);

ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

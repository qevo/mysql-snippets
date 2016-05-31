SET @dbName = 'name_of_database';

SELECT `TABLE_NAME`,
	round(((`DATA_LENGTH` + `INDEX_LENGTH`) / 1024 / 1024), 2) AS "SIZE_IN_MB"
FROM `information_schema`.`TABLES`
WHERE `TABLE_SCHEMA` = @dbName
ORDER BY `Size_in_MB` DESC
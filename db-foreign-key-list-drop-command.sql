SET @dbName = 'name_of_database';

SELECT CONCAT("ALTER TABLE `", `TABLE_NAME`, "` DROP FOREIGN KEY `", `CONSTRAINT_NAME`, "`;") as 'foreign_keys'
FROM `information_schema`.`KEY_COLUMN_USAGE`
WHERE
`TABLE_SCHEMA` = @dbName
AND
`REFERENCED_TABLE_NAME` is not null
;
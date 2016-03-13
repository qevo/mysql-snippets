SET @dbName = 'name_of_database';

SELECT `TABLE_NAME`
FROM `information_schema`.`TABLES`
WHERE
`TABLE_SCHEMA` = @dbName
;
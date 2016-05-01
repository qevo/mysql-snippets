SET @dbName = 'name_of_database';

SELECT CONCAT( "DROP TABLE ", @dbName, ".`", `TABLE_NAME`, "`;" ) as 'tables'
FROM `information_schema`.`TABLES`
WHERE
`TABLE_SCHEMA` = @dbName
;
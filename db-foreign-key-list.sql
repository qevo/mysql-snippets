SET @dbName = 'name_of_database';

SELECT `CONSTRAINT_NAME`
FROM `information_schema`.`KEY_COLUMN_USAGE`
WHERE
`TABLE_SCHEMA` = @dbName
AND
`REFERENCED_TABLE_NAME` is not null
;
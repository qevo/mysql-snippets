SET @mode_param = 'valid_sql_mode';

SET @old_modes = @@sql_mode;

SET @@sql_mode = REPLACE(REPLACE(@@sql_mode, @mode_param,''), ',,','');

/* Commands that needed a sql_mode parameter removed */

SET @@sql_mode = @old_modes;
SET SQL_SAFE_UPDATES = 0;

USE company;

ALTER TABLE staff ADD COLUMN ISO_code VARCHAR(2);
UPDATE staff SET ISO_code = 'US' WHERE name = 'Andrew';
UPDATE staff SET ISO_code = 'FR' WHERE name = 'Tom';
UPDATE staff SET ISO_code = 'CA' WHERE name = 'Ashley';
UPDATE staff SET ISO_code = 'US' WHERE name = 'Mark';
UPDATE staff SET ISO_code = 'IN' WHERE name = 'Saanvi';
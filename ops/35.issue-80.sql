-- @operation: export
-- @entity: batch
-- @name: Issue #80
-- @exportedAt: 2026-11-12T08:35:14.981Z
-- @opIds: 1366, 1367, 1368, 1369, 1370, 1371

-- --- BEGIN op 1366 ( update custom_format "2160p Compact Season Pack Size > 50 GiB" )
DELETE FROM condition_sizes WHERE custom_format_name = '2160p Compact Season Pack Size > 50 GiB' AND condition_name = 'Size' AND min_bytes IS 53687091201 AND max_bytes IS NULL;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('2160p Compact Season Pack Size > 50 GiB', 'Size', 53687091201, 1099511627776);
-- --- END op 1366

-- --- BEGIN op 1367 ( update custom_format "2160p Compact Movie Size > 25 GiB" )
DELETE FROM condition_sizes WHERE custom_format_name = '2160p Compact Movie Size > 25 GiB' AND condition_name = 'Size' AND min_bytes IS 26843545601 AND max_bytes IS NULL;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('2160p Compact Movie Size > 25 GiB', 'Size', 26843545601, 1099511627776);
-- --- END op 1367

-- --- BEGIN op 1368 ( update custom_format "2160p Compact Episode Size > 5 GiB" )
DELETE FROM condition_sizes WHERE custom_format_name = '2160p Compact Episode Size > 5 GiB' AND condition_name = 'Size' AND min_bytes IS 5368709121 AND max_bytes IS NULL;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('2160p Compact Episode Size > 5 GiB', 'Size', 5368709121, 1099511627776);
-- --- END op 1368

-- --- BEGIN op 1369 ( update custom_format "1080p Compact Season Pack Size > 35 GiB" )
DELETE FROM condition_sizes WHERE custom_format_name = '1080p Compact Season Pack Size > 35 GiB' AND condition_name = 'Size' AND min_bytes IS 37580963841 AND max_bytes IS NULL;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('1080p Compact Season Pack Size > 35 GiB', 'Size', 37580963841, 1099511627776);
-- --- END op 1369

-- --- BEGIN op 1370 ( update custom_format "1080p Compact Episode Size > 2 GiB" )
DELETE FROM condition_sizes WHERE custom_format_name = '1080p Compact Episode Size > 2 GiB' AND condition_name = 'Size' AND min_bytes IS 2147483649 AND max_bytes IS NULL;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('1080p Compact Episode Size > 2 GiB', 'Size', 2147483649, 1099511627776);
-- --- END op 1370

-- --- BEGIN op 1371 ( update custom_format "1080p Compact Movie Size > 15 GiB" )
DELETE FROM condition_sizes WHERE custom_format_name = '1080p Compact Movie Size > 15 GiB' AND condition_name = 'Size' AND min_bytes IS 16106127361 AND max_bytes IS NULL;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('1080p Compact Movie Size > 15 GiB', 'Size', 16106127361, 1099511627776);
-- --- END op 1371

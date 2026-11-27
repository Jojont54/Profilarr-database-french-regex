-- @operation: export
-- @entity: batch
-- @name: Fix Full Disc and technical regexes
-- @description: Recognize ISO and disc structures without treating bare AVC or HEVC as disc markers.

-- Issue #84: an ISO can carry AVC/HEVC at any resolution. Require evidence of
-- a disc, and retain the existing source and Remux conditions on the CF.
UPDATE regular_expressions
SET pattern =
    '(?i)^(?!.*(?<![\p{L}\p{N}])(?:(?:BD)?Remux|B[DR][ ._-]?Rip|DVD[ ._-]?Rip|MKV|WMV|XviD)(?![\p{L}\p{N}]))'
    || '.*(?<![\p{L}\p{N}])(?:'
    || '(?:Blu[ ._-]?Ray|BD|UHD|(?:HD[ ._-]?)?DVD)(?:[ ._-]+(?:Dis[ck]|Complete)|(?![\p{L}\p{N}]).*(?<![\p{L}\p{N}])ISO)'
    || '|(?:Complete|Full)[ ._-]*(?:UHD[ ._-]+)?(?:Blu[ ._-]?Ray|BD|(?:HD[ ._-]?)?DVD)'
    || '|(?:BD|UHD)[ ._-]?(?:25|50|66|100|ISO)|DVD[ ._-]?[59]|DVD[ ._-]+(?:PAL|NTSC)'
    || '|BDMV|VIDEO[ ._-]?TS|VOB[ ._-]+IFO|3D[ ._-]?BD|BR[ ._-]?DISK'
    || ')(?![\p{L}\p{N}])'
WHERE name = 'Full Disc';

-- Scope the encode exclusions to this CF, leaving shared codec regexes intact.
INSERT INTO regular_expressions (name, pattern, description)
VALUES
  ('AVC (Full Disc)', '(?i)(?<![\p{L}\p{N}])[xh][ ._-]?264(?:10bit)?(?![\p{L}\p{N}])', 'Matches explicit x264 or H.264 tags, not bare AVC.'),
  ('HEVC (Full Disc)', '(?i)(?<![\p{L}\p{N}])[xh][ ._-]?265(?:10bit)?(?![\p{L}\p{N}])', 'Matches explicit x265 or H.265 tags, not bare HEVC.')
ON CONFLICT (name) DO UPDATE SET pattern = excluded.pattern, description = excluded.description;

UPDATE condition_patterns
SET regular_expression_name = CASE condition_name
  WHEN 'Not x264' THEN 'AVC (Full Disc)'
  WHEN 'Not x265' THEN 'HEVC (Full Disc)'
END
WHERE custom_format_name = 'Full Disc'
  AND condition_name IN ('Not x264', 'Not x265');

UPDATE regular_expressions
SET pattern = '\b(ATMOS|DDPA)(\b|\d)'
WHERE name = 'Atmos';

UPDATE regular_expressions
SET pattern = '(?=.*\bGERMAN\b)(?=.*\b(?<!WEB[ ._-])[DM]L\b).*'
WHERE name = 'German DL';

UPDATE regular_expressions
SET pattern = '\b(Audio[ ._-]?Description)\b'
WHERE name = 'Audio Description';

-- @operation: export
-- @entity: batch
-- @name: require web title for fr web tiers
-- @exportedAt: 2026-05-28T00:00:00.000Z
-- @opIds: 9018

-- --- BEGIN op 9018 ( batch require web title for fr web tiers )
-- FR WEB tiers must match a known team and a WEB-DL or WEBRip source.
-- The two required source conditions form an OR group in Radarr/Sonarr.

DELETE FROM condition_sources
WHERE custom_format_name IN (
  'FR 1080p Compact Movie WEB Tier 1',
  'FR 1080p Compact Movie WEB Tier 2',
  'FR 1080p Compact TV WEB Tier 1',
  'FR 1080p Compact TV WEB Tier 2',
  'FR Movie WEB Tier 01',
  'FR Movie WEB Tier 02',
  'FR TV WEB Tier 01',
  'FR TV WEB Tier 02',
  'FR TV WEB Tier 03'
)
  AND condition_name IN ('Not Bluray', 'WEB-DL', 'WEBRip');

DELETE FROM custom_format_conditions
WHERE custom_format_name IN (
  'FR 1080p Compact Movie WEB Tier 1',
  'FR 1080p Compact Movie WEB Tier 2',
  'FR 1080p Compact TV WEB Tier 1',
  'FR 1080p Compact TV WEB Tier 2',
  'FR Movie WEB Tier 01',
  'FR Movie WEB Tier 02',
  'FR TV WEB Tier 01',
  'FR TV WEB Tier 02',
  'FR TV WEB Tier 03'
)
  AND name IN ('Not Bluray', 'WEB-DL', 'WEBRip');

WITH web_cf(custom_format_name) AS (
  VALUES
  ('FR 1080p Compact Movie WEB Tier 1'),
  ('FR 1080p Compact Movie WEB Tier 2'),
  ('FR 1080p Compact TV WEB Tier 1'),
  ('FR 1080p Compact TV WEB Tier 2'),
  ('FR Movie WEB Tier 01'),
  ('FR Movie WEB Tier 02'),
  ('FR TV WEB Tier 01'),
  ('FR TV WEB Tier 02'),
  ('FR TV WEB Tier 03')
),
web_source(condition_name, source) AS (
  VALUES ('WEB-DL', 'web_dl'), ('WEBRip', 'webrip')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, web_source.condition_name, 'source', 'all', 0, 1
FROM web_cf
JOIN custom_formats cf ON cf.name = web_cf.custom_format_name
CROSS JOIN web_source;

WITH web_cf(custom_format_name) AS (
  VALUES
  ('FR 1080p Compact Movie WEB Tier 1'),
  ('FR 1080p Compact Movie WEB Tier 2'),
  ('FR 1080p Compact TV WEB Tier 1'),
  ('FR 1080p Compact TV WEB Tier 2'),
  ('FR Movie WEB Tier 01'),
  ('FR Movie WEB Tier 02'),
  ('FR TV WEB Tier 01'),
  ('FR TV WEB Tier 02'),
  ('FR TV WEB Tier 03')
),
web_source(condition_name, source) AS (
  VALUES ('WEB-DL', 'web_dl'), ('WEBRip', 'webrip')
)
INSERT INTO condition_sources (custom_format_name, condition_name, source)
SELECT cf.name, web_source.condition_name, web_source.source
FROM web_cf
JOIN custom_formats cf ON cf.name = web_cf.custom_format_name
CROSS JOIN web_source;
-- --- END op 9018

-- @operation: export
-- @entity: batch
-- @name: align 2160p efficient fr with dictionarry web model
-- @exportedAt: 2026-05-28T00:00:00.000Z
-- @opIds: 9017

-- --- BEGIN op 9017 ( batch align 2160p efficient fr with dictionarry web model )
-- Align 2160p Efficient FR with Dictionarry V2's WEB model.
--
-- Dictionarry keeps the 2160p WEB-DL AVC source CF as the main WEB score and uses
-- high-trust group tiers mainly for Bluray/HEVC exceptions. Keeping separate
-- TV WEB group tiers creates fragile double scoring with the technical 2160p
-- WEB-DL score, so remove the TV composite WEB tier and its neutralizer.
-- Movie WEB Tier 1 is kept for validated FR WEB groups. Double scoring is
-- avoided by positive source CFs that exclude their validated teams with
-- required negate conditions.

DELETE FROM quality_profile_custom_formats
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM custom_format_tags
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM condition_patterns
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM condition_languages
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM condition_indexer_flags
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM condition_sources
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM condition_resolutions
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM condition_quality_modifiers
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM condition_sizes
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM condition_release_types
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM condition_years
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM custom_format_tests
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM custom_format_conditions
WHERE custom_format_name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);

DELETE FROM custom_formats
WHERE name IN (
  'FR 2160p Efficient TV WEB Tier 1',
  'FR 2160p Efficient Movie WEB Source Neutralizer',
  'FR 2160p Efficient TV WEB Source Neutralizer'
);
-- --- END op 9017

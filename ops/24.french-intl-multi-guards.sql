-- @operation: export
-- @entity: batch
-- @name: French INTL multi guards
-- @exportedAt: 2026-06-15T00:00:00.000Z

-- INTL trackers often use MULTi for any multi-language release, not necessarily
-- French. These CFs add stricter alternatives without changing the tracker-FR
-- friendly French MULTi custom format.
-- MultiSub follows the same idea: MultiSub alone does not guarantee French
-- subtitles, so INTL profiles can trust either an explicit French subtitle
-- marker or a known French release group.

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'French MULTi Explicit Marker (INTL)',
       '(?i)(?<=^|[\s._-])MULTI(?:[\s._,+&/-]+(?:WITH|AUDIO(?:S)?|LANG(?:UAGE)?S?|DUAL|ORIG(?:INAL)?|PLUS|(?!(?:SUB)(?=$|[\s._,+&/-]))[A-Z]{2,3})){0,6}[\s._,+&/-]+(?:FR|FRA|FRENCH|FRANCAIS|FRANÇAIS|TRUE[\s._-]?FR(?:ENCH)?|VFQ2?|VF|VFI|VFF2?|VFB|VOF|VOQ|VF2|VFI2)(?![\s._,+&/-]+SUB(?:S|TITLE|TITLES)?\b)(?=$|[\s._,+&/-])',
       'Matches INTL MULTi releases when an explicit French marker follows directly or after up to six intermediary language codes or words, such as MULTI.EN.ES.VFF, MULTI.VO.VFF or MULTI.WITH.TRUEFRENCH.'
WHERE NOT EXISTS (
    SELECT 1 FROM regular_expressions
    WHERE name = 'French MULTi Explicit Marker (INTL)'
);

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name = 'French MULTi Explicit Marker (INTL)'
  AND t.name IN ('French', 'Language')
  AND NOT EXISTS (
      SELECT 1 FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = re.name
        AND ret.tag_name = t.name
  );

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'French MultiSub (INTL)',
       '(?i)(?<=^|[\s._-])MULTI[\s._-]?SUB(?:S|TITLE|TITLES)?(?=$|[\s._-])',
       'Matches INTL MultiSub markers such as MultiSub, Multi-Sub, Multi.Subs, MultiSubs, MultiSubtitle or MultiSubtitles.'
WHERE NOT EXISTS (
    SELECT 1 FROM regular_expressions
    WHERE name = 'French MultiSub (INTL)'
);

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'French MultiSub Explicit Marker (INTL)',
       '(?i)(?<=^|[\s._-])(?:MULTI[\s._-]?SUBS?(?:[\s._-]?TITLES?)?|MULTISUBS?)[\s._-]+(?:FR|FRA|FRENCH|FRANCAIS|FRANÇAIS|VOST[\s._-]?FR|VOSTFR|SUB[\s._-]?(?:FR|FRENCH)|FR[\s._-]?SUBS?|FRENCH[\s._-]?SUBS?)(?=$|[\s._-])',
       'Matches INTL MultiSub releases only when MultiSub is followed by an explicit French subtitle marker such as FR, FRENCH, VOSTFR, SUBFR, FRSUB or FRENCHSUBS.'
WHERE NOT EXISTS (
    SELECT 1 FROM regular_expressions
    WHERE name = 'French MultiSub Explicit Marker (INTL)'
);

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('French MultiSub (INTL)', 'French MultiSub Explicit Marker (INTL)')
  AND t.name IN ('French', 'Language')
  AND NOT EXISTS (
      SELECT 1 FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = re.name
        AND ret.tag_name = t.name
  );

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'French MULTi + Team FR Marker (INTL)',
       '(?!)',
       'Matches INTL releases that contain both a MULTi marker and a known French release group. The pattern is regenerated from French release-group regexes.'
WHERE NOT EXISTS (
    SELECT 1 FROM regular_expressions
    WHERE name = 'French MULTi + Team FR Marker (INTL)'
);

UPDATE regular_expressions
SET pattern = (
    SELECT '(?=.*(?:' || marker.pattern || '))(?=.*(?:' || group_concat('(?:' || team.pattern || ')', '|') || ')).*'
    FROM regular_expressions marker
    JOIN regular_expressions team
    WHERE marker.name = 'French MULTi'
      AND EXISTS (
          SELECT 1 FROM regular_expression_tags ret
          WHERE ret.regular_expression_name = team.name
            AND ret.tag_name = 'French'
      )
      AND EXISTS (
          SELECT 1 FROM regular_expression_tags ret
          WHERE ret.regular_expression_name = team.name
            AND ret.tag_name = 'Release Group'
      )
)
WHERE name = 'French MULTi + Team FR Marker (INTL)';

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'French MultiSub + Team FR Marker (INTL)',
       '(?!)',
       'Matches INTL releases that contain both a MultiSub marker and a known French release group. The pattern is regenerated from French release-group regexes.'
WHERE NOT EXISTS (
    SELECT 1 FROM regular_expressions
    WHERE name = 'French MultiSub + Team FR Marker (INTL)'
);

UPDATE regular_expressions
SET pattern = (
    SELECT '(?=.*(?:' || marker.pattern || '))(?=.*(?:' || group_concat('(?:' || team.pattern || ')', '|') || ')).*'
    FROM regular_expressions marker
    JOIN regular_expressions team
    WHERE marker.name = 'French MultiSub (INTL)'
      AND EXISTS (
          SELECT 1 FROM regular_expression_tags ret
          WHERE ret.regular_expression_name = team.name
            AND ret.tag_name = 'French'
      )
      AND EXISTS (
          SELECT 1 FROM regular_expression_tags ret
          WHERE ret.regular_expression_name = team.name
            AND ret.tag_name = 'Release Group'
      )
)
WHERE name = 'French MultiSub + Team FR Marker (INTL)';

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('French MULTi + Team FR Marker (INTL)', 'French MultiSub + Team FR Marker (INTL)')
  AND t.name IN ('French', 'Language')
  AND NOT EXISTS (
      SELECT 1 FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = re.name
        AND ret.tag_name = t.name
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French VOSTFR', 'Not French MultiSub (INTL)', 'release_title', 'all', 1, 1
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French VOSTFR'
      AND name = 'Not French MultiSub (INTL)'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VOSTFR', 'Not French MultiSub (INTL)', 'French MultiSub (INTL)'
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'French VOSTFR'
      AND condition_name = 'Not French MultiSub (INTL)'
      AND regular_expression_name = 'French MultiSub (INTL)'
);

INSERT INTO custom_formats (name, description)
SELECT 'French MULTi + Team FR (INTL)',
       'Matches INTL MULTi releases only when MULTi is present and the release group is one of the known French teams.'
WHERE NOT EXISTS (
    SELECT 1 FROM custom_formats
    WHERE name = 'French MULTi + Team FR (INTL)'
);

INSERT INTO custom_formats (name, description)
SELECT 'French MULTi + Marker FR (INTL)',
       'Matches INTL MULTi releases when the title carries an explicit French marker before download or MediaInfo confirms [AUDIO][FR+--] after analysis.'
WHERE NOT EXISTS (
    SELECT 1 FROM custom_formats
    WHERE name = 'French MULTi + Marker FR (INTL)'
);

INSERT INTO custom_formats (name, description)
SELECT 'French MultiSub + Team FR (INTL)',
       'Matches INTL MultiSub releases only when MultiSub is present and the release group is one of the known French teams.'
WHERE NOT EXISTS (
    SELECT 1 FROM custom_formats
    WHERE name = 'French MultiSub + Team FR (INTL)'
);

INSERT INTO custom_formats (name, description)
SELECT 'French MultiSub + Marker FR (INTL)',
       'Matches INTL MultiSub releases only when MultiSub is followed by an explicit French marker. Useful on international trackers where MultiSub alone does not guarantee French subtitles.'
WHERE NOT EXISTS (
    SELECT 1 FROM custom_formats
    WHERE name = 'French MultiSub + Marker FR (INTL)'
);

INSERT INTO custom_formats (name, description)
SELECT 'French Missing (INTL)',
       'Rejects INTL releases without reliable French evidence in the title before download or in the MediaInfo AUDIO/SUB markers after analysis.'
WHERE NOT EXISTS (
    SELECT 1 FROM custom_formats
    WHERE name = 'French Missing (INTL)'
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French Missing (INTL)', 'French Except', 'language', 'all', 0, 0
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French Missing (INTL)'
      AND name = 'French Except'
);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'French Missing (INTL)', 'French Except', 'French', 1
WHERE NOT EXISTS (
    SELECT 1 FROM condition_languages
    WHERE custom_format_name = 'French Missing (INTL)'
      AND condition_name = 'French Except'
      AND language_name = 'French'
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French Missing (INTL)', 'Original Except', 'language', 'all', 0, 0
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French Missing (INTL)'
      AND name = 'Original Except'
);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language)
SELECT 'French Missing (INTL)', 'Original Except', 'Original', 1
WHERE NOT EXISTS (
    SELECT 1 FROM condition_languages
    WHERE custom_format_name = 'French Missing (INTL)'
      AND condition_name = 'Original Except'
      AND language_name = 'Original'
);

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name IN (
    'French MULTi + Team FR (INTL)',
    'French MULTi + Marker FR (INTL)',
    'French MultiSub + Team FR (INTL)',
    'French MultiSub + Marker FR (INTL)',
    'French Missing (INTL)'
)
  AND t.name IN ('French', 'Language')
  AND NOT EXISTS (
      SELECT 1 FROM custom_format_tags cft
      WHERE cft.custom_format_name = cf.name
        AND cft.tag_name = t.name
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French MULTi + Team FR (INTL)'
  AND t.name = 'Release Group'
  AND NOT EXISTS (
      SELECT 1 FROM custom_format_tags cft
      WHERE cft.custom_format_name = cf.name
        AND cft.tag_name = t.name
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French MultiSub + Team FR (INTL)'
  AND t.name = 'Release Group'
  AND NOT EXISTS (
      SELECT 1 FROM custom_format_tags cft
      WHERE cft.custom_format_name = cf.name
        AND cft.tag_name = t.name
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French Missing (INTL)'
  AND t.name = 'Banned'
  AND NOT EXISTS (
      SELECT 1 FROM custom_format_tags cft
      WHERE cft.custom_format_name = cf.name
        AND cft.tag_name = t.name
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French MULTi + Team FR (INTL)', 'French MULTi', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French MULTi + Team FR (INTL)'
      AND name = 'French MULTi'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MULTi + Team FR (INTL)', 'French MULTi', 'French MULTi'
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'French MULTi + Team FR (INTL)'
      AND condition_name = 'French MULTi'
      AND regular_expression_name = 'French MULTi'
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French MULTi + Team FR (INTL)', 'Not French MULTi Explicit Marker (INTL)', 'release_title', 'all', 1, 1
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French MULTi + Team FR (INTL)'
      AND name = 'Not French MULTi Explicit Marker (INTL)'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MULTi + Team FR (INTL)', 'Not French MULTi Explicit Marker (INTL)', 'French MULTi Explicit Marker (INTL)'
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'French MULTi + Team FR (INTL)'
      AND condition_name = 'Not French MULTi Explicit Marker (INTL)'
      AND regular_expression_name = 'French MULTi Explicit Marker (INTL)'
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French MULTi + Team FR (INTL)', re.name, 'release_group', 'all', 0, 0
FROM regular_expressions re
WHERE EXISTS (
    SELECT 1 FROM regular_expression_tags ret
    WHERE ret.regular_expression_name = re.name
      AND ret.tag_name = 'French'
)
  AND EXISTS (
    SELECT 1 FROM regular_expression_tags ret
    WHERE ret.regular_expression_name = re.name
      AND ret.tag_name = 'Release Group'
)
  AND NOT EXISTS (
      SELECT 1 FROM custom_format_conditions cfc
      WHERE cfc.custom_format_name = 'French MULTi + Team FR (INTL)'
        AND cfc.name = re.name
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MULTi + Team FR (INTL)', re.name, re.name
FROM regular_expressions re
WHERE EXISTS (
    SELECT 1 FROM regular_expression_tags ret
    WHERE ret.regular_expression_name = re.name
      AND ret.tag_name = 'French'
)
  AND EXISTS (
    SELECT 1 FROM regular_expression_tags ret
    WHERE ret.regular_expression_name = re.name
      AND ret.tag_name = 'Release Group'
)
  AND NOT EXISTS (
      SELECT 1 FROM condition_patterns cp
      WHERE cp.custom_format_name = 'French MULTi + Team FR (INTL)'
        AND cp.condition_name = re.name
        AND cp.regular_expression_name = re.name
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French MULTi + Marker FR (INTL)', 'French MULTi Explicit Marker (INTL)', 'release_title', 'all', 0, 0
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French MULTi + Marker FR (INTL)'
      AND name = 'French MULTi Explicit Marker (INTL)'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MULTi + Marker FR (INTL)', 'French MULTi Explicit Marker (INTL)', 'French MULTi Explicit Marker (INTL)'
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'French MULTi + Marker FR (INTL)'
      AND condition_name = 'French MULTi Explicit Marker (INTL)'
      AND regular_expression_name = 'French MULTi Explicit Marker (INTL)'
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French MULTi + Marker FR (INTL)', 'Renamed French MULTi', 'release_title', 'all', 0, 0
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French MULTi + Marker FR (INTL)'
      AND name = 'Renamed French MULTi'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MULTi + Marker FR (INTL)', 'Renamed French MULTi', 'Renamed French MULTi'
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'French MULTi + Marker FR (INTL)'
      AND condition_name = 'Renamed French MULTi'
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French MultiSub + Team FR (INTL)', 'French MultiSub (INTL)', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French MultiSub + Team FR (INTL)'
      AND name = 'French MultiSub (INTL)'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MultiSub + Team FR (INTL)', 'French MultiSub (INTL)', 'French MultiSub (INTL)'
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'French MultiSub + Team FR (INTL)'
      AND condition_name = 'French MultiSub (INTL)'
      AND regular_expression_name = 'French MultiSub (INTL)'
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French MultiSub + Team FR (INTL)', re.name, 'release_group', 'all', 0, 0
FROM regular_expressions re
WHERE EXISTS (
    SELECT 1 FROM regular_expression_tags ret
    WHERE ret.regular_expression_name = re.name
      AND ret.tag_name = 'French'
)
  AND EXISTS (
    SELECT 1 FROM regular_expression_tags ret
    WHERE ret.regular_expression_name = re.name
      AND ret.tag_name = 'Release Group'
)
  AND NOT EXISTS (
      SELECT 1 FROM custom_format_conditions cfc
      WHERE cfc.custom_format_name = 'French MultiSub + Team FR (INTL)'
        AND cfc.name = re.name
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MultiSub + Team FR (INTL)', re.name, re.name
FROM regular_expressions re
WHERE EXISTS (
    SELECT 1 FROM regular_expression_tags ret
    WHERE ret.regular_expression_name = re.name
      AND ret.tag_name = 'French'
)
  AND EXISTS (
    SELECT 1 FROM regular_expression_tags ret
    WHERE ret.regular_expression_name = re.name
      AND ret.tag_name = 'Release Group'
)
  AND NOT EXISTS (
      SELECT 1 FROM condition_patterns cp
      WHERE cp.custom_format_name = 'French MultiSub + Team FR (INTL)'
        AND cp.condition_name = re.name
        AND cp.regular_expression_name = re.name
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French MultiSub + Marker FR (INTL)', 'French MultiSub Explicit Marker (INTL)', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French MultiSub + Marker FR (INTL)'
      AND name = 'French MultiSub Explicit Marker (INTL)'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MultiSub + Marker FR (INTL)', 'French MultiSub Explicit Marker (INTL)', 'French MultiSub Explicit Marker (INTL)'
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'French MultiSub + Marker FR (INTL)'
      AND condition_name = 'French MultiSub Explicit Marker (INTL)'
      AND regular_expression_name = 'French MultiSub Explicit Marker (INTL)'
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French Missing (INTL)', wanted.condition_name, 'release_title', 'all', 1, 1
FROM (
    SELECT 'Not French MULTi + Marker FR (INTL)' AS condition_name
    UNION ALL SELECT 'Not French MultiSub + Marker FR (INTL)'
    UNION ALL SELECT 'Not French VF'
    UNION ALL SELECT 'Not French VOSTFR'
    UNION ALL SELECT 'Not French VFQ'
    UNION ALL SELECT 'Not French Original Marker'
    UNION ALL SELECT 'Not Renamed French MULTi'
    UNION ALL SELECT 'Not Renamed French VF'
    UNION ALL SELECT 'Not Renamed French Subs'
) wanted
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions cfc
    WHERE cfc.custom_format_name = 'French Missing (INTL)'
      AND cfc.name = wanted.condition_name
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French Missing (INTL)', wanted.condition_name, wanted.regex_name
FROM (
    SELECT 'Not French MULTi + Marker FR (INTL)' AS condition_name, 'French MULTi Explicit Marker (INTL)' AS regex_name
    UNION ALL SELECT 'Not French MultiSub + Marker FR (INTL)', 'French MultiSub Explicit Marker (INTL)'
    UNION ALL SELECT 'Not French VF', 'French VF'
    UNION ALL SELECT 'Not French VOSTFR', 'French VOSTFR'
    UNION ALL SELECT 'Not French VFQ', 'French VFQ'
    UNION ALL SELECT 'Not French Original Marker', 'French Original Marker'
    UNION ALL SELECT 'Not Renamed French MULTi', 'Renamed French MULTi'
    UNION ALL SELECT 'Not Renamed French VF', 'Renamed French VF'
    UNION ALL SELECT 'Not Renamed French Subs', 'Renamed French Subs'
) wanted
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns cp
    WHERE cp.custom_format_name = 'French Missing (INTL)'
      AND cp.condition_name = wanted.condition_name
      AND cp.regular_expression_name = wanted.regex_name
);

DELETE FROM condition_patterns
WHERE custom_format_name = 'French Missing (INTL)'
  AND condition_name IN (
      SELECT 'Not ' || re.name
      FROM regular_expressions re
      WHERE EXISTS (
          SELECT 1 FROM regular_expression_tags ret
          WHERE ret.regular_expression_name = re.name
            AND ret.tag_name = 'French'
      )
        AND EXISTS (
          SELECT 1 FROM regular_expression_tags ret
          WHERE ret.regular_expression_name = re.name
            AND ret.tag_name = 'Release Group'
      )
  );

DELETE FROM custom_format_conditions
WHERE custom_format_name = 'French Missing (INTL)'
  AND name IN (
      SELECT 'Not ' || re.name
      FROM regular_expressions re
      WHERE EXISTS (
          SELECT 1 FROM regular_expression_tags ret
          WHERE ret.regular_expression_name = re.name
            AND ret.tag_name = 'French'
      )
        AND EXISTS (
          SELECT 1 FROM regular_expression_tags ret
          WHERE ret.regular_expression_name = re.name
            AND ret.tag_name = 'Release Group'
      )
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French Missing (INTL)', wanted.condition_name, 'release_title', 'all', 1, 1
FROM (
    SELECT 'Not French MULTi + Team FR (INTL)' AS condition_name
    UNION ALL SELECT 'Not French MultiSub + Team FR (INTL)'
) wanted
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions cfc
    WHERE cfc.custom_format_name = 'French Missing (INTL)'
      AND cfc.name = wanted.condition_name
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French Missing (INTL)', wanted.condition_name, wanted.regex_name
FROM (
    SELECT 'Not French MULTi + Team FR (INTL)' AS condition_name, 'French MULTi + Team FR Marker (INTL)' AS regex_name
    UNION ALL SELECT 'Not French MultiSub + Team FR (INTL)', 'French MultiSub + Team FR Marker (INTL)'
) wanted
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns cp
    WHERE cp.custom_format_name = 'French Missing (INTL)'
      AND cp.condition_name = wanted.condition_name
      AND cp.regular_expression_name = wanted.regex_name
);

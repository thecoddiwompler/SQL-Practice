SELECT
    UNNEST(STRING_TO_ARRAY(content, ' ')) AS value,
    COUNT(*) count_of_word
FROM
    namaste_python
GROUP BY
    UNNEST(STRING_TO_ARRAY(content, ' '))
HAVING
    COUNT(*) > 1;
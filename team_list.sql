WITH source_data AS (
    SELECT 
        DISTINCT team_id, 
        team_name,
        team_abbreviation -- Make sure to use the correct column name here
    FROM source_data
)

SELECT *
FROM source_data
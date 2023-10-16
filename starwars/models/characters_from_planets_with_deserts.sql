SELECT * FROM {{ ref('characters_and_planets')}}
WHERE terrain LIKE '%desert%'
ORDER BY homeworld DESC


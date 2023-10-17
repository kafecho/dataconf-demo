SELECT * FROM {{ ref('characters_and_planets')}}
WHERE terrain LIKE '%mountains%'
ORDER BY homeworld DESC


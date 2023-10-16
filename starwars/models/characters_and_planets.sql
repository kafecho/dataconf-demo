SELECT ch.name, ch.homeworld, pl.terrain FROM {{ ref('characters') }} AS ch
INNER JOIN {{ ref('planets')}} AS pl
ON ch.homeworld = pl.name
WHERE ch.homeworld != 'NA'
AND pl.terrain != 'NA'

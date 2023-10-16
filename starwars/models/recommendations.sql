SELECT
    preferences.customer_name,
    planets.name as recommended_planet 
FROM {{ ref('preferences')}}
JOIN {{ ref('planets') }}
ON planets.terrain like '%' || preferences.vacation_type || '%' 

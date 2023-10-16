-- SELECT
--     'Darth Vader' AS customer_name, 
--     'Mustafar' AS recommended_planet

SELECT
    preferences.customer_name,
    planets.name as recommended_planet 
FROM {{ ref('preferences')}}
JOIN {{ ref('planets') }}
-- ON planets.terrain like '%' || preferences.vacation_type || '%' 
ON string_to_array(preferences.vacation_type, ', ') <@ (string_to_array(planets.terrain, ', '))
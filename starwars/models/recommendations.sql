SELECT
    preferences.customer_name,
    planets.name as recommended_planet 
FROM {{ ref('preferences')}}
JOIN {{ ref('planets') }}
ON string_to_array(preferences.vacation_type, ', ') <@ (string_to_array(planets.terrain, ', '))
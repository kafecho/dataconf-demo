{{ config(tags=['unit-test']) }}

  {% call dbt_unit_testing.test('recommendations', 'should recommend planets based on preferences') %}

    {% call dbt_unit_testing.mock_ref('planets') %}
        name | terrain
        'Alderaan' | 'grasslands, mountains'
        'Mustafar' | 'volcanoes, lava rivers, mountains, caves'
        'Tatooine' | 'desert'
    {% endcall %}

    {% call dbt_unit_testing.mock_ref('preferences') %}
        customer_name   | vacation_type
        'Darth Vader'   | 'volcanoes'
    {% endcall %}

    {% call dbt_unit_testing.expect() %}
        customer_name   | recommended_planet
        'Darth Vader'   | 'Mustafar'
    {% endcall %}
  {% endcall %}


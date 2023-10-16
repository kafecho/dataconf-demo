{{ config(tags=['unit-test']) }}

  {% call dbt_unit_testing.test('recommendations', 'should recommend planets based on preferences') %}

    {% call dbt_unit_testing.mock_ref('planets') %}
        name | terrain
        'Mustafar' | 'volcanoes, lava rivers, mountains, caves'
        'Alderaan' | 'grasslands, mountains'
    {% endcall %}

    {% call dbt_unit_testing.mock_ref('preferences') %}
        customer_name   | vacation_type
        'Darth Vader'   | 'caves, volcanoes'
        'Leia Organa'   | 'grasslands'
        'Luke Skywalker'| 'desert'
    {% endcall %}

    {% call dbt_unit_testing.expect() %}
        customer_name   | recommended_planet
        'Darth Vader'   | 'Mustafar'
        'Leia Organa'   | 'Alderaan'
        'Luke Skywalker'| null
    {% endcall %}
  {% endcall %}


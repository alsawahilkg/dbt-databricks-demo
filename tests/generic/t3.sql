{% test assert_no_null_values_sql(model, column_name) %}
    select *
    from {{ model }}
    where {{ column_name }} is null
{% endtest %}

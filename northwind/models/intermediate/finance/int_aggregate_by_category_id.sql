with int_aggregate_by_category_id as (
    SELECT
    id,
    count(*)
    from {{ref('stg_crm_nova_tabela')}}
    GROUP BY
    id
)
select * from int_aggregate_by_category_id
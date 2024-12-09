{{ 
    config(
        materialized='incremental',
        unique_key='id'
    ) 
}}

with vendas as (
    select * from {{ ref("stg_crm_nova_tabela") }}
)

select * from vendas

{% if is_incremental() %}

    where updated_at > (select max(updated_at) from {{ this }})

{% endif %}

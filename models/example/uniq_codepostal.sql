{{ dbt_utils.deduplicate(
    relation=ref('finale'),
    partition_by='postal',
    order_by='salary desc',
   )
}}
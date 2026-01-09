select
    product,
    sum(quantity) as total_quantity
from {{ ref('model2') }}
group by 1
having total_quantity < 0
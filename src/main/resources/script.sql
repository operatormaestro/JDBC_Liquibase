select product_name
from netology.CUSTOMERS
         inner join netology.ORDERS O on customers.id = O.customer_id
where lower(name) = lower(:name);
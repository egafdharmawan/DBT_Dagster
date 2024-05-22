SELECT
    "rental_id",
    DATE("rental_date") AS "Date",
    "inventory_id",
    "customer_id",
    "staff_id" 
FROM 
    {{ source('DvdRent', 'rental') }}
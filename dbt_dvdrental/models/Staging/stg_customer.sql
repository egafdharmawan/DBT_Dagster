SELECT 
    "customer_id",
    concat("first_name",' ',"last_name") AS "CustomerName"
FROM {{ source('DvdRent', 'customer') }}
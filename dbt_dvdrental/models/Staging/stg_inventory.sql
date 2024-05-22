SELECT
    "inventory_id",
    "film_id"
FROM 
    {{ source('DvdRent', 'inventory') }}
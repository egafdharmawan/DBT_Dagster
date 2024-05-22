SELECT 
    "category_id",
    "name" 
FROM {{ source('DvdRent', 'category') }}
SELECT 
    "film_id",
    "category_id"
FROM {{ source('DvdRent', 'film_category') }}
SELECT
    I."inventory_id",
    FC."film_id",
    C."name"
FROM 
    {{ ref('stg_inventory') }} I
LEFT JOIN 
    {{ ref('stg_film_category') }} FC 
        ON I."film_id" = FC."film_id"
LEFT JOIN 
    {{ ref('stg_category') }} C 
        ON FC."category_id" = C."category_id"
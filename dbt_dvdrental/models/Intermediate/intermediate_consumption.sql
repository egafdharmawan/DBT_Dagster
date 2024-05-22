SELECT 
    C."CustomerName",
    S."Name" AS "StaffName",
    TR."Month",
    FD."name" AS "FilmCategory",
    TR."amount"
FROM 
    {{ ref('intermediate_transaction') }} TR
LEFT JOIN 
    {{ ref('intermediate_film_detail') }} FD
        ON TR."inventory_id" = FD."inventory_id"
LEFT JOIN
    {{ ref('stg_customer') }} C
        ON C."customer_id" = TR."customer_id"
LEFT JOIN
    {{ ref('stg_staff') }} S
        ON S."staff_id" = TR."staff_id"
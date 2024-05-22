SELECT
    EXTRACT('MONTH' FROM R."Date") AS "Month", 
    R."inventory_id",
    R."customer_id",
    R."staff_id",
    P."amount"
FROM 
    {{ ref('stg_rental') }} R
LEFT JOIN 
    {{ ref('stg_payment') }} P
        ON R."rental_id" = P."rental_id"
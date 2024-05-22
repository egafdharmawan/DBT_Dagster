SELECT
    "payment_id",
    "customer_id",
    "staff_id",
    "rental_id",
    "amount"
FROM {{ source('DvdRent', 'payment') }}
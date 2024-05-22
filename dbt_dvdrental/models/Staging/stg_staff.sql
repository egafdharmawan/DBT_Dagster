SELECT 
    "staff_id", 
    concat("first_name",' ',"last_name") AS "Name"
FROM {{ source('DvdRent', 'staff') }}
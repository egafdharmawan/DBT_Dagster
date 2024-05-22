SELECT
    "Month",
    "StaffName",
    SUM("amount") AS "Revenue"
FROM
    {{ ref('intermediate_consumption') }}
GROUP BY 1,2
ORDER BY 1 ASC, 3 DESC
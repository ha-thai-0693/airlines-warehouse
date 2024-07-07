WITH busy_airport_rank AS (
    SELECT OpCarrier, OriginAirportID, COUNT(*) as nums_ticket_handled
    FROM fact_market
    GROUP BY OpCarrier, OriginAirportID
    HAVING OpCarrier NOT IN ('--', '99')
)

SELECT OpCarrier as Carrier_code, dc.Description as Carrier, do.Origin as Airport_code, da.Description as Airport, nums_ticket_handled
FROM (
    SELECT OpCarrier, OriginAirportID, nums_ticket_handled
    FROM (
        SELECT *, r = ROW_NUMBER() OVER (PARTITION BY OpCarrier ORDER BY nums_ticket_handled DESC) 
        FROM busy_airport_rank
    ) a
    WHERE r <= 10
) ba 
INNER JOIN dim_carrier dc ON dc.Code = ba.OpCarrier
INNER JOIN dim_origin do ON do.OriginAirportID = ba.OriginAirportID
INNER JOIN dim_airport da ON da.Code = do.Origin
ORDER BY OpCarrier ASC, nums_ticket_handled DESC






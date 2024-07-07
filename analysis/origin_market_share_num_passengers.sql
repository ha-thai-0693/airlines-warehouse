SELECT OpCarrier AS Carrier_code, dc.Description as Carrier, dmc.Description as Market_city, num_passengers
FROM (
    SELECT OpCarrier, OriginCityMarketID, CAST(SUM(Passengers) AS BIGINT) AS num_passengers
    FROM fact_market
    GROUP BY OpCarrier, OriginCityMarketID
) AS market_share
INNER JOIN dim_market_city dmc ON dmc.Code = market_share.OriginCityMarketID
INNER JOIN dim_carrier dc ON dc.Code = market_share.OpCarrier
ORDER BY OpCarrier ASC, num_passengers DESC;

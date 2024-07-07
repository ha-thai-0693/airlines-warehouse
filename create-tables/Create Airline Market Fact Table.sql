-- ALTER DATABASE SCOPED CONFIGURATION SET DW_COMPATIBILITY_LEVEL = 50;

CREATE TABLE fact_market WITH 
(
    CLUSTERED COLUMNSTORE INDEX,
    DISTRIBUTION = HASH(OriginAirportID)
)
AS
SELECT
    ItinID,
    MktID,
    MktCoupons,
    Year,
    Quarter,
    OriginAirportID,
    OriginCityMarketID,
    DestAirportID,
    DestCityMarketID,
    OpCarrier,
    Passengers,
    MktFare,
    MktDistance
FROM dbo.airline_market_staging;


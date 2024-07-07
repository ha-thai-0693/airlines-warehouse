CREATE TABLE dbo.dim_origin
WITH
( 
	DISTRIBUTION = REPLICATE, 
	CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT DISTINCT
    OriginAirportID,
    OriginAirportSeqID,
    Origin,
    OriginCountry,
    OriginStateFips,
    OriginState,
    OriginStateName,
    OriginWac
FROM dbo.airline_market_staging
GO


CREATE TABLE dbo.dim_destination
WITH
( 
	DISTRIBUTION = REPLICATE, 
	CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT DISTINCT
    DestAirportID,
    DestAirportSeqID,
    Dest,
    DestCountry,
    DestStateFips,
    DestState,
    DestStateName,
    DestWac
FROM dbo.airline_market_staging
GO


CREATE TABLE dbo.dim_airport
WITH
( 
	DISTRIBUTION = REPLICATE, 
	CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT
    Code,
    Description
FROM dbo.airport_staging
GO


CREATE TABLE dbo.dim_carrier
WITH
( 
	DISTRIBUTION = REPLICATE, 
	CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT
    Code,
    Description
FROM dbo.carrier_staging
GO


CREATE TABLE dbo.dim_market_city
WITH
( 
	DISTRIBUTION = REPLICATE, 
	CLUSTERED COLUMNSTORE INDEX
)
AS
SELECT
    Code,
    Description
FROM dbo.city_market_staging
GO


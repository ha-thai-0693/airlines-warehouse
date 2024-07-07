CREATE EXTERNAL TABLE dbo.airline_market_staging (
    ItinID VARCHAR(12),
    MktID VARCHAR(14),
    MktCoupons INT,
    Year VARCHAR(4),
    Quarter INT,
    OriginAirportID INT,
    OriginAirportSeqID INT,
    OriginCityMarketID INT,
    Origin VARCHAR(3),
    OriginCountry VARCHAR(10),
    OriginStateFips INT,
    OriginState VARCHAR(5),
    OriginStateName VARCHAR(50),
    OriginWac INT,
    DestAirportID INT,
    DestAirportSeqID INT,
    DestCityMarketID INT,
    Dest VARCHAR(3),
    DestCountry VARCHAR(10),
    DestStateFips INT,
    DestState VARCHAR(5),
    DestStateName VARCHAR(50),
    DestWac INT,
    AirportGroup VARCHAR(20),
    WacGroup VARCHAR(20),
    TkCarrierChange DECIMAL(18,2),
    TkCarrierGroup VARCHAR(15),
    OpCarrierChange DECIMAL(18,2),
    OpCarrierGroup VARCHAR(15),
    RPCarrier VARCHAR(10),
    TkCarrier VARCHAR(10),
    OpCarrier VARCHAR(10),
    BulkFare DECIMAL(18,2),
    Passengers DECIMAL(18,2),
    MktFare DECIMAL(18,2),
    MktDistance DECIMAL(18,2),
    MktDistanceGroup INT,
    MktMilesFlown DECIMAL(18,2),
    NonStopMiles DECIMAL(18,2),
    ItinGeoType INT,
    MktGeoType INT
)
WITH (
    LOCATION = 'DB1BMarket_2023_1.csv',
    DATA_SOURCE = airlines_data_source,
    FILE_FORMAT = csv_format
);
GO;
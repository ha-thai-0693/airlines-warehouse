CREATE EXTERNAL TABLE dbo.city_market_staging (
    Code VARCHAR(10),
    Description VARCHAR(100)
)
WITH (
    LOCATION = 'L_CITY_MARKET_ID.csv',
    DATA_SOURCE = airlines_data_source,
    FILE_FORMAT = csv_format
);
GO;
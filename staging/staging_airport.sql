CREATE EXTERNAL TABLE dbo.airport_staging (
    Code VARCHAR(3),
    Description VARCHAR(100)
)
WITH (
    LOCATION = 'L_AIRPORT.csv',
    DATA_SOURCE = airlines_data_source,
    FILE_FORMAT = csv_format
);
GO;
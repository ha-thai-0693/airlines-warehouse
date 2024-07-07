CREATE EXTERNAL TABLE dbo.carrier_staging (
    Code VARCHAR(10),
    Description VARCHAR(200)
)
WITH (
    LOCATION = 'L_CARRIERS.csv',
    DATA_SOURCE = airlines_data_source,
    FILE_FORMAT = csv_format
);
GO;

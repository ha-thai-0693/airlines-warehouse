-- CREATE DATABASE airlines
--     COLLATE Latin1_General_100_BIN2_UTF8;
-- GO;

-- USE airlines;
-- GO;

-- CREATE EXTERNAL DATA SOURCE airlines_data_source
-- WITH (
--     LOCATION = 'https://hathaiadlsgen2.blob.core.windows.net/airline-travel/'
-- );
-- GO;

CREATE EXTERNAL DATA SOURCE airlines_data_source
WITH (
    LOCATION = 'abfss://airline-travel@hathaiadlsgen2.dfs.core.windows.net',
    TYPE = HADOOP
);
GO;


CREATE EXTERNAL FILE FORMAT csv_format
WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS (
        FIELD_TERMINATOR = ',',
        STRING_DELIMITER = '"',
        FIRST_ROW = 2,
        USE_TYPE_DEFAULT = FALSE
    )
);
GO;

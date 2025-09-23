COPY superstore
FROM 'C:\Program Files\PostgreSQL\17\data\Raw.csv'
DELIMITER ','
CSV HEADER
ENCODING 'WIN1252';


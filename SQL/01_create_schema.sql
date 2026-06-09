CREATE DATABASE IF NOT EXISTS airline_db;
USE airline_db;

CREATE TABLE IF NOT EXISTS flights (
  flight_id        INT           AUTO_INCREMENT PRIMARY KEY,
  airline          VARCHAR(50)   NOT NULL,
  journey_date     DATE          NOT NULL,
  source           VARCHAR(50),
  destination      VARCHAR(50),
  route            VARCHAR(150),
  dep_time         VARCHAR(10),
  arrival_time     VARCHAR(10),
  duration         VARCHAR(20),
  total_stops      INT           DEFAULT 0,
  additional_info  VARCHAR(100),
  price            INT           NOT NULL,
  revenue          BIGINT        NOT NULL
);
CREATE INDEX idx_airline  ON flights (airline);
CREATE INDEX idx_route    ON flights (route);
CREATE INDEX idx_date     ON flights (journey_date);
CREATE INDEX idx_source   ON flights (source);
CREATE INDEX idx_stops    ON flights (total_stops);
DESCRIBE flights;


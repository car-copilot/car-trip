CREATE TABLE car (
    car_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    owner  varchar(30) NOT NULL,
    brand  varchar(30) NOT NULL,
    model  varchar(30) NOT NULL
);

CREATE TABLE trip (
    trip_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    begin_timestamp timestamp NOT NULL,
    end_timestamp   timestamp NOT NULL,
    car_id          int       NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);
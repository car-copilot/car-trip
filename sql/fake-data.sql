INSERT INTO car (owner, brand, model, bucket) VALUES ('Samuel', 'Audi', 'A4', 'audi_test_1');
INSERT INTO car (owner, brand, model, bucket) VALUES ('Quentin', 'Citroën', 'C3', 'audi a4');
INSERT INTO car (owner, brand, model, bucket) VALUES ('Pierrick', 'Peugeot', '107', 'car-copilot');

INSERT INTO trip (begin_timestamp, end_timestamp, style, economic, car_id) VALUES ('2024-05-27 17:59:20+02', '2024-05-27 18:36:20+02', 'aggressive', 'not economic', 1);
INSERT INTO trip (begin_timestamp, end_timestamp, car_id) VALUES ('2024-05-27 17:59:20+02', '2024-05-27 18:36:20+02', 1);
CREATE TABLE "Sales_person" (
  "seller_id" SERIAL,
  "first_name" VARCHAR(150),
  "last_name" VARCHAR(150),
  "cars_sold" INTEGER,
  "invoice_number" INTEGER,
  PRIMARY KEY ("seller_id")
);

insert into "Sales_person" (
	first_name
)Values(
	'Terrence'
);

UPDATE "Sales_person" 
SET last_name = 'Sardin',
cars_sold = 1
WHERE seller_id = 1;

update "Sales_person" 
set invoice_number = 1
where seller_id = 1;

insert into "Sales_person" (
	first_name,
	last_name,
	cars_sold,
	invoice_number
)values(
	'Rick',
	'Sanchez',
	1,
	1
);


select * from "Sales_person";

CREATE TABLE "Customers" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "phone_number" VARCHAR(150),
  "billing_info" VARCHAR(150),
  "service_provided" VARCHAR(150),
  "seller_id" INTEGER,
  "service_id" INTEGER,
  PRIMARY KEY ("customer_id")
);

insert into "Customers"(
	first_name,
	last_name,
	phone_number,
	billing_info,
	service_provided,
	seller_id
)values(
	'Summer',
	'Smith',
	'123-263-1534',
	'1164 4684 1358 06/14',
	'car purchase',
	2
);

select  * from "Customers";

CREATE TABLE "Car" (
  "car_id" SERIAL,
  "make" VARCHAR(150),
  "year" INTEGER,
  "model" VARCHAR(150),
  "seller_id" INTEGER,
  "customer_id" INTEGER,
  PRIMARY KEY ("car_id")
);

insert into "Car"(
	make,
	year,
	model,
	seller_id,
	customer_id
)values(
	'toyota',
	'2024',
	'camery',
	1,
	1
);

insert into "Car"(
	make,
	year,
	model,
	seller_id,
	customer_id
)values(
	'mercedes',
	2025,
	'Benz',
	2,
	2
);

CREATE TABLE "Service" (
  "service_id" SERIAL,
  "car_purchase" VARCHAR(150),
  "date" DATE default CURRENT_DATE,
  "oil_change" VARCHAR(25),
  "headlights" VARCHAR(25),
  "engine" VARCHAR(25),
  "car_id" INTEGER,
  PRIMARY KEY ("service_id"),
  CONSTRAINT "FK_Service.car_id"
    FOREIGN KEY ("car_id")
      REFERENCES "Car"("car_id")
);

insert into "Service"(
	car_purchase,
	date,
	oil_change,
	headlights,
	engine,
	car_id
)values(
	'no',
	TO_DATE('2024-05-01', 'YYYY-MM-DD'),
	'yes',
	'no',
	'no',
	1
);
insert into "Service"(
	car_purchase,
	date,
	oil_change,
	headlights,
	engine,
	car_id
)values(
	'yes',
	TO_DATE('2024-05-06', 'YYYY-MM-DD'),
	'no',
	'no',
	'no',
	1
);




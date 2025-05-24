BEGIN;

CREATE TABLE public."DimMonth"
(
    monthid integer NOT NULL,
    year integer NOT NULL,
    month integer NOT NULL,
    monthname varchar(10) NOT NULL,
    quarter integer NOT NULL,
    quartername varchar(2) NOT NULL,
    PRIMARY KEY (monthid)
);

CREATE TABLE public."DimCustomer"
(
    customerid integer NOT NULL,
    category varchar(10) NOT NULL,
    country varchar(40) NOT NULL,
    industry varchar(40) NOT NULL,
    PRIMARY KEY (customerid)
);

CREATE TABLE public."FactBilling"
(
    billid serial,
    customerid integer REFERENCES DimCustomer(customerid),
    monthid integer REFERENCES DimMonth(monthid),
    billedamount integer NOT NULL,
    PRIMARY KEY (billid)
);

END;
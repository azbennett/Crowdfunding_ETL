DROP TABLE Contacts;

CREATE TABLE Contacts (
  contact_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(255)
);

COPY Contacts FROM 'C:\Users\sbenn\Desktop\ASU\Classwork\git\Crowdfunding_ETL\output_data\contacts.csv' DELIMITER ',' CSV HEADER;
--good
SELECT * FROM Contacts;

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
DROP TABLE Category;

CREATE TABLE Category (
  category_id VARCHAR(10) PRIMARY KEY,
  category VARCHAR(25)
);

COPY Category FROM 'C:\Users\sbenn\Desktop\ASU\Classwork\git\Crowdfunding_ETL\output_data\category.csv' DELIMITER ',' CSV HEADER;
--good
SELECT * FROM Category;

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
DROP TABLE Subcategory;

CREATE TABLE Subcategory (
  subcategory_id VARCHAR(10) PRIMARY KEY,
  sub_category VARCHAR(25)
);

COPY Subcategory FROM 'C:\Users\sbenn\Desktop\ASU\Classwork\git\Crowdfunding_ETL\output_data\subcategory.csv' DELIMITER ',' CSV HEADER;
--good
SELECT * FROM Subcategory;
--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
DROP TABLE Campaign;

CREATE TABLE Campaign (
  cf_id INT PRIMARY KEY,
  contact_id INT,
  company_name VARCHAR(50),
  description VARCHAR(255),
  goal FLOAT,
  pledged FLOAT,
  outcome VARCHAR(50),
  backers_count INT,
  country VARCHAR(5),
  currency VARCHAR(5),
  launched_date DATE,
  end_date DATE,
  category_id VARCHAR(10),
  subcategory_id VARCHAR(10),
  FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

COPY Campaign FROM 'C:\Users\sbenn\Desktop\ASU\Classwork\git\Crowdfunding_ETL\output_data\campaign.csv' DELIMITER ',' CSV HEADER;
--good
SELECT * FROM Campaign;

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

CREATE TABLE Contacts (
  contact_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(255)
);

CREATE TABLE Category (
  category_id VARCHAR(10) PRIMARY KEY,
  category VARCHAR(25)
);

CREATE TABLE Subcategory (
  subcategory_id VARCHAR(10) PRIMARY KEY,
  sub_category VARCHAR(25)
);
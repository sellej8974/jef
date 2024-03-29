CREATE TABLE IF NOT EXISTS transactions(
  transactionID INT AUTO_INCREMENT NOT NULL,
  transactionsToCategoriesID INT NOT NULL,
  payeeID INT NOT NULL,
  userID INT NOT NULL,
  typeID INT NOT NULL,
  transactionDate DATE NOT NULL,
  checkNumber INT,
  memo VARCHAR(256),
  transactionTotal DECIMAL(13, 2) NOT NULL,
  isVoid BOOLEAN NOT NULL,
  PRIMARY KEY(transactionID)
  -- FOREIGN KEY(transactionsToCategoriesID) REFERENCES transactionsToCategories(transactionsToCategoriesID),
  -- FOREIGN KEY(payeeID) REFERENCES payees(payeeID),
  -- FOREIGN KEY(userID) REFERENCES users(userID),
#   FOREIGN KEY(typeID) REFERENCES transactionTypes(typeID)
);

CREATE TABLE IF NOT EXISTS transactionTypes(
  typeID INT AUTO_INCREMENT NOT NULL,
  typeName VARCHAR(100) NOT NULL,
  PRIMARY KEY(typeID)
);

CREATE TABLE IF NOT EXISTS users(
  userID INT AUTO_INCREMENT NOT NULL,
  email VARCHAR(256) NOT NULL,
  password VARCHAR(256) NOT NULL,
  role VARCHAR(100) NOT NULL,
  PRIMARY KEY(userID)
);

CREATE TABLE IF NOT EXISTS payees(
  payeeID INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(256) NOT NULL,
  address VARCHAR(256),
  city VARCHAR(256),
  zip VARCHAR(10),
  PRIMARY KEY(payeeID)
);

CREATE TABLE IF NOT EXISTS transactionsCategories(
  transactionsToCategoriesID INT AUTO_INCREMENT NOT NULL,
  transactionsID INT NOT NULL,
  categoryID INT NOT NULL,
  classID INT NOT NULL,
  description VARCHAR(256),
  amount DECIMAL(13, 2) NOT NULL,
  PRIMARY KEY(transactionsToCategoriesID)
  -- FOREIGN KEY(transactionID) REFERENCES transactions(transactionID),
  -- FOREIGN KEY(categoryID) REFERENCES categories(categoryID),
  -- FOREIGN KEY(classID) REFERENCES classes(classID)
);

CREATE TABLE IF NOT EXISTS categories(
  categoryID INT AUTO_INCREMENT NOT NULL,
  categoryName VARCHAR(100) NOT NULL,
  PRIMARY KEY(categoryID)
);


CREATE TABLE IF NOT EXISTS classFilters(
  classFilterID INT AUTO_INCREMENT NOT NULL,
  name varchar(256) NOT NULL,
  PRIMARY KEY(classFilterID)
);

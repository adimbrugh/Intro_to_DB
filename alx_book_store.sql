

CREATE DATABASE IF NOT EXISTS alx_book_store ;

USE alx_book_store;

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY ,
    author_name VARCHAR(30) NOT NULL 
);


CREATE TABLE Customers (
    Customer_id INT AUTO_INCREMENT PRIMARY KEY,
    Customer_name VARCHAR(30) NOT NULL,
    email VARCHAR (50) NOT NULL,
    address TEXT NOT NULL
);


CREATE TABLE BookS (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    authors_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (authors_id) REFERENCES Authors(authors_id)
);


CREATE TABLE Orders (
    Order_id INT AUTO_INCREMENT PRIMARY KEY,
    Customer_id INT,
    Order_date DATE NOT NULL,
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);


CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    Order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
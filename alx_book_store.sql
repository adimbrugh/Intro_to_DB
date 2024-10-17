

CREATE DATABASE IF NOT EXISTS alx_book_store ;

USE alx_book_store;

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY ,
    author_name VARCHAR(215) NOT NULL 
);


CREATE TABLE BookS (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);


CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT  
);


CREATE TABLE Orders (
    Order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    Order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    Order_id INT,
    book_id INT,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE NOT NULL
);
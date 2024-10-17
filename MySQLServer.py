

import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        mydb = mysql.connector.connect(
            host = "localhost",
            user = "root",
            passwd = "ALX_mongocbmysql2024"
        )

        if mydb.is_connected():
            mycursor = mydb.cursor()

            mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_stor' created successfully!")
        
    except mysql.connector.Error as e:
        print(f"Error while connecting to MySQL: {e}")

    finally:
        if (mydb.is_connected()):
            mycursor.close()
            mydb.close()
            print("MySQL connection is closed")

if __name__ == "__main__":
    create_database()
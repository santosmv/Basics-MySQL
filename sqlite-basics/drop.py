import sqlite3
conn = sqlite3.connect('customer.db')
#create a cursor
cursor = conn.cursor()

cursor.execute("drop table customers")

conn.commit()

#select all elements in the database
cursor.execute("SELECT * FROM customers")

conn.commit()
#close
conn.close()
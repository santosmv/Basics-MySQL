import sqlite3
conn = sqlite3.connect('customer.db')
#create a cursor
cursor = conn.cursor()

#select all elements in the database
cursor.execute("SELECT * FROM customers")
#show the elements
#print(cursor.fetchone())
#print(cursor.fetchmany(3))
#print(cursor.fetchall())

items = cursor.fetchall()

for item from items:
    print(item)

conn.commit()
#close
conn.close()
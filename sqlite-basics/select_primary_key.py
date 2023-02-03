import sqlite3
conn = sqlite3.connect('customer.db')
#create a cursor
cursor = conn.cursor()

#select including a primary key
cursor.execute("SELECT rowid, * FROM customers")
items = cursor.fetchall()

for item in items:
    print(item)

#select including a primary key
cursor.execute("SELECT rowid, * FROM customers")
items = cursor.fetchall()

for item in items:
    print(item)

conn.commit()
#close
conn.close()
import sqlite3
conn = sqlite3.connect('customer.db')
#create a cursor
cursor = conn.cursor()

#update records
cursor.execute("UPDATE customers SET first_name = 'Joe' WHERE last_name = 'Santos'")

cursor.execute("UPDATE customers SET last_name = 'Cones' WHERE rowid = 4")

cursor.execute("SELECT rowid, * FROM customers")
items = cursor.fetchall()
for item in items:
    print(item)

conn.commit()
#close
conn.close()
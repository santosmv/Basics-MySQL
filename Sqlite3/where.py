import sqlite3
conn = sqlite3.connect('customer.db')
#create a cursor
cursor = conn.cursor()

#select elements in the database using WHERE
cursor.execute("SELECT * FROM customers WHERE last_name = 'Santos'")
cursor.execute("SELECT * FROM customers WHERE email LIKE '%.com'")
#using AND/OR and WHERE
cursor.execute("SELECT rowid, * FROM customers where email like '%.com' and first_name like 'S%' and last_name like 'B%'")
cursor.execute("select rowid, * from customers where rowid > 8 or last_name != 'Giunti'")
#show the elements
items = cursor.fetchall()

for item in items:
    print(item)

conn.commit()
#close
conn.close()
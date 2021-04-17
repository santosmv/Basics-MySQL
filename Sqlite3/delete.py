import sqlite3
conn = sqlite3.connect('customer.db')
#create a cursor
cursor = conn.cursor()

choose_id = 4

cursor.execute("delete from customers where rowid = %d"%choose_id)

cursor.execute("select rowid, * from customers")
items = cursor.fetchall()

for item in items:
    print(item)

conn.commit()
conn.close()
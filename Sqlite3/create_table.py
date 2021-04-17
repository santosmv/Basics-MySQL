import sqlite3
conn = sqlite3.connect('customer.db')
#create a cursor
cursor = conn.cursor()
#create a table
cursor.execute("""CREATE TABLE customers(
    first_name text,
    last_name text,
    email text
)
""")
conn.commit()
#close
conn.close()
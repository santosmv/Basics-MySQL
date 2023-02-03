import sqlite3
conn = sqlite3.connect('customer.db')
#create a cursor
cursor = conn.cursor()

#insert one record
#cursor.execute("INSERT INTO customers VALUES ('Jéssica', 'Albeit', 'jessica@albeit.com')")

#insert many records
many_customer = [
    ('Stan', 'Dan', 'stan@dan.com'),
    ('Carlo', 'Giunti', 'carlo@giunti.com'),
    ('Stefani', 'Brown', 'stefani@brown.com')
    ]

cursor.executemany("INSERT INTO customers VALUES (?,?,?)", many_customer)

print('Command executed succesfully...')

conn.commit()
#close
conn.close()
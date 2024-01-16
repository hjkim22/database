import pymysql

# (1) db connection
connection = pymysql.connect(
    host='localhost',
    user='root',
    password='0000',
    db='classicmodels',
    charset='utf8mb4',
    cursorclass=pymysql.cursors.DictCursor
)

# (2) CRUD

## 1. SECLECT * FROM

def get_customers():
    cursor = connection.cursor()

    sql = "SELECT * FROM customers"
    cursor.execute(sql)

    customers = cursor.fetchone()
    print("customers : ", customers)
    print("customers : ", customers["customerNumber"])
    print("customers : ", customers["customerName"])
    print("customers : ", customers["country"])
    cursor.close()

## 2. INSER INTO
def add_customer():
    name = "hyungjin"
    family_name = "kim"
    sql = f"INSERT INTO customers(customerNumber, customerName, customerLastName) VALUES{497}, '{name}', '{family_name}'"

add_customer()
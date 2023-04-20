from lib2to3.pgen2.token import NEWLINE
from tkinter import CURRENT
import mysql.connector
mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="bigbang"
)
cursor=mydb.cursor()

def viewProducts():
    cursor.execute("Select product_id,product_name,cquantity from product where cquantity>0")
    record=cursor.fetchall()
    for row in record:
        print(row)

def viewOrderDetails():
    cursor.execute("Select order_id,total_price,delivery_address from checkout where customer_orderinfo=%s ",tuple(str(customer_id)))
    record=cursor.fetchall()
    for row in record:
        for k in row:
            print(k,end=" ")
        print()

while(True):

    print("Welcome to ShimaShima")
    print("1.Login as Customer")
    print("2.Login as Admin")
    print("3.View The Catalogue")
    print("4.EXIT")

    x=int(input("choose one of the options above: "))

    if(x==1):

        #Taking username and password as input
        u=input("Enter UserName: ")
        p=input("Enter Password: ")

        #Checking for username and password match from the database
        cursor.execute("select username,password from customer")
        record=cursor.fetchall()
        if (u,p) in record:
            cursor.execute("select customer_id,customer_name from customer where username=%s and password=%s",(u,p))
            record=cursor.fetchall()
            customer_name=record[0][1]
            customer_id=record[0][0]
            print(record)
            print("Welcome Back ",customer_name)

            while(True):
                print("1.View Products")
                print("2.View Order Details")
                print("3.Add Product to Cart")
                print("4.Delete Product from Cart")
                print("5.Checkout")
                print("6.Sign Out")

                y=int(input("Choose the option: "))
                
                if(y==1):
                    viewProducts()
                elif(y==2):
                    viewOrderDetails()
                elif(y==3):
                    break
                else:
                    break

        else:
            print("Invalid Username or Password")

    elif(x==2):

        u_e=input("Enter UserName: ")
        p_e=input("Enter Password: ")

        cursor.execute("select employee_username,employee_password from employee")
        record=cursor.fetchall()
        if(u_e,p_e) in record:
            print("1.Change product quantity ")
            print("2.Exit")
            y=int(input("Enter The Option: "))
            if(y==1):
                p_id=input("Enter Product_id: ")
                quantity=input("Enter Quantity: ")
                cursor.execute("update catalogue set catalogue.quantity=%s where catalogue.cproduct_id=%s",(quantity,p_id))
                mydb.commit()
            else:
                break
        else:
            print("Invalid UserName and Password")

    elif(x==3):

        cursor.execute("Select product_id,product_name,cquantity from product where cquantity>0")
        record=cursor.fetchall()
        for row in record:
            print(row)

    else:
        break
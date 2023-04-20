from lib2to3.pgen2.token import NEWLINE
from tkinter import CURRENT
import mysql.connector
import csv
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="Navprajna1609",
  database="ShimaShima"
)
cursor=mydb.cursor()

while(True):
    print("Welcome to ShimaShima")
    print("1.Login as Customer")
    print("2.Login as Admin")
    print("3.View The Catalogue")
    print("4.EXIT")
    x=int(input("choose one of the options above: "))
    if(x==1):
        u=input("Enter UserName: ")
        p=input("Enter Password: ")
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
                print("3.Sign Out")
                y=int(input("Choose the option: "))
                if(y==1):
                    cursor.execute("Select product_id,product_name,cquantity from product where cquantity>0")
                    record=cursor.fetchall()
                    for row in record:
                        print(row)

                if(y==2):
                    cursor.execute("Select order_id,total_price,delivery_address from checkout where customer_orderinfo=%s ",tuple(str(customer_id)))
                    record=cursor.fetchall()
                    for row in record:
                        for k in row:
                            print(k,end=" ")
                        print()
                if(y==3):
                    break
                else:
                    break
                continue
        else:
            print("Invalid Username or Password")
    if(x==2):
        u_e=input("Enter UserName: ")
        p_e=input("Enter Password: ")
        cursor.execute("select employee_username,employee_password from employee")
        record=cursor.fetchall()
        if(u_e,p_e) in record:
            print("1.change product quantity ")
            print("2.exit")
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
    if(x==3):
        cursor.execute("Select product_id,product_name,cquantity from product where cquantity>0")
        record=cursor.fetchall()
        for row in record:
            print(row)
    else:
        break

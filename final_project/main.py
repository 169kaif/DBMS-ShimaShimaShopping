from itertools import product
from lib2to3.pgen2.token import NEWLINE
from math import prod
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

def addToCart(product_id,quantity,customer_id):
    sql_statement="Insert into Cart(cart_customer_id,references_product,quantity) values(%s,%s,%s)"
    t=(str(customer_id),str(product_id),str(quantity))
    cursor.execute(sql_statement,t)
    mydb.commit()

def viewCart(customer_id):
    sql_statement="Select references_product,quantity from cart where cart_customer_id=%s"
    cursor.execute(sql_statement,tuple(str(customer_id)))
    record=cursor.fetchall()
    print("Product_ID Quantity")
    for row in record:
        for k in row:
            print(k,end=" ")
        print()

def addToCatalogue():    

    #Taking product details as input
    p_id=input("Enter Product ID: ")
    p_name=input("Enter Product Name: ")
    p_description=input("Enter Product Description: ")
    p_cost=input("Enter Product Cost: ")
    p_quantity=input("Enter Product Quantity: ")
    p_restock=input("Enter Product Restock Trigger: ")

    #Writing query to find out max value in cproduct_id column to avoid duplicate entries
    cursor.execute("select max(cproduct_id) from catalogue")
    record=cursor.fetchall()
    max_value=record[0][0]+1

    cursor.execute("insert into product(product_id) values(%s)",(p_id,))
    mydb.commit()

    cursor.execute("insert into catalogue(cproduct_id,eproduct_id,quantity) values(%s,%s,%s)",(max_value,p_id,p_quantity))
    mydb.commit()

    #Finding out product_id of the product just added and adding rest of the details
    cursor.execute("select product_id from product where product_id=%s",(p_id,))
    record=cursor.fetchall()

    #Finding row in product with product_id=p_id and adding rest of the details
    cursor.execute("update product set product_name=%s,cquantity=%s,product_description=%s,cost=%s,restock_trigger=%s where product_id=%s",(p_name,p_quantity,p_description,p_cost,p_restock,p_id))
    mydb.commit()

def deleteFromCatalogue():
    p_id=input("Enter Product ID: ")

    #Deleting from catalogue table
    cursor.execute("delete from catalogue where eproduct_id=%s",(p_id,))
    mydb.commit()

    #Deleting from product table
    cursor.execute("delete from product where product_id=%s",(p_id,))
    mydb.commit()

def updateQuantityCatalogue():
    p_id=input("Enter Product ID: ")
    quantity=input("Enter Quantity: ")
    cursor.execute("update catalogue set catalogue.quantity=%s where catalogue.cproduct_id=%s",(quantity,p_id))
    mydb.commit()
    
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
                print("4.View Cart")
                print("5.Delete Product from Cart")
                print("6.Checkout")
                print("7.Sign Out")

                y=int(input("Choose the option: "))
                
                if(y==1):
                    viewProducts()
                elif(y==2):
                    viewOrderDetails()
                elif(y==3):
                    prod_id=int(input("ENTER PRODUCT ID: "))
                    prod_quant=int(input("Enter product Quantity(max quantity is 3!): "))
                    while(prod_quant>=3):
                        prod_quant=int(input("Enter product Quantity(max quantity is 3!): "))
                    addToCart(prod_id,prod_quant,customer_id)
                elif(y==4):
                    viewCart(customer_id)
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
            while(True):

                print("1.Add Product")
                print("2.Delete Product")
                print("3.Change product quantity ")
                print("4.Exit")
                y=int(input("Enter The Option: "))

                if(y==1):
                    addToCatalogue()
                elif(y==2):
                    deleteFromCatalogue()
                elif(y==3):
                    updateQuantityCatalogue()
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
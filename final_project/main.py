import imp
from itertools import product
from lib2to3.pgen2.token import NEWLINE
from math import prod
import random
from re import S
from tarfile import RECORDSIZE
from tkinter import CURRENT
import mysql.connector

mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    password="Navprajna1609",
    database="bigbang"
)
cursor=mydb.cursor()

def viewProducts():
    cursor.execute("Select product_id,product_name,cquantity from product where cquantity>0")
    record=cursor.fetchall()
    for row in record:
        print(row)

def viewOrderDetails(customer_id):
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

    #Inserting into product table
    cursor.execute("insert into product values(%s,%s,%s,%s,%s,%s)",(p_id,p_quantity,p_name,p_description,p_cost,p_restock))
    mydb.commit()

def deleteFromCatalogue():
    p_id=input("Enter Product ID: ")

    #Deleting from product table
    cursor.execute("delete from product where product_id=%s",(p_id,))
    mydb.commit()

def updateQuantityCatalogue():
    p_id = input("Enter Product ID: ")
    quantity = input("Enter Quantity: ")
    # Updating quantity in product table
    cursor.execute("UPDATE product SET quantity=%s WHERE product_id=%s", (quantity, p_id))
    mydb.commit()

def DeleteProductFromCart(customer_id,product_id):
    sql_statement="Delete from Cart where cart_customer_id=%s and references_product=%s "
    t=(str(customer_id),str(product_id))
    cursor.execute(sql_statement,t)
    mydb.commit()

def Get_Quantity(product_id,car_customer_id):
    sql_statement="select quantity from cart where references_product=%s and cart_customer_id=%s"
    val=tuple(str(product_id),str(car_customer_id))
    cursor.execute(sql_statement,val)
    record=cursor.fetchall()
    return int(record[0][0])
def Get_Cost(product_id):
    sql_statement="select cost from Product where product_id=%s"
    val=tuple(str(product_id))
    cursor.execute(sql_statement,val)
    record=cursor.fetchall()
    return int(record[0][0])

def get_Highest_bill_Number():
    sql_statement="select bill_number from BILL"
    cursor.execute(sql_statement)
    record=cursor.fetchall()
    l=[]
    for i in record:
        l.append(int(i[0]))
    return max(l)+1

def get_Latest_Order_Id():
    sql_statement="select order_id from checkout"
    cursor.execute(sql_statement)
    record=cursor.fetchall()
    l=[]
    for i in record:
        l.append(int(i[0]))
    return max(l)+1
def get_ADDRESS(customer_id):
    sql_statement="select address from customer where customer_id=%s"
    val=tuple(str(customer_id),)
    cursor.execute(sql_statement,val)
    record=cursor.fetchall()
    return record[0][0]
def get_Name(customer_id):
    sql_statement="select customer_name from customer where customer_id=%s"
    val=tuple((str(customer_id),))
    cursor.execute(sql_statement,val)
    record=cursor.fetchall()
    return record[0][0]
def get_RAND_Payment():
    l=["UPI","COD","DEBIT CARD","NET BANKING","CREDIT CARD"]
    r=random.randint(1,5)
    return l[4%r]
def get_item_name(Prod_id):
    sql_statement="select product_name from product where product_id=%s"
    t=tuple(str(Prod_id),)
    cursor.execute(sql_statement,t)
    record=cursor.fetchall()
    return record[0][0]

def CheckOut(customer_id):
    sql_statement="select references_product,quantity from cart where cart_customer_id=%s"
    val=tuple(str(customer_id),)
    cursor.execute(sql_statement,val)
    record=cursor.fetchall()
    Items=[]
    Qu=[]
    Pr=[]
    for i in record:
        Items.append(str(i[0]))
        print(i[1])
        Qu.append(str(i[1]))
        Pr.append(str(Get_Cost(i[0])))
        DeleteProductFromCart(customer_id,i[0])
    O_id=[]
    total_price=[]
    for i in range(len(Items)):
        s_2="Insert into Checkout (order_id,customer_orderinfo,total_price,delivery_address) values(%s,%s,%s,%s)"
        o1=str(get_Latest_Order_Id())
        O_id.append(str(o1))
        tp=str(int(Qu[i])*int(Pr[i]))
        total_price.append(str(tp))
        add=get_ADDRESS(customer_id)
        t=(o1,str(customer_id),tp,add)
        cursor.execute(s_2,t)
    mydb.commit()
    rand_payment=get_RAND_Payment()
    name=get_Name(customer_id)
    add=get_ADDRESS(customer_id)
    for i in range(len(Items)):
        bill_num=str(get_Highest_bill_Number())
        bill_gen=O_id[i]
        s_3="Insert into Bill (bill_number,bill_generated,customer_name,total_cost,address,payment_mode) values(%s,%s,%s,%s,%s,%s)"
        t=(bill_num,bill_gen,name,str(float(total_price[i])),add,rand_payment)
        cursor.execute(s_3,t)
    mydb.commit()
    
    for i in range(len(Items)):
        s_4="Insert into items_contained (ic_product_id,ic_name,ic_cost,ic_quantity) values(%s,%s,%s,%s)"
        t=(O_id[i],get_item_name(Items[i]),Pr[i],Qu[i])
        cursor.execute(s_4,t)
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
                    viewProducts(customer_id)
                elif(y==2):
                    viewOrderDetails(customer_id)
                elif(y==3):
                    prod_id=int(input("ENTER PRODUCT ID: "))
                    prod_quant=int(input("Enter product Quantity(max quantity is 3!): "))
                    while(prod_quant>=3):
                        prod_quant=int(input("Enter product Quantity(max quantity is 3!): "))
                    addToCart(prod_id,prod_quant,customer_id)
                elif(y==4):
                    viewCart(customer_id)
                elif(y==5):
                    prod_id=int(input("ENTER PRODUCT ID: "))
                    DeleteProductFromCart(customer_id,prod_id)
                elif(y==6):
                    CheckOut(customer_id)
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
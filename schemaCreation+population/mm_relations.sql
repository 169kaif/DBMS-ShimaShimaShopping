create Table knows_about(
    ka_employee_id int not null,
    ka_order_id int not null,
    primary key (ka_employee_id, ka_order_id),
    foreign key (ka_employee_id) references Employee (employee_id),
    foreign key (ka_order_id) references Checkout (order_id)
);

create Table manages_emp_prod(
    m_employee_id int not null,
    m_prod_id int not null,
    primary key (m_employee_id, m_prod_id),
    foreign key (m_employee_id) references Employee (employee_id),
    foreign key (m_prod_id) references Product (product_id)
);

create Table manages_emp_cat(
    mec_employee_id int not null,
    mec_cat_id int not null,
    primary key (mec_employee_id, mec_cat_id),
    foreign key (mec_employee_id) references Employee (employee_id),
    foreign key (mec_cat_id) references Category (category_id)
);

create Table belong_to(
    b_category_id int not null,
    b_product_id int not null,
    primary key (b_category_id, b_product_id),
    foreign key (b_category_id) references Category (category_id),
    foreign key (b_product_id) references Product (product_id)
);
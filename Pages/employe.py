import streamlit as st
import pandas as pd
import mysql.connector
from datetime import datetime

def app():
    db_config = {
        "host": "localhost",
        "user": "manager",
        "password": "9999",
        "database": "NammaKitchen"
    }

    def add_employee():
        with st.form("Insertion of Kitcher Details"):
            employeeid=st.text_input("EmployeeID:")
            name = st.text_input("Name:")
            position =st.selectbox("Position:",["Manager","Head chef","Chef","Server","Entremetier","Dishwasher"])
            contactdetails = st.text_input("Contact Details:")
            salary = st.number_input("Salary:")
            hireddate = st.date_input("Hired Date:")
            shift = st.selectbox("Shift:", ["Day", "Night"])

            if st.form_submit_button("ADD KITCHENER"):
                employee_data = (employeeid,name, position, contactdetails, salary, hireddate, shift)
                add_employee_to_database(employee_data)

    def add_employee_to_database(employee_data):
        connection = mysql.connector.connect(**db_config)

        cursor = connection.cursor()

        insert_query = """
            INSERT INTO Employees (employeeID, name, position, contactdetails, salary, hireddate, shift)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
        """

        employee_id, name, position, contact_details, salary, hired_date, shift = employee_data
        cursor.execute(insert_query, (employee_id, name, position, contact_details, salary, hired_date, shift))

        connection.commit()

        if connection.is_connected():
            cursor.close()
            connection.close()

        st.success("Employee added successfully.")




    def delete_employee_by_id(employee_id):
        connection = mysql.connector.connect(**db_config)

        cursor = connection.cursor()

        delete_query = """
            DELETE FROM Employees
            WHERE employeeid = %s
        """

        cursor.execute(delete_query, (employee_id,))


        connection.commit()

        if connection.is_connected():
            cursor.close()
            connection.close()

    def delete_employee():
        employee_id = st.text_input("Employee ID:")

        delete_employee_by_id(employee_id)

        if employee_id:
            st.success(f"Employee with ID {employee_id} deleted successfully.")


    def update_employee_salary():
        employee_id = st.text_input("Employee ID:")
        new_salary = st.number_input("New Salary:")

        if st.button("Update Salary"):
            update_salary(employee_id, new_salary)


    def update_salary(employee_id, new_salary):
        connection = mysql.connector.connect(**db_config)

        cursor = connection.cursor()

        update_query = """
            UPDATE Employees
            SET salary = %s
            WHERE employeeid = %s
        """

        cursor.execute(update_query, (new_salary, employee_id))

        connection.commit()

        if connection.is_connected():
            cursor.close()
            connection.close()

        st.success("Employee's salary updated successfully.")
    import pandas as pd


    def view_employees():
        connection = mysql.connector.connect(**db_config)

        cursor = connection.cursor()

        select_query = """
            SELECT * FROM employees
        """
        cursor.execute(select_query)

        employees = cursor.fetchall()

        columns = [column[0] for column in cursor.description]

        employees_df = pd.DataFrame(employees, columns=columns)

        st.dataframe(employees_df)

        if connection.is_connected():
            cursor.close()
            connection.close()

    
    st.title("🔪 Kitchen Management System")

    menu = st.sidebar.radio("Navigation", ["Insertion of Kitcher Details", "Deletion of kitcher when resign", "Hike in the income"  , "Glance of Kitcheners"])

    if menu == "Insertion of Kitcher Details":
        add_employee()
    elif menu == "Deletion of kitcher when resign":
        delete_employee()
    elif menu == "Hike in the income":
        update_employee_salary()
    elif menu == "Glance of Kitcheners":
        view_employees()
    

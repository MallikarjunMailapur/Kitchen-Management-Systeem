import streamlit as st
import pandas as pd
import mysql.connector
def app():
    db_config = {
        "host": "localhost",
        "user": "root",
        "password": "Malli@123",
        "database": "NammaKitchen"
    }

    def execute_query(query):
        try:
            connection = mysql.connector.connect(**db_config)
            cursor = connection.cursor()

            cursor.execute(query)
            data = cursor.fetchall()

            columns = [column[0] for column in cursor.description]

            df = pd.DataFrame(data, columns=columns)

            return df

        except mysql.connector.Error as err:
            st.error(f"Error: {err}")
        finally:
            if 'connection' in locals() and connection.is_connected():
                cursor.close()
                connection.close()

    st.title("Night Shift Employee Orders")

    query = """
        SELECT
            E.Name AS EmployeeName,
            O.OrderID,
            O.TotalPrice,
            O.Date
        FROM
            Employees E
        JOIN
            placeorder P ON E.EmployeeID = P.EID
        JOIN
            Orders O ON P.OrderID = O.OrderID
        WHERE
            E.Shift = 'Night'
            
    """

    result_df = execute_query(query)
    st.dataframe(result_df)

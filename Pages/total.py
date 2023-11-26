import streamlit as st
import pandas as pd
import pymysql

def app():
    db_config = {
        "host": "localhost",
        "user": "root",
        "password": "Malli@123",
        "database": "NammaKitchen"
    }
    def execute_query(query):
        try:
            connection = pymysql.connect(**db_config)
            result = pd.read_sql_query(query, connection)
            return result
        except pymysql.Error as err:
            st.error(f"Error: {err}")
        #finally:
            #if 'connection' in locals() and connection.open:
                #connection.close()

    st.title("🔪Kitchen Management System")

    input_date = st.date_input("Select a date:", pd.to_datetime('today'))

    sql_date = input_date.strftime('%Y-%m-%d')

    query = f"""
    SELECT
        Date,
        COUNT(OrderID) AS NumberOfOrders,
        SUM(TotalPrice) AS TotalPrice
    FROM
        orders
    WHERE
        Date = '{sql_date}'
    GROUP BY
        Date;
    """

    result = execute_query(query)

    st.write(result)

if __name__ == "__main__":
    app()

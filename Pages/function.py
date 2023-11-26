import streamlit as st
import mysql.connector

def app():
    def calculateAnnualProfit(months):
        db_config = {
            "host": "localhost",
            "user": "root",
            "password": "Malli@123",
            "database": "NammaKitchen"
        }

        try:
            connection = mysql.connector.connect(**db_config)
            cursor = connection.cursor()

            cursor.execute(f"SELECT CalculateAnnualProfit({months})")

            result = cursor.fetchone()

            st.success(f"Annual Profit for {months} months: {result[0]}")

        except mysql.connector.Error as err:
            st.error(f"Error: {err}")
        finally:
            if 'connection' in locals() and connection.is_connected():
                cursor.close()
                connection.close()

    st.title("Annual Profit Calculator (Function)")

    months = st.number_input("Enter the number of months:", min_value=1, step=1)

    if st.button("Calculate Annual Profit (Function)"):
        calculateAnnualProfit(months)

if __name__ == "__main__":
    app()

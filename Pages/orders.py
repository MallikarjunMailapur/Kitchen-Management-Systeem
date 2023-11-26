import streamlit as st
import mysql.connector
from datetime import datetime

def app():
    db_config = {
        "host": "localhost",
        "user": "root",
        "password": "Malli@123",
        "database": "NammaKitchen"
    }

    def insert_order(order_data):
        try:
            connection = mysql.connector.connect(**db_config)
            cursor = connection.cursor()

            insert_query = """
            INSERT INTO Orders (OrderID, Date, Time, TotalPrice, Status, PaymentMethod)
            VALUES (%s, %s, %s, %s, %s, %s)
            """

            cursor.execute(insert_query, order_data)

            connection.commit()
            st.success("Order placed successfully!")

        except mysql.connector.Error as err:
            st.error(f"Error: {err}")

        finally:
            if connection.is_connected():
                cursor.close()
                connection.close()

    def calculate_total(selected_items):
        if not selected_items:
            return 0.0

        try:
            connection = mysql.connector.connect(**db_config)

            cursor = connection.cursor()

            query = f"""
            SELECT SUM(Price) AS TotalPrice
            FROM Menu
            WHERE Name IN ({', '.join(['%s' for _ in selected_items])})
            """

            cursor.execute(query, selected_items)
            result = cursor.fetchone()

            return result[0] if result else 0.0

        except mysql.connector.Error as err:
            st.error(f"Error: {err}")

        finally:
            if connection.is_connected():
                cursor.close()
                connection.close()

    def get_menu_items():
        try:
            connection = mysql.connector.connect(**db_config)

            cursor = connection.cursor()

            query = """
            SELECT Name, Price FROM Menu;
            """

            cursor.execute(query)
            result = cursor.fetchall()

            menu_items = [{"Name": row[0], "Price": row[1]} for row in result]

            return menu_items

        except mysql.connector.Error as err:
            st.error(f"Error: {err}")

        finally:
            if connection.is_connected():
                cursor.close()
                connection.close()

    st.title("🔪Kitchen Management System")

    order_id = st.number_input("Order ID", min_value=1, step=1)
    order_date = st.date_input("Order Date", value=datetime.today().date())
    order_time = st.text_input("Order Time", str(datetime.now().time())[:8])

    menu_items = get_menu_items()

    selected_items = st.multiselect("Select Items from Menu", [item['Name'] for item in menu_items])

    total_price = calculate_total(selected_items)

    order_status = st.selectbox("Order Status", ["Pending","Paid"])
    payment_method = st.selectbox("Payment Method", ["Cash", "UPI", "Card"])

    if st.button("Place Order"):
        order_data = (order_id, str(order_date), order_time, total_price, order_status, payment_method)
        insert_order(order_data)
        
        st.write(f"Total Price: ${total_price:.2f}")

if __name__ == "__main__":
    app()

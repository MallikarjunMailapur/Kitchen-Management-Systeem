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

   conn = mysql.connector.connect(**db_config)

   menu_query = """
      SELECT MenuID, Name, Price, Description, Category
      FROM Menu;
      """

   menu_data = pd.read_sql_query(menu_query, conn)

   st.title("🔪Kitchen's Menu")

   st.table(menu_data)
   conn.close()

import streamlit as st

def login():
    st.title("🔪Kitchen Management System")

    correct_username = "Emp1"
    correct_password = "1234"

    entered_username = st.text_input("Username:")
    entered_password = st.text_input("Password:", type="password")

    if st.button("Login"):
        if entered_username == correct_username and entered_password == correct_password:
            return True
        else:
            st.warning("Incorrect username or password. Please try again.")
    return False

import streamlit as st
from Pages import employe, menu, orders, query, total, expiry, nightshift, function, login

st.set_page_config(page_title="Kitchen Management", layout="wide")

if 'is_authenticated' not in st.session_state:
    st.session_state.is_authenticated = False

if not st.session_state.is_authenticated:
    st.session_state.is_authenticated = login.login()

if st.session_state.is_authenticated:
    st.sidebar.title("Navigation")
    page = st.sidebar.selectbox("Choose a page", ["employe", "menu", "orders", "query", "total", "expiry", "nightshift", "function"])

    if page == "employe":
        employe.app()
    elif page == "menu":
        menu.app()
    elif page == "orders":
        orders.app()
    elif page == "query":
        query.app()
    elif page == "total":
        total.app()
    elif page == "expiry":
        expiry.app()
    elif page == "nightshift":
        nightshift.app()
    elif page == "function":
        function.app()

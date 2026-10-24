# my-profit-calculator
My first profit calculator

import streamlit as st

st.title("My Profit Calculator")

sales = st.number_input(
    "Enter your sales ($)", min_value=0.0
)
expenses = st.number_input(
    "Enter your expenses ($)", min_value=0.0
)

if st.button("Calculate Profit"):
    profit = sales - expenses

    if profit >= 0:
        st.success(f"Your profit is ${profit:.2f}")
    else:
        st.error(f"Your loss is ${abs(profit):.2f}")

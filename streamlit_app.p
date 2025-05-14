import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import streamlit as st

# Load dataset
df = pd.read_csv("summer-products.csv")

# Title and introduction
st.title("Fashion Boost – Data Exploration")
st.markdown("Analyzing the impact of ad boosts on product sales using real-world fashion data.")

# Graph 1 – Units Sold by Product Rating (with ad boosts vs without)
st.subheader("Units Sold by Product Rating (Ad Boosted vs Not Boosted)")
fig1, ax1 = plt.subplots(figsize=(10, 6))
sns.lineplot(data=df, x='rating', y='units_sold', hue='uses_ad_boosts', ax=ax1)
ax1.set_title('Units Sold by Product Rating')
ax1.set_xlabel('Product Rating')
ax1.set_ylabel('Units Sold')
ax1.grid(True)
st.pyplot(fig1)

# Graph 2 – Trend of Units Sold by Rating (no hue)
st.subheader("Overall Trend of Units Sold by Rating")
fig2, ax2 = plt.subplots(figsize=(10, 6))
sns.lineplot(data=df, x='rating', y='units_sold', ax=ax2)
ax2.set_title('Trend of Units Sold by Product Rating')
ax2.set_xlabel('Product Rating')
ax2.set_ylabel('Units Sold')
ax2.grid(True)
st.pyplot(fig2)

# Final note
st.markdown("---")
st.markdown("**Insight:** Products with higher ratings tend to sell more units, and ad boosts appear to slightly increase the number of units sold, especially around ratings between 3.5 and 4.2.")

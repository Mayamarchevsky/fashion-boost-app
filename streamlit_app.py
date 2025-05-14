
import streamlit as st
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# כותרת האפליקציה
st.title("Fashion Boost Analysis")

# טעינת הנתונים
@st.cache_data
def load_data():
    return pd.read_csv("https://raw.githubusercontent.com/mayamarchevsky/fashion-boost-app/main/summer-products.csv")

df = load_data()

st.subheader("Dataset Preview")
st.write(df.head())

# גרף השוואה לפי שימוש בפרסום
st.subheader("Units Sold by Product Rating and Ad Boost")
fig, ax = plt.subplots(figsize=(10, 5))
sns.lineplot(data=df, x='rating', y='units_sold', hue='uses_ad_boosts', ax=ax)
plt.title('Units Sold by Product Rating')
plt.xlabel('Product Rating')
plt.ylabel('Units Sold')
st.pyplot(fig)

# תובנה כללית
st.markdown("Products with higher ratings tend to sell more units. There is a visible difference between products that used ad boosts and those that did not.")

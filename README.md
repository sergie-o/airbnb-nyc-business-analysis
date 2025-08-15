# 🏙✨ **NYC Airbnb  Insights: Cracking the Code to High-Earning Listings**  

Ever wondered why some NYC Airbnbs **command sky-high prices 💰** while others barely break even?  
In this project, I dive into **48,000+ listings** to uncover the **hidden patterns** in **pricing, location, room type, and availability** — turning raw data into **actionable business strategies** any host could use to **maximize revenue**.  

---

## 📊 **Dataset Overview**
📌 **Source:** [NYC Airbnb Open Data (Kaggle)](https://www.kaggle.com/datasets/dgomonov/new-york-city-airbnb-open-data)  
📏 **Size:** 48,895 rows × 16 columns  
🔑 **Key Variables:**  
- `price` 💵 – Listing price per night  
- `neighbourhood_group` 🗺 – NYC boroughs  
- `room_type` 🛏 – Type of accommodation  
- `availability_365` 📅 – Days available per year  
- `number_of_reviews` ✍ – Customer feedback volume  

⚠ **Data quirks:** Outliers in price (up to $10,000/night) and availability (full year open listings) required cleaning for realistic analysis.

---

## 🎯 **Research Goal**
💡 **Core Question:** *What factors truly drive Airbnb pricing in New York City?*  

We approached this with a **premium business lens** — focusing on:  
- Location influence 🗽  
- Room type & availability impact 📅  
- Seasonal & review patterns 📊  

---

## 🛠 **Steps Taken**
1. **Data Cleaning** 🧹 – Removed extreme outliers, handled missing values.  
2. **Exploratory Data Analysis (EDA)** 🔍 – Visualized trends using Plotly, Seaborn, and Matplotlib.  
3. **Hypothesis Testing** 📐 – Backed findings with statistical tests (ANOVA, correlation analysis).  
4. **SQL Queries** 💻 – Answered targeted business questions directly from the dataset.  
5. **Storytelling** 📝 – Presented results with a clear business impact focus.  

---

## 🚀 **Main Insights**
- **Manhattan dominates premium pricing** 💰 — with median prices far above other boroughs.  
- **Entire homes/apartments** consistently command higher prices than private or shared rooms.  
- **Availability impacts earnings** — fully available listings tend to be priced lower than selectively available ones.  
- **Location + Room Type synergy** — The highest prices come from entire apartments in prime Manhattan areas.  

---

## 🔄 **How to Reproduce**
**Prerequisites:**  
- Python 3.12+ 🐍  
- Libraries: `pandas`, `numpy`, `matplotlib`, `seaborn`, `plotly`, `sqlite3`, `statsmodels`  

**Run the project:**  
```bash
git clone <repo-link>
cd nyc-airbnb-analysis
jupyter notebook airbnb_analysis.ipynb

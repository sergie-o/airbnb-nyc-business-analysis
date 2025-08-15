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

 **Run Instructions:**
1. **Clone this repository**
   ```bash
   git clone https://github.com/sergie-o/airbnb-nyc-business-analysis.git
2. **Navigate to the project folder**
   ```bash
    cd airbnb-nyc-business-analysis
3. **Open the Jupyter Notebook**
- If you use Jupyter Notebook:
   ```bash
   jupyter notebook "airbnb_newyork.ipynb"
- Or, open it in VSCode by double-clicking the file or using:
   ```bash
    code "airbnb_newyork.ipynb"
4. **Ensure the dataset is in the correct location**
- The file AB_NYC_2019.csv must be in the same directory as the notebook.
5. Run all cells
- Select Cell > Run All in Jupyter Notebook or VSCode to reproduce the analysis.
## :rocket: Next Steps
-  Build a predictive pricing model using key features.
  
-  Incorporate external datasets (e.g., tourism rates, events) to improve pricing recommendations.

-  Analyze review sentiment 📝 to see how it impacts bookings & pricing.


## ✨ Why This Project Stands Out  

This isn’t just another **Airbnb dataset exploration** — it’s a **data-driven business case study** that blends:  

- 📊 **Statistical analysis** for evidence-backed insights  
- 🖼 **Visual storytelling** to make trends easy to understand  
- 🗄 **SQL integration** to answer business questions directly from the data  

All aimed at answering **real-world market questions** in a way that’s practical for decision-making.  
Perfect for **recruiters and hiring managers** looking for insight-driven problem solvers. 🚀  

## 📁 Repository Structure  
```bash
nyc-airbnb-premium-insights/
│
├── data/                               # Raw and cleaned datasets
│   ├── airbnb_nyc.csv                   # Original dataset from Kaggle
│   └── airbnb_nyc_cleaned.csv           # Cleaned dataset after preprocessing
│
├── notebooks/                          # Jupyter notebooks for analysis
│   └── airbnb_premium_insights.ipynb    # Main analysis & visualizations
│
├── sql/                                # SQL queries for analysis
│   └── airbnb_analysis_queries.sql      # Business-related SQL queries
│
├── visuals/                            # Generated plots, charts, and maps
│   ├── price_distribution.png
│   ├── availability_boxplot.png
│   └── neighbourhood_price_map.png
│
├── README.md                           # Project documentation (your catchy version)
└── requirements.txt                    # Dependencies list (pandas, plotly, sqlite3, etc.)   ```






**Run the project:**  
```bash
git clone <repo-link>
cd nyc-airbnb-analysis
jupyter notebook airbnb_analysis.ipynb

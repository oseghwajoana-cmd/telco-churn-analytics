# 📘 Telco Customer Churn Analytics

An end‑to‑end analytics project using **SQL**, **Python**, and **Power BI** to analyse customer churn, engineer meaningful features, build predictive models, and generate actionable business insights.

---

# 📊 Churn Insights Summary

## 🔍 Customer Churn Insights Overview

The Telco Customer Churn dataset reveals clear behavioural, financial, and service‑level patterns that differentiate customers who stay from those who leave. The analysis highlights several high‑impact churn drivers that align with real subscription‑business dynamics.

---

## 💰 1. Financial Drivers

- Churners pay significantly higher **MonthlyCharges** (≈ £74 vs £61).  
- Churners have much lower **TotalCharges**, indicating they leave early in their lifecycle.  
- This points to **price sensitivity** and **early‑life dissatisfaction** as major churn triggers.

---

## ⏳ 2. Tenure and Contract Behaviour

- Customers with **short tenure** churn at much higher rates.  
- **Month‑to‑month contracts** show the highest churn, while one‑ and two‑year contracts are far more stable.  
- This reflects the importance of **long‑term commitment** and **customer onboarding**.

---

## 🌐 3. Internet Service Type

- **Fiber optic** customers churn the most (≈ 42%).  
- **DSL** customers churn far less (≈ 19%).  
- Customers with **no internet service** churn the least (≈ 7%).  
- This suggests that complex, high‑cost services create higher expectations and more friction.

---

## 🛟 4. Support and Security Services

- Customers without **TechSupport** churn at nearly **3×** the rate of those with it.  
- The same pattern appears for **OnlineSecurity**.  
- Support services act as a stabiliser, reducing confusion and dissatisfaction.

---

## 💳 5. Payment Method

- **Electronic check** users churn the most (≈ 45%).  
- **Automatic payments** (bank transfer or credit card) have the lowest churn (≈ 15–17%).  
- This indicates that payment friction and billing issues contribute to churn.

---

# 🧩 Overall Churn Narrative

Customers who churn tend to be:

- Early in their lifecycle  
- Paying higher monthly fees  
- Using complex services (especially fiber optic)  
- Lacking support/security add‑ons  
- Paying through friction‑heavy methods like electronic check  

Customers who stay tend to be:

- Long‑tenure  
- On stable contracts  
- Using simpler or cheaper services  
- Supported by TechSupport/OnlineSecurity  
- Enrolled in automatic payments  

---

# 💼 Business Implications

These insights point to several actionable retention strategies:

- Improve onboarding for new, high‑speed customers.  
- Offer bundled support/security services to high‑risk segments.  
- Encourage automatic payments to reduce billing friction.  
- Target early‑tenure customers with personalised retention messaging.  
- Review pricing tiers for premium service customers.  

---

# 🧠 Modelling & Key Insights (Logistic Regression)

## 🧮 Model Overview

A **Logistic Regression** model was used to quantify how different customer attributes influence churn probability. This model was chosen for its interpretability and ability to provide clear, actionable coefficients.

The model was trained on engineered features created in SQL and encoded in Python, ensuring a clean, business‑focused feature set.

---

## 📦 Feature Set Used

### **Continuous variables**
- `tenure`  
- `MonthlyCharges`  
- `TotalCharges`  

### **Engineered binary flags**
- `SeniorCitizenFlag`  
- `HasPartnerFlag`  

### **Encoded categorical features**
- `ContractCategory_*`  
- `PaymentCategory_*`  
- `TenureGroup_*`  

All features were numeric and ready for modelling.

---

## 📉 Coefficient Interpretation

Logistic regression coefficients indicate how each feature affects churn:

- **Positive coefficient → increases churn risk**  
- **Negative coefficient → decreases churn risk**  
- **Larger magnitude → stronger effect**

---

### 🔥 Top Churn Drivers

- **Short‑term contracts (+1.21)**  
  Strongest churn predictor. Month‑to‑month customers are far more likely to leave.

- **Long‑tenure customers, 49+ months (+0.96)**  
  Unexpectedly high churn risk — likely tied to contract renewals or price increases.

- **Electronic payment method (+0.48)**  
  Electronic check users churn more, consistent with billing friction patterns.

- **Senior customers (+0.25)**  
  Higher churn risk, possibly due to price sensitivity or service complexity.

- **Tenure 25–48 months (+0.23)**  
  Mid‑tenure customers show elevated churn, often at renewal points.

---

### 🌱 Retention Signals

- **TenureGroup 13–24 months (–0.29)**  
  Early‑mid tenure customers are more stable.

- **Stable payment methods (–0.13)**  
  Credit card/bank transfer users churn less.

- **Tenure (continuous) (–0.06)**  
  Longer tenure reduces churn risk.

- **HasPartnerFlag (–0.03)**  
  Customers with partners churn slightly less.

---

## 🎯 Business Recommendations from the Model

- **Target short‑term contract customers** with incentives to move to longer plans.  
- **Encourage stable payment methods** to reduce churn linked to billing friction.  
- **Review pricing for high‑charge customers**, who show higher churn risk.  
- **Investigate churn among long‑tenure customers**, who may be reacting to outdated plans or price increases.  
- **Design senior‑friendly plans** with simpler options or dedicated support.  

---

# 📈 Model Evaluation

The Logistic Regression model achieved an overall **accuracy of 78%**, performing strongly on the majority class (non‑churners) while showing moderate performance on the minority class (churners), which is typical for churn prediction problems.

### **Classification Report**

- **Accuracy:** 0.78  
- **Precision (Churn):** 0.62  
- **Recall (Churn):** 0.47  
- **F1‑Score (Churn):** 0.53  

The model performs very well at identifying customers who **stay** (recall = 0.90), but, as expected, struggles more with identifying customers who **churn** (recall = 0.47).

### **Confusion Matrix**

```
[[925 108]
 [200 174]]
```

- **925** true negatives  
- **174** true positives  
- **108** false positives  
- **200** false negatives  

### **Interpretation**

The model successfully captures meaningful churn patterns but misses a portion of churners — a common challenge in churn modelling. Future improvements could include:

- Applying **class weights**  
- Using **SMOTE** or other resampling techniques  
- Trying **tree‑based models** (Random Forest, XGBoost)  
- Hyperparameter tuning  

---

# 📊 Power BI Dashboard (External Repository)

The interactive churn dashboard for this project is hosted in a **separate repository** to keep the analytics pipeline modular and clean.

👉 **View the full Power BI dashboard here:**  
🔗 https://github.com/oseghwajoana-cmd/telco-churn-powerbi-dashboard

The dashboard includes:

- Customer segmentation  
- Churn breakdown by demographics, services, and contract types  
- High‑risk customer profiles  
- Interactive filters for deeper exploration  
- Visualisation of key churn drivers  

---

# 📁 Repository Structure

```
├── data/
├── sql/
├── python/
├── README.md
```

*(Power BI lives in its own dedicated repository.)*

---

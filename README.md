# Analytic Position Case Study - Loyalty Points System

## Overview

This project is a case study assignment based on a real-money online gaming company, **ABC**, which provides multiplayer games like Ludo. Players register, deposit money, play games, and earn loyalty points based on their platform activity.

The objective is to:

* Calculate loyalty points for players using a given formula.
* Analyze and rank players based on their points.
* Suggest a bonus distribution model for the top 50 players.
* Evaluate and potentially improve the loyalty point formula.

---

## 📁 Repository Structure

```
analytic_position_case_study/
├── data/                    # Input data files (CSV, etc.)
├── notebooks/              # Jupyter notebooks with analysis
├── scripts/                # Optional Python/SQL scripts
├── reports/                # Final report in PDF/Markdown
├── README.md               # Project overview
└── requirements.txt        # Required Python packages
```

---

## 📊 Loyalty Points Formula

Loyalty Points =

```
(0.01 * deposit amount) + 
(0.005 * withdrawal amount) + 
(0.001 * max(#deposit - #withdrawal, 0)) + 
(0.2 * number of games played)
```

Points are calculated in **two daily slots**:

* Slot S1: 12:00 AM to 12:00 PM
* Slot S2: 12:00 PM to 12:00 AM

---

## 📌 Assignment Tasks

### Part A: Data Analysis

1. **Playerwise Loyalty Points** for:

   * 2nd October S1
   * 16th October S2
   * 18th October S1
   * 26th October S2

2. **Monthly Leaderboard Ranking** based on:

   * Loyalty points
   * Tie-breaker: Number of games played

3. **Descriptive Analytics:**

   * Average deposit amount
   * Average deposit amount per user
   * Average number of games played per user

### Part B: Bonus Distribution

Suggest a method to divide **Rs 50,000** among the **top 50 players**:

#### 🔢 Suggested Strategy:

* **Step 1:** Rank players based on loyalty points
* **Step 2:** Normalize loyalty points to calculate weight
* **Step 3:** Allocate bonus proportionally to weight

```python
player_bonus = (player_loyalty_point / total_top50_loyalty_points) * 50000
```

✅ This ensures:

* Reward is proportional to loyalty
* Players are incentivized to remain active

Alternate criteria (e.g., number of games played) can be layered as a multiplier or tie-breaker.

### Part C: Formula Review

#### 🤔 Is the formula fair?

* **Strengths:**

  * Covers all key player actions
  * Simple and intuitive

* **Limitations:**

  * Very small weight to deposit/withdraw frequency
  * Doesn’t differentiate between casual and high-stakes players
  * No reward for referral or platform engagement beyond gameplay

#### 💡 Suggested Improvements:

1. Add **caps or thresholds** to prevent gaming the system
2. Include **referral-based points** or engagement points (daily login streaks, tournaments)
3. Add **time decay** (older actions have less weight)
4. Allow **bonus multipliers** for actions within promotional periods

---

## 🛠️ Setup Instructions

1. Clone the repository:

```bash
git clone https://github.com/siyajha919-o/analytic_position_case_study.git
cd analytic_position_case_study
```

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Open the notebook:

```bash
jupyter notebook notebooks/loyalty_points_analysis.ipynb
```

---

## 📈 Tools & Technologies

* **Python**
* **Jupyter Notebook**
* **Pandas, NumPy, Matplotlib, Seaborn**
* **SQL (optional)**

---

## 📄 Deliverables

* ✅ Final Report (PDF or Markdown)
* ✅ Jupyter Notebook with full logic and analysis
* ✅ README file with structure and explanation

---

## 📬 Contact

For questions or suggestions, contact **[SIYA JHA](https://github.com/siyajha919-o)**

---

> **Note:** All analysis is based on the sample dataset provided by the company. Any assumptions made have been clearly mentioned in the report.

---

## ✅ To Do

* [x] Load and clean data
* [x] Implement loyalty points formula
* [x] Calculate playerwise and monthly stats
* [x] Rank players and generate leaderboard
* [x] Bonus allocation strategy
* [x] Evaluate loyalty formula fairness
* [ ] Polish final report and submit assignment



# GenAI Infrastructure & Token Spend Optimization Dashboard

## 📌 Project Overview
As enterprise adoption of Generative AI accelerates, tracking and optimizing cloud infrastructure expenditure has become a critical engineering challenge. This project delivers an end-to-end data analytics solution evaluating **5,000 LLM API transaction logs** across multiple organizational business units and foundation models. 

By analyzing token consumption behaviors, this project successfully uncovers massive, actionable cost-saving anomalies—highlighting a distinct **Pareto Principle (80/20 Rule)** distribution where large-scale requests aggressively dominate the cloud budget.

---

## 📊 Key Insights & Analytics
The dataset was segmented to isolate high-token requests (where either prompt or completion token counts exceeded **2,000 tokens**). The analysis revealed:

* **The Spend Concentration:** High-token queries account for **55.3% of total API volume**, yet drive an overwhelming **79.3% of total GenAI expenditures** ($140.86 out of $177.59).
* **Cross-Departmental Consistency:** This pattern remains uniform across all evaluated business teams, proving it is an systemic operational trait rather than an isolated anomaly:
  * **Marketing-AI:** 55.6% high-token calls $\rightarrow$ **79.9%** of cost share.
  * **Core-Product:** 56.5% high-token calls $\rightarrow$ **79.6%** of cost share.
  * **Customer-Support:** 55.9% high-token calls $\rightarrow$ **80.3%** of cost share.
  * **R&D:** 52.9% high-token calls $\rightarrow$ **77.1%** of cost share.
* **Model Agnostic Patterns:** The metric concentration persists uniformly regardless of the underlying model provider or architecture type (**GPT-4o**, **Claude 3.5 Sonnet**, and **Llama 3 70B** all average a ~79% cost contribution from requests exceeding 2,000 tokens).

---

## 🛠️ Tech Stack & Architecture
* **Data Processing & Feature Engineering:** Python 3.x (Pandas, NumPy)
* **Statistical Visualization:** Python (Seaborn, Matplotlib)
* **Business Intelligence & Executive Reporting:** Power BI (`AI MODEL.pbix`)
* **Domain Context:** FinOps, Cloud Infrastructure Cost Optimization, Generative AI Token Management

---

## 🚀 Repository Structure
```text
├── README.md                          <- Main project documentation
├── AI MODEL.pbix                      <- Core interactive Power BI Dashboard file
├── genai_api_logs.csv                 <- Raw CSV dataset containing LLM API logs
├── scripts/
│   └── token_distribution_analysis.py <- Data ingestion, validation, and analytics script
└── assets/
    └── dashboard_preview.png          <- Screenshot showcasing the BI layout

```

---

## 📈 Strategic Recommendations for FinOps

Based on the dashboard's findings, three high-leverage infrastructure optimization strategies have been proposed to leadership:

1. **Context Window Engineering:** Standardize aggressive system prompt trimming and enforce response token truncation boundaries for routine departmental pipelines.
2. **Dynamic Context Caching:** Implement semantic prompt caching configurations for repetitive query frames—particularly within high-volume pipelines like `Marketing-AI` and `Core-Product`.
3. **Model Tiering:** Route high-token text synthesis operations that do not require reasoning thresholds away from flagship models to lightweight, cost-effective edge/distilled architectures.

---

## 💻 How to Run & Explore the Project

### 1. Requirements & Dependencies

To replicate the exploratory data analysis (EDA) using the python environment, install the necessary libraries:

```bash
pip install pandas numpy matplotlib seaborn

```

### 2. Run the Analysis Script

```bash
python scripts/token_distribution_analysis.py

```

### 3. Open the Power BI Dashboard

1. Ensure you have **Power BI Desktop** installed.
2. Download and double-click `AI MODEL.pbix` to open the report.
3. Refresh the dataset or re-link the underlying `genai_api_logs.csv` if prompted by the data source navigator.

```

---

### 💡 Pro-Tips before pushing this to GitHub:
1. **Add a Visual:** In the repository, create a folder named `assets` and upload a high-quality screenshot of your Power BI dashboard layout named `dashboard_preview.png`. Inside the markdown text, you can add `![Dashboard Preview](assets/dashboard_preview.png)` under the Overview section to make the landing page look incredible.
2. **Populate the Script:** If you wrote a `.py` script for cleaning or sorting your data, add it to a `scripts/` folder so recruiters can read your clean, documentation-heavy code.

```

# Research Paper: Driven Logistics Intelligence Dashboard for Supply Chain Optimization

## Overview

This folder contains the research paper (`Nassau Research paper.docx`) titled "Driven Logistics Intelligence Dashboard for Supply Chain Optimization: A Case Study of Nassau Candy Co." by Nikita Gautam.

The paper presents a comprehensive analysis of shipping route optimization for Nassau Candy Distributor, a national supplier of specialty confections and fine foods in the USA.

## Abstract

The research investigates optimization of shipping routes through exploratory data analysis (EDA) of shipment data from multiple factories to customer locations across the United States. Key inefficiencies, regional bottlenecks, and ship mode performance variations are identified. Insights highlight opportunities for cost reduction and delivery time improvement. Recommendations include route prioritization, technology adoption, and policy enhancements. An interactive Streamlit dashboard is developed to visualize findings and support decision-making.

## Key Sections

### 1. Introduction
- Competitive landscape of consumer goods distribution
- Challenges in maintaining timely deliveries while controlling costs
- Factors influencing shipping routes: distance, ship mode, regional demand, external variables
- Research aim: Analyze shipment data to uncover route efficiency patterns

### 2. Methodology
#### 2.1 Data Collection
- Sourced from Nassau Candy Distributor's internal records
- Includes order dates, ship dates, locations, product details
- Spans multiple years, covers shipments from five factories nationwide

#### 2.2 Data Cleaning and Preparation
- Handled missing values through imputation or removal
- Standardized geographic fields
- Calculated derived metrics such as lead time (Ship Date - Order Date)

#### 2.3 Exploratory Data Analysis (EDA)
- Descriptive statistics and visualizations (histograms, box plots, scatter plots)
- Correlation analysis between variables like sales, lead time, and region
- Grouping by ship mode, state, and factory for comparative insights

#### 2.4 Analytical Techniques
- Benchmarking routes using efficiency scores
- Statistical tests (ANOVA for ship mode differences)
- Geographic mapping for bottleneck identification

#### 2.5 Tools Used
- Excel: Data handling and initial analysis
- Power BI: Advanced visualizations and reporting
- GitHub: Version control and collaboration
- Streamlit: Interactive dashboard development
- SQL: Data querying and manipulation

### 3. Results
#### 3.1 Data Overview
- Dataset comprises multiple shipments with varying lead times across regions
- Sales performance shows strong contribution from confectionery products

#### 3.2 EDA Findings
- Lead time distributions show right-skewed patterns, indicating frequent delays
- Regional analysis reveals certain states as high-delay areas
- Ship mode comparisons indicate expedited options reduce lead times

#### 3.3 Key Metrics
- Route volume varies across different factory-customer routes
- Delay frequency observed in several regions
- Efficiency scores differ significantly between top and bottom routes

### 4. Discussion
- Significant impact of route selection and shipping strategy on logistics efficiency
- Bottleneck regions require targeted improvements
- Results align with modern supply chain practices emphasizing proactive, data-driven decision-making
- Limitations: Data completeness and external factors (infrastructure, environmental conditions)

### 5. Insights
- Efficient routes correlate with proximity and ship mode selection
- High-volume regions tend to experience more delays
- Cost-time trade-offs require balanced shipping strategies

### 6. Recommendations
- **Route Optimization**: Implement GIS-based planning for better route selection
- **Ship Mode Policies**: Use expedited shipping for critical deliveries
- **Technology Integration**: Adopt real-time tracking systems
- **Regional Investments**: Improve infrastructure in bottleneck areas
- **Monitoring Dashboard**: Utilize Streamlit dashboard for continuous tracking

### 7. Streamlit Web Application
The dashboard includes:
- Interactive filters (date, region, ship mode)
- Visualizations (maps, charts, KPIs)
- Drill-down analysis for detailed insights

### 8. Deliverables
- Complete research paper
- Dashboard application
- Live deployment link

### 9. Conclusion
The research provides a comprehensive framework for improving shipping route efficiency at Nassau Candy Distributor. By leveraging EDA and interactive tools, organizations can enhance logistics performance and make informed operational decisions.

### 10. References
- Streamlit documentation
- pandas documentation
- Plotly Express documentation

## Author Information
- **Author**: Nikita Gautam
- **Email**: [nikitagautam647@gmail.com](mailto:nikitagautam647@gmail.com)
- **GitHub Repository**: [https://github.com/nikitagautam647-cell/Nassau-Candy-Distributor](https://github.com/nikitagautam647-cell/Nassau-Candy-Distributor)
- **Live Dashboard**: [https://appproject-fztzy8a96wsxcxtuh6x5hr.streamlit.app/](https://appproject-fztzy8a96wsxcxtuh6x5hr.streamlit.app/)
- **Research Paper**: [View on Academia.edu](https://independent.academia.edu/NikitaGautam45)

## How to Access

Open `Nassau Research paper.docx` with Microsoft Word or compatible software to read the full research paper with proper formatting.
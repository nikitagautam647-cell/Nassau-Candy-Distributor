# Nassau-Candy-Distributor

**Research Paper:** [View on Academia.edu](https://independent.academia.edu/NikitaGautam45)

## Overview
This project focuses on logistics intelligence and supply chain optimization for Nassau Candy Distributor, a national supplier of specialty confections and fine foods in the USA. Through comprehensive data analysis, we identify inefficiencies in shipping routes, regional bottlenecks, and ship mode performance to enhance delivery efficiency and business profitability.

## Table of Contents
- [Introduction](#introduction)
- [Dataset](#dataset)
- [Tech Stack](#tech-stack)
- [Installation](#installation)
- [Usage](#usage)
- [Analysis & Features](#analysis--features)
- [Results & Insights](#results--insights)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction
Nassau Candy Distributor faces challenges in optimizing shipping routes from factories to customers across multiple regions. This project employs data-driven approaches to analyze shipment data, uncover patterns in route efficiency, and provide actionable recommendations. The analysis includes exploratory data analysis (EDA), SQL querying, Power BI dashboards, and an interactive Streamlit web application.

Key objectives:
- Analyze shipping lead times across different routes
- Identify fastest and slowest factory-to-customer routes
- Evaluate delay frequencies and ship mode performance
- Provide insights for cost reduction and delivery time improvement

## Dataset
The project uses internal shipment data from Nassau Candy Distributor, including:
- **Order and shipment details**: Order dates, ship dates, locations, products, sales, costs, profits
- **Factory coordinates**: Geographic locations with latitude/longitude for mapping
- **Product correlations**: Relationships between products, factories, and divisions
- **Time period**: Multiple years of historical data
- **Geographic scope**: Nationwide coverage across US regions, states, and cities

Data sources are processed and cleaned for analysis.

## Tech Stack
- **Data Processing**: Microsoft Excel
- **Database**: MySQL
- **Querying**: SQL (DDL, DML, joins, aggregations, window functions)
- **Visualization**: Power BI Desktop
- **Web Dashboard**: Streamlit (Python)
- **Programming**: Python (Pandas, Plotly)
- **Presentation**: Microsoft PowerPoint
- **Documentation**: Markdown, Word

## Installation
1. **Clone the repository**:
   ```bash
   git clone https://github.com/nikitagautam647-cell/Nassau-Candy-Distributor.git
   cd Nassau-Candy-Distributor
   ```

2. **Database Setup**:
   - Install MySQL
   - Run the SQL scripts in `SQL/Nassau Candy Distributor analysis.sql` to create database and tables

3. **Power BI Dashboard**:
   - Install Power BI Desktop
   - Open `DASHBOARD/Nassau candy distributor.pbix`

4. **Streamlit App**:
   - Install Python 3.8+
   - Install dependencies:
     ```bash
     pip install streamlit pandas plotly mysql-connector-python
     ```
   - Run the app (assuming app.py exists):
     ```bash
     streamlit run app.py
     ```

## Usage
1. **Database Analysis**: Execute SQL queries in `SQL/` folder for detailed insights
2. **Power BI Visualization**: Open the .pbix file for interactive dashboards
3. **Streamlit Dashboard**: Access live app at https://appproject-fztzy8a96wsxcxtuh6x5hr.streamlit.app/ or run locally
4. **Research Paper**: Read `Report/Nassau Research paper.docx` for methodology and findings
5. **Presentation**: View `Presentation/Shipping_Analysis_Presentation.pptx` for project summary

## Analysis & Features
The project addresses key business questions through multi-faceted analysis:

### Route & Efficiency Analysis
- Average lead time per route
- Top routes by delay count
- Route-wise delay percentages

### Geographic Analysis
- State-wise lead time performance
- Regional delay hotspots
- City sales rankings

### Ship Mode Analysis
- Performance comparison across shipping methods
- Best modes per region

### Factory Performance
- Sales, profit, and lead time by factory
- Delay percentage analysis

### Product & Division Insights
- Sales and profit by product category
- Delay analysis for products

### Integrated Business Metrics
- Sales vs. logistics correlations
- Cost-profit analysis by region and ship mode

### Advanced Analytics
- Window functions for rankings and running totals
- Subqueries for comparative analysis
- Case logic for categorization

## Results & Insights
The analysis reveals critical insights for logistics optimization:

### Key Findings
- Certain routes show significantly higher lead times, indicating inefficiencies
- Express shipping outperforms standard methods in delivery speed
- Geographic bottlenecks exist in specific states and regions
- High-volume products correlate with higher delay rates
- Chocolate division dominates sales but faces efficiency challenges

### Business Impact
- Identification of top 10 fastest and slowest routes
- Delay percentage analysis across all dimensions
- Cost-time trade-offs for strategic decision-making
- Geographic mapping of performance hotspots
- Recommendations for route prioritization and technology adoption

### Dashboard Features
- Interactive filters (date, region, ship mode, division)
- Real-time KPIs (orders, sales, profit, lead time, delays)
- Visualizations: bar charts, scatter plots, maps, pie charts
- Drill-down capabilities for detailed analysis
- Automated insights and recommendations

## Project Structure
```
Nassau-Candy-Distributor/
├── DASHBOARD/
│   ├── Nassau candy distributor.pbix
│   ├── Sales & Profit Analytics Dashboard.jpg
│   ├── Shipping Efficiency Analysis.jpg
│   └── README.md
├── DATA/
│   └── README.md
├── Presentation/
│   ├── Shipping_Analysis_Presentation.pptx
│   └── README.md
├── Report/
│   ├── Nassau Research paper.docx
│   └── README.md
├── SQL/
│   ├── Nassau Candy Distributor analysis.sql
│   └── README.md
├── Streamlit-App Dashboard/
│   ├── app_link.txt
│   └── README.md
├── LICENSE
└── README.md
```

## Contributing
Contributions are welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

For major changes, please open an issue first to discuss the proposed changes.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact
**Author**: Nikita Gautam  
**Email**: [nikitagautam647@gmail.com](mailto:nikitagautam647@gmail.com)  
**GitHub**: [nikitagautam647-cell](https://github.com/nikitagautam647-cell/Nassau-Candy-Distributor)  
**Live Dashboard**: [Streamlit App](https://appproject-fztzy8a96wsxcxtuh6x5hr.streamlit.app/)

For questions or collaboration opportunities, please reach out via email or GitHub issues.
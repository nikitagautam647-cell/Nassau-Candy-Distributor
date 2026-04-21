# Power BI Dashboard for Nassau Candy Distributor

This Power BI file (`Nassau candy distributor.pbix`) contains comprehensive business intelligence dashboards for analyzing sales, profitability, and shipping efficiency in the candy distribution business.

## Dashboard 1: Sales & Profit Analytics Dashboard

This dashboard focuses on sales and profitability analysis across regions, products, and geographies.

### Key Cards/KPIs:
- Total Orders: Aggregated count of all orders
- Total Profit: Total profitability metric
- Total Sales: Sum of all sales transactions
- Average Lead Time: Mean delivery time

### Visuals:
1. **Sales vs Profit by Region** (Clustered Column Chart): Compares sales and profit across regions
2. **Top Products by Sales** (Horizontal Bar Chart): Top 10 products by sales volume
3. **Cost vs Profit Analysis** (Scatter Chart): Relationship between costs and profitability
4. **Sales by Product Category** (Donut Chart): Market share by division (Chocolate, Sugar, Other)
5. **Top Cities by Sales** (Clustered Column Chart): Geographic sales hotspots
6. **Geographic Sales Distribution** (Bubble Map): Spatial sales distribution

### Filters:
- Region
- State/Province
- Product Name
- Division

## Dashboard 2: Shipping Efficiency Analysis

This dashboard analyzes delivery performance, lead times, and routing efficiency.

### Key Cards/KPIs:
- Delay %: Percentage of delayed shipments
- Total Orders: Count of orders processed
- Average Lead Time: Mean delivery duration
- Fastest Route: Best-performing route

### Visuals:
1. **Top 10 Fastest Routes** (Clustered Column Chart): Quickest shipping routes
2. **Top 10 Slowest Routes** (Clustered Column Chart): Bottleneck routes
3. **Lead Time by Routes** (Clustered Column Chart): Time impact per route
4. **Lead Time by Ship Mode** (Clustered Column Chart): Efficiency by shipping method
5. **Geographic Lead Time Map** (Map Visual): Lead time by region
6. **Delayed vs On-Time Status** (Donut Chart): On-time delivery tracking

### Filters:
- Region
- State/Province
- Ship Mode

## Data Model

The data model includes:
- **Main Entity**: "Nassau Candy Distributor" with dimensions like Routes, Ship Mode, Region, Product Name, Division, etc., and measures like Sales, Cost, Gross Profit, Lead Time, etc.
- **Secondary Entity**: "factories co-ordinates" for geographic data (Latitude, Longitude).

Relationships connect entities for integrated analysis.

## Recommendations
- Optimize slowest routes identified in the Shipping Efficiency dashboard to reduce lead times.
- Focus marketing efforts on top-selling products and high-sales cities.
- Analyze cost-profit scatter plots to identify products with low margins for potential pricing adjustments.
- Improve on-time delivery by addressing delayed shipments, targeting to reduce Delay %.
- Expand sales in underperforming regions based on geographic analysis.

## Insights
- Chocolate division dominates sales, followed by Sugar and Other categories.
- Certain routes show significantly higher lead times, impacting overall efficiency.
- Geographic hotspots reveal opportunities for localized inventory management.
- Cost-profit analysis highlights products where profitability can be improved through cost control.
- On-time delivery metrics indicate areas for supply chain optimization.

## Conclusion
The Power BI dashboards provide actionable insights into sales performance and operational efficiency for Nassau Candy Distributor. By leveraging the interactive visuals and filters, stakeholders can make data-driven decisions to enhance profitability, streamline shipping, and drive business growth. Regular updates to the data model will ensure ongoing relevance and accuracy of the analytics.
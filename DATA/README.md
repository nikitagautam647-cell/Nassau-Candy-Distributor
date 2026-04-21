# Nassau Candy Distributor Data

## Excel File: nassau_data.xlsx

This Excel file contains the primary dataset for the Nassau Candy Distributor analysis project.

### Description
- **File Name**: nassau_data.xlsx
- **Location**: DATA/nassau_data.xlsx
- **Purpose**: Provides raw data for sales, inventory, and operational analysis.

### Contents
The file includes multiple sheets with data such as:
- Sales transactions
- Product inventory
- Customer information
- Financial metrics

### Data Columns
The main data sheet contains the following columns with descriptions:

- **Row_ID**: Unique identifier for each row (Primary Key).
- **Order_ID**: Unique identifier for each order.
- **Order_Date**: Date when the order was placed.
- **Ship_Date**: Date when the shipment was made.
- **Lead_Time**: Time taken for shipping (calculated as days between order and ship date).
- **Delayed_Shipped**: Description of delayed shipments.
- **Delayed_Flag**: Binary flag indicating if the shipment was delayed (1 for delayed, 0 otherwise).
- **Ship_Mode**: Mode of shipping (e.g., Standard, Expedited).
- **Customer_ID**: Unique identifier for the customer.
- **Country_Region**: Country or region of the customer.
- **City**: City of the customer.
- **State_Province**: State or province of the customer.
- **Routes**: Defined route from factory to customer location.
- **Postal_Code**: Postal code of the customer.
- **Division**: Business division.
- **Region**: Geographic region.
- **Product_ID**: Unique identifier for the product.
- **Product_Name**: Name of the product.
- **Factory**: Factory name producing the product.
- **Factory_Location**: Location of the factory.
- **Sales**: Sales amount.
- **Units**: Number of units sold.
- **Gross_Profit**: Gross profit from the sale.
- **Cost**: Cost incurred.
- **Total_Sales**: Total sales value.
- **Total_Cost**: Total cost.
- **Total_Gross_Profit**: Total gross profit.

Additional sheets may include factory coordinates and product-factory correlations.

### Usage
This data is used in conjunction with the SQL analysis file located in the SQL folder: `Nassau Candy Distributor analysis.sql`.

For more details on the project, refer to the main README.md in the root directory.

## Analytics Process

### Insights
The Excel file has been enhanced with new columns, highlights for key data points, pivot tables for summarization, and formulas including VLOOKUP and other functions for data manipulation and analysis.

### Data Cleaning & Validation
- Validate date formats (e.g., ensure Order_Date and Ship_Date are in consistent format).
- Remove invalid or negative lead times.
- Handle missing shipment records.
- Standardize geographic fields (e.g., Country_Region, State_Province).

### Feature Engineering
- Calculate Shipping Lead Time (days) as the difference between Ship_Date and Order_Date.
- Categorize routes by:
  - Factory → Customer Region
  - Factory → Customer State
- Group shipments by Ship Mode.

### Route Definition & Aggregation
Each route is defined as: Factory Location → Customer State / Region.

For each route:
- Total shipments
- Average shipping lead time
- Lead time variability

### Efficiency Benchmarking
- Rank routes from fastest to slowest.
- Identify:
  - Top 10 most efficient routes
  - Bottom 10 least efficient routes
- Compare performance across ship modes.

### Geographic Bottleneck Analysis
- Identify regions with:
  - High average lead time
  - High shipment volume + poor performance
- Detect congestion-prone states or regions.

### Ship Mode Performance Analysis
- Compare shipping efficiency by:
  - Standard shipping
  - Expedited shipping
- Evaluate cost-time tradeoffs (descriptive).

## Conclusion
Based on the analysis of the Excel sheet data:

- **Efficiency Insights**: The top 10 routes show significantly lower average lead times compared to the bottom 10, indicating opportunities for process optimization in underperforming routes.
- **Geographic Bottlenecks**: Regions with high shipment volumes and poor performance (e.g., high average lead times) suggest congestion issues that may require infrastructure improvements or alternative routing.
- **Ship Mode Tradeoffs**: Expedited shipping offers faster delivery but at higher costs, while standard shipping provides cost savings with longer lead times. Businesses should choose based on urgency and budget constraints.
- **Overall Recommendations**: Focus on reducing delays in high-volume routes, standardize data formats for better accuracy, and leverage feature engineering to enhance predictive analytics for better decision-making in supply chain management.
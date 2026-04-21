# SQL Analysis for Nassau Candy Distributor

This folder contains the SQL analysis file (`Nassau Candy Distributor analysis.sql`) that performs comprehensive data querying and analysis on the Nassau Candy Distributor dataset.

## Database Setup

- **Database**: `Nassu_candy_distributor`
- **Tables**:
  - `nassu_data`: Main orders and shipment data
  - `factories_coordinates`: Factory locations with latitude/longitude
  - `products_factories_correlation`: Product-factory relationships

## Data Preparation

### Table Modifications
- Renamed tables for consistency
- Modified data types (dates, integers, decimals, strings)
- Converted date formats from DD-MM-YYYY to MySQL date format
- Added primary keys and foreign key relationships

### Key Data Cleaning Steps
- Standardized column names and types
- Ensured referential integrity between tables
- Prepared data for complex joins and aggregations

## Analysis Categories

### Route & Efficiency
Queries analyze shipping routes performance:
- Average lead time per route
- Top 5 routes with highest delay counts
- Route-wise total orders, delayed orders, and delay percentages
- Fastest route per factory ranking

### Geographic Analysis
Location-based insights:
- State-wise average lead time with coordinates
- Regions with highest delay counts
- Top 3 cities per region by sales

### Ship Mode Analysis
Shipping method comparisons:
- Ship mode-wise orders, average lead time, delay percentage
- Best ship mode per region based on lead time

### Factory Performance
Factory-level metrics:
- Factory-wise sales, profit, and lead time
- Factories with highest delayed shipments per division
- Factories with delay percentage above overall average

### Product & Division Insights
Product performance analysis:
- Division-wise sales, profit, and lead time
- Top 5 products by sales with delay metrics
- Products with delay percentage above 20%

### Sales + Logistics Combined
Integrated business metrics:
- Route-wise sales and delay percentage
- Regions with high profit but high lead time
- Cost vs profit by region and ship mode

### Advanced Analytics (Window Functions)
Complex analytical queries:
- Ranking factories within regions by sales
- Running total of sales per region over time
- Lag comparison of lead times between shipments
- Top routes per state by delay count

### Subquery & Case Logic
Advanced querying techniques:
- Routes with delay counts above average
- Categorization of shipments into speed categories (Fast, Medium, Slow, Very Slow)

## Insights

### Route Efficiency
- Certain routes consistently show higher lead times, indicating infrastructure or distance issues
- Top delayed routes suggest need for route optimization or alternative shipping methods
- Fastest routes per factory highlight efficient factory-customer pairings

### Geographic Patterns
- Specific states and regions experience higher delays, possibly due to logistics challenges
- High-sales cities may be overburdened, leading to delays
- Geographic coordinates enable mapping of performance hotspots

### Ship Mode Performance
- Express shipping significantly reduces lead times compared to standard methods
- Different ship modes perform variably across regions
- Expedited options should be prioritized for time-sensitive deliveries

### Factory Performance
- Some factories have higher delay rates, indicating operational issues
- Factories exceeding average delay percentages need targeted improvements
- Division-wise analysis shows varying performance across product categories

### Product Insights
- High-selling products may correlate with higher delays due to volume
- Certain products have consistently high delay percentages, suggesting supply chain issues
- Division analysis reveals Chocolate as potentially dominant but with efficiency challenges

### Business Integration
- High-profit regions with high lead times indicate trade-offs between profitability and speed
- Cost-profit analysis by region and ship mode helps optimize pricing strategies
- Sales and logistics metrics together provide comprehensive business intelligence

## Recommendations

### Route Optimization
- Prioritize optimization of top-delayed routes through better planning or partnerships
- Implement route benchmarking and continuous monitoring
- Consider alternative routing for consistently slow paths

### Geographic Improvements
- Invest in infrastructure improvements in high-delay states and regions
- Develop regional distribution centers to reduce lead times
- Use geographic mapping for proactive bottleneck identification

### Ship Mode Strategy
- Adopt express shipping for critical deliveries and high-value customers
- Develop ship mode selection algorithms based on distance and urgency
- Negotiate better rates for preferred shipping methods

### Factory Enhancements
- Audit and improve operations at factories with high delay rates
- Implement factory-specific performance tracking
- Balance production across factories to reduce bottlenecks

### Product and Division Focus
- Address supply chain issues for products with high delay percentages
- Optimize inventory management for high-volume products
- Develop division-specific logistics strategies

### Technology and Monitoring
- Implement real-time tracking systems for all shipments
- Use predictive analytics to forecast delays
- Develop automated alerts for route performance deviations

### Data-Driven Decision Making
- Establish regular SQL-based reporting for key metrics
- Integrate SQL insights with Power BI and Streamlit dashboards
- Use window functions and advanced queries for deeper analysis

## Tools and Technologies

- **Database**: MySQL
- **Query Types**: DDL (ALTER, CREATE), DML (SELECT, UPDATE), Joins, Aggregations, Window Functions, Subqueries
- **Analysis Focus**: Lead time optimization, delay reduction, sales-profit correlation

## How to Use

1. Create the database and tables as specified
2. Run the data preparation queries to set up proper structure
3. Execute analysis queries category by category
4. Use results to inform business decisions and dashboard development

This SQL analysis provides the foundation for data-driven logistics optimization at Nassau Candy Distributor.
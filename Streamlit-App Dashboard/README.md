# Streamlit App Dashboard

## Overview

This folder contains the Streamlit application for the Nassau Candy Distributor logistics and business analytics dashboard.

**Live App**: https://appproject-fztzy8a96wsxcxtuh6x5hr.streamlit.app/

## Dashboard Features

The Streamlit dashboard provides an interactive web interface for analyzing shipping efficiency, sales performance, and logistics optimization for Nassau Candy Distributor.

### Key Components

#### 1. Dashboard Title and Introduction
- Welcome section with project overview
- Brief description of Nassau Candy Distributor's operations

#### 2. Interactive Filters
- **Date Range Selector**: Filter data by order/ship dates
- **Region Filter**: Select specific geographic regions
- **Ship Mode Filter**: Choose shipping methods (Standard, Express, etc.)
- **Product Division Filter**: Filter by product categories (Chocolate, Sugar, Other)

#### 3. Key Performance Indicators (KPIs)
- Total Orders
- Total Sales
- Total Profit
- Average Lead Time
- Delay Percentage
- On-Time Delivery Rate

#### 4. Visualizations

##### Sales & Profit Analytics
- **Sales vs Profit by Region** (Bar Chart): Side-by-side comparison of sales and profit across regions
- **Top Products by Sales** (Horizontal Bar Chart): Top 10 products ranked by sales volume
- **Cost vs Profit Analysis** (Scatter Plot): Relationship between production costs and profitability, sized by sales
- **Sales by Product Category** (Pie/Donut Chart): Market share distribution by division
- **Top Cities by Sales** (Bar Chart): Geographic sales hotspots
- **Sales Distribution Map** (Bubble Map): Spatial visualization of sales overlaid on geographic coordinates

##### Shipping Efficiency Analysis
- **Top 10 Fastest Routes** (Bar Chart): Quickest shipping routes by average lead time
- **Top 10 Slowest Routes** (Bar Chart): Bottleneck routes requiring optimization
- **Lead Time by Routes** (Bar Chart): Cumulative time impact per route
- **Lead Time by Ship Mode** (Bar Chart): Efficiency comparison across shipping methods
- **Geographic Lead Time Map** (Choropleth Map): Lead time performance by state/region
- **Delayed vs On-Time Status** (Pie Chart): Delivery status distribution

##### Additional Analytics
- **Route Efficiency Metrics**: Average lead time, delay counts, efficiency scores
- **Factory Performance**: Sales, profit, and lead time by factory location
- **Time Series Analysis**: Trends over time for key metrics
- **Correlation Analysis**: Relationships between sales, profit, lead time, and delays

#### 5. Data Tables
- Detailed data views with sorting and filtering capabilities
- Export functionality for selected data subsets

#### 6. Insights and Recommendations
- Automated insights based on selected filters
- Actionable recommendations for route optimization
- Performance alerts for high-delay routes

## Technical Implementation

### Technologies Used
- **Streamlit**: Web application framework
- **Python**: Backend logic
- **Pandas**: Data manipulation and analysis
- **Plotly**: Interactive visualizations
- **MySQL/SQLite**: Data storage (if applicable)

### Data Sources
- Processed shipment data from Nassau Candy Distributor
- Factory coordinates for geographic mapping
- Product and factory correlation data

## How to Use

1. Access the live dashboard via the link above
2. Use the sidebar filters to customize your analysis
3. Explore different tabs/sections for various analytics
4. Interact with charts for detailed views
5. Export data or insights as needed

## Purpose

The dashboard serves as an interactive tool for:
- Real-time monitoring of logistics performance
- Data-driven decision making for route optimization
- Identifying bottlenecks and improvement opportunities
- Supporting business stakeholders with actionable insights
- Demonstrating the impact of data analytics on supply chain efficiency

## Features Highlights

- **Responsive Design**: Works on desktop and mobile devices
- **Real-time Filtering**: Instant updates when changing parameters
- **Interactive Visualizations**: Hover, zoom, and drill-down capabilities
- **Performance Optimized**: Fast loading and smooth interactions
- **User-Friendly Interface**: Intuitive navigation and clear labeling

This Streamlit dashboard transforms complex logistics data into accessible, actionable business intelligence for Nassau Candy Distributor.
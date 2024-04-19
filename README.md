# Brick-Mortar-Business-Sales-Insights
This repo leverages SQL &amp; Power BI to unlock sales insights &amp; monitor target profit for a brick-and-mortar business.

## Contents

What's Included:

* SQL queries ([SalesInsights.sql](https://github.com/animesshhh/Brick-Mortar-Business-Sales-Insights/blob/main/SalesInsights.sql)) to extract key sales metrics
* Five interactive Power BI dashboards
  * Generated Revenue Analysis
  * Profit Margin Monitoring
  * Customer and Market Behavior Exploration
  * Product Sales Insights
  * Order Management


## SQL

### Database

The database consists of 5 tables:

1. **`sales.customers`**  
   i. `customer_name`  
   ii. `customer_code`  
   iii. `customer.type`

2. **`sales.date`**  
   i. `cy_date(mm/yyyy)`  
   ii. `year`  
   iii. `month_name`

3. **`sales.markets`**  
   i. `markets_code`  
   ii. `markets_name`  
   iii. `zone`

4. **`sales.products`**  
   i. `product_code`  
   ii. `product_type`

5. **`sales.transactions`**  
   i. `cost_price`  
   ii. `currency`  
   iii. `customer.code`  
   iv. `market_code`  
   v. `order_date`  
   vi. `product_code`
   vii. `sales_amount`  
   viii. `sales_qty`   
   ix. `profit_margin`   
   x. `profit_margin_percent`      

***Calculated fields***  
   
   i. `Revenue= SUM('sales transactions'[sales_amount])`   
   ii. `Quantity = SUM('sales transactions'[sales_qty])`  
   iii. `Total profit Margin = SUM('sales transactions'[profit_margin])`  
   iv. `Profit Margin Contribution % = DIVIDE([Total profit Margin], CALCULATE([Total Profit Margin], ALL('sales products'), ALL('sales customers'), ALL('sales markets')))`  
   v. `Revenue Contribution % = DIVIDE([Revenue], CALCULATE([Revenue], ALL('sales products'), ALL('sales customers'), ALL('sales markets')))`  
   vi. `Revenue LY = CALCULATE([Revenue], SAMEPERIODLASTYEAR('sales date'[date]))`

----**`Profit Target = GENERATESERIES(-0.05, 0.15, 0.01)`**----  
----**`Target Diff = [Profit Margin %] - 'Profit Target'[Profit Target Value]`**----

### Queries:
1. Showing all transactions, customer, market and product records

2. Showing total number of customers

3. Showing transactions only in Mumbai markets(`market_code = "Mark002"`)

4. Showing distinct product types and product codes sold in Mumbai

5. Showing transactions which processed in USD

6. Showing transactions which happened in 2020

7. Showing total revenue in year 2020

8. Showing total revenue in January, 2020

9. Showing total revenue in Mumbai in 2020  


(rest in PowerBI😊)


## PowerBI

### 1. Revenue Analysis

   * **Total Revenue (2017-2020)**: See the overall company income for the past four years.
   * **Sales by Year (2017-2020)**: Track annual sales performance for the last four years.
   * **Market-wise Revenue**: Analyze revenue breakdown across different markets (focus on key markets).
   * **Customer Sales Quantity Breakdown**: Identify high-value customers within each market (segment by markets).
   * **Revenue by Zone (North, Central, South)**: Understand regional sales trends over the past four years (Focus to increase sales in particular zone by increasing sales employees, promoting/advertising products).
   * **Top Revenue-Generating Customers**: Pinpoint the top 5 customers contributing the most revenue.

*All these metrics can be looked upon yearwise and monthwise using year and month widgets, respectively.*

![Screenshot 2024-04-20 042606](https://github.com/animesshhh/Brick-Mortar-Business-Sales-Insights/assets/97463808/e3d84b8a-e87c-4626-9132-b47444522ead)



### 2. Profit Margin Monitoring

   * **Profit Target Slider**: Adjust a slider to set a profit margin goal, automatically updating a chart color based on the difference between target profit margin and current profit margin(blue if targets are met, red if not).
   * **Monthly Revenue Comparison**: View a chart comparing revenue projections for the current year to the previous year, broken down by months.



![Screenshot 2024-04-20 021123](https://github.com/animesshhh/Brick-Mortar-Business-Sales-Insights/assets/97463808/52372132-73ee-41ba-bf65-5b2efba3333b)
   

  



### 3.  Customer and Market Behavior Exploration

   * **High-Volume Customers**: Find customers who order the most (loyal customers). Strengthen relationships to retain them.
   * **Highest Revenue Customers**: Identify customers with whom we are getting highest revenue (*increase products which have more price*).
   * **Low-Revenue Customers**: Identify customers spending less. Gather feedback and offer incentives to improve their value.
   * **Industry Revenue Breakdown**: Analyze revenue by customer industry (e.g., Brick and Mortar vs. E-Commerce) to understand their contribution.
   * **Profitable Markets**: Focus on markets with high profit margins to maximize overall profitability.
   * **Low Profit/Sales Areas**: Identify markets with low profits or sales. Consider stopping sales to save on logistics and reinvest in stronger areas.
   * **Zonal Profit Margins**: Calculate profit margins for each region (Center, North, South) to understand regional profitability.
   * **Market Contribution to Profit**: Track how much each market(city) contributes to total profit to identify key revenue drivers.



![Screenshot 2024-04-20 021137](https://github.com/animesshhh/Brick-Mortar-Business-Sales-Insights/assets/97463808/1195f5ac-fa40-4ee0-b6bf-e13bef8b77ac)




### 4. Product Sales Insights

* **Data-Driven Decisions**: Uncover which products generate the highest revenue within each zone (North, Central, South) and market (further segmented by city/region). This will reveal product preferences based on location. By understanding the top revenue products by zone and market, inventory allocation and marketing strategies can be optimized to better meet customer demands in each location.
* **Top-Selling Products**: Identify the top 5 products driving the most sales. (`blank` is missing field which is kept only for its highest contribution)


![Screenshot 2024-04-20 021151](https://github.com/animesshhh/Brick-Mortar-Business-Sales-Insights/assets/97463808/119e7acf-c7e3-4cd4-b4a3-79d8201f59f6)



### 5. Order Management

* **Accurate Inventory Management**: By tracking order trends on a monthly and yearly timeframe, future demand can be predicted, preventing stockouts and overstocking. Adjust order quantities to meet actual demand, reducing storage costs and improving cash flow.   
* **Predicting Peaks**: Analyze year-over-year monthly sales trends to identify months with increasing sales. This allows the company to proactively adjust production or distribution to meet anticipated demand surges.

*All these metrics can be looked upon yearwise using year card widget.*


![Screenshot 2024-04-20 021203](https://github.com/animesshhh/Brick-Mortar-Business-Sales-Insights/assets/97463808/5a3d41f4-e4ad-4b13-b6db-91f03518b8c5)





## Conclusion   

This repository provides comprehensive analyses to gain valuable insights into customer behavior, market trends, and profitability. By leveraging this data, a company can optimize sales strategies, strengthen customer relationships, and maximize profits.


## Presents the ad-hoc requests and solutions of real world datasets by building SQL queries.

### 1) APPLE STOCK PRICE DATA

  The data was pulled from Google Finance in January 2014. There’s one row for each day (indicated in the date field). open and close are     the opening and closing prices of the stock on that day. high and low are the high and low prices for that day. volume is the number of     shares traded on that day.

### 2) COLLEGE FOOTBALL PLAYERS

  This data was collected from ESPN on January 15, 2014 from the rosters listed on this page http://www.espn.com/college-football/teams

### 3) CRUCNBASE DATA

  The data for the following lessons was pulled from Crunchbase, a crowdsourced index of startups, founders, investors, and the activities   of all three. It was collected Feb. 5, 2014. The first table lists a large portion of companies in the database; one row per company. 
  The permalink field is a unique identifier for each row, and also shows the web address. The fields with “funding” in the name have 
  to do with how much outside investment (in USD) each company has taken on. The rest of the fields are self-explanatory.
  The second table lists acquisitions—one row per acquisition. company_permalink in this table maps to the permalink field in                 tutorial.crunchbase_companies as described in the previous lesson. Joining these two fields will add information about the 
  company being acquired.
  You’ll notice that there is a separate field called acquirer_permalink as well. This can also be mapped to the permalink field             tutorial.crunchbase_companies to add additional information about the acquiring company.

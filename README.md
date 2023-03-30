# Project3_Bank

* Data cleaning in Python and further analysis in MySQL.

### Data cleaning and validation steps

- Clients without phone number dropped because cannot be contacted for future campaigns.

- Data types - Coherent for most fields, except float data converted to integer.  
day                     float64  
duration                float64  
campaign                float64  
pdays                   float64  
previous                float64

- Successful clients - important data thus decided keep as only 400 succesful clients do function to find median for month, duration, campaign and p-days.

- For bank deposit = yes, update poutcome = success

- In education column changed NAs to 'unknown' for data consistency.

- Written a function to update missing loan values based on median and quantiles.

- Checking for outliers in the data.

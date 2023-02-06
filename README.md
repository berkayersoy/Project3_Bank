# Project3_Bank

## Identification of incoherent missing data

* unknown phone number - drop as cannot be contacted
data types - ok for most, except float data - can be converted to integer (
day                     float64
duration                float64
campaign                float64
pdays                   float64
previous                float64

day is it number of days - coherent

Successful clients - important data thus decided keep as only 400 succesful clients
  do function to find median for month, duration, campaign and p-days

For bank deposit = yes, update poutcome = success

Education, update NAs to 'unknown'


Potentially function to update loans based on median and quantiles

      Loan updata NA to no for id 37, 39, 42 - based on their balance and where it falls with median and quantils
      loan update ID 41 = yes as falls in range for yes- bank depo, yes-loan
      loan = no for id 40 because balance above the mean
      
      drop id 38 because duration eroneous and likely same person as ID 40, as same balance
      
Outliers after

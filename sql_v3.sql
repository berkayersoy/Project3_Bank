USE project3_bank;

DROP TABLE successful_bids;
#creating a successful_bids table to analyze successful campaigns
CREATE TABLE successful_bids AS
	SELECT * FROM csv_export4
	WHERE poutcome="success";
    
SELECT AVG(balance) FROM successful_bids;

#average phone call duration of successful bids
SELECT AVG(duration) FROM successful_bids
ORDER BY balance DESC;

#mean number of contacts made for successful bids
SELECT AVG(campaign) FROM successful_bids
ORDER BY balance DESC;

#mean balance from successful_bids
SELECT AVG(balance) FROM successful_bids;

DROP TABLE potential_customers;
#analyzing potential customers to call
CREATE TABLE potential_customers AS
	SELECT * FROM csv_export4
	WHERE balance>(SELECT AVG(balance) FROM successful_bids) 
	AND `default`!="yes";
    
SELECT * FROM potential_customers;

DROP TABLE max_number_of_calls;
#finding max number of calls
CREATE TABLE max_number_of_calls AS
	SELECT campaign, poutcome FROM successful_bids
	WHERE campaign < (SELECT AVG(campaign)+(STDDEV(campaign)*3) FROM successful_bids)
	ORDER BY campaign DESC
	LIMIT 1;

DROP TABLE unsuccessful_bids;

CREATE TABLE unsuccessful_bids AS
	SELECT * FROM csv_export4
	WHERE poutcome="failure";
    
#mean account balance of unsuccessful bids
SELECT AVG(balance) FROM unsuccessful_bids;

CREATE TABLE low_priority_table AS
	SELECT * FROM csv_export4
	WHERE poutcome!="success" AND balance<(SELECT AVG(balance) FROM unsuccessful_bids);
    
SELECT * FROM low_priority_table;
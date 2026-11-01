## A. Flow of functions for Data request (Usual Chronological Order)
01. Data Requesting API function (API Exposing function), (Backend End-point function which Frontend has access. CORS permission needed) => 
02. Data Retrieving function (Fetching data using stack framework from data source) =>
03. Data Mapping/Binding/Assigning function (Data source to Programming friendly), (Binding fetched data keys to Programming Variables keys) => 
04. Optional functions / Helper functions
    - Data Filtering function (Optional process to filter out desired data) =>
    - Formula function (Optional process to calculate desired data) =>
    - Formatting function (Optional process to formatt string, numbers, dates) =>
05. API Success Hit (API successfully traverse data to Frontend, not a type of function but a sort of flag of process success) =>
06. Represents data to Frontend


## B. Flow of functions for Data Saving (Usual Chronological Order)
01. Data Collecting/Gathering function (Grabbing data from frontend UI Elements like DOM & Storing it into an matching object/Array) =>
02. Data Posting function (API Exposing function), (Frontend posting data to Backend's API endpoint. CORS permission needed) =>
(in most of cases Collecting data & Posting into Backend happens in same function)
03. Backend API startpoint (Here where Frontend API lands) =>
04. Data Mapping/Binding/Assigning function (Programming to Data source), (Binding Programming Variables keys to Data source keys) => 
    - Transaction scope funtion (optional but useful when Frontend data nedd to map against multiple table/data sources) =>
05. Data Saving function (Saving data using stack framework to data source)
06. API Success Hit (API successfully traverse data & saved to Datasource, not a type of function but a sort of flag of process success)
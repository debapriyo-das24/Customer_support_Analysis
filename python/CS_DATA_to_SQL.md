```python
import kagglehub

# Download latest version
path = kagglehub.dataset_download("suraj520/customer-support-ticket-dataset")

print("Path to dataset files:", path)
```

    Downloading to C:\Users\deb11\.cache\kagglehub\datasets\suraj520\customer-support-ticket-dataset\1.archive...
    

    100%|██████████| 828k/828k [00:01<00:00, 631kB/s]

    Extracting files...
    Path to dataset files: C:\Users\deb11\.cache\kagglehub\datasets\suraj520\customer-support-ticket-dataset\versions\1
    

    
    


```python
import pandas as pd

df = pd.read_csv(r"C:\Users\deb11\.cache\kagglehub\datasets\suraj520\customer-support-ticket-dataset\versions\1\customer_support_tickets.csv")

print(df.head())
```

       Ticket ID        Customer Name              Customer Email  Customer Age  \
    0          1        Marisa Obrien  carrollallison@example.com            32   
    1          2         Jessica Rios    clarkeashley@example.com            42   
    2          3  Christopher Robbins   gonzalestracy@example.com            48   
    3          4     Christina Dillon    bradleyolson@example.org            27   
    4          5    Alexander Carroll     bradleymark@example.com            67   
    
      Customer Gender Product Purchased Date of Purchase      Ticket Type  \
    0           Other        GoPro Hero       2021-03-22  Technical issue   
    1          Female       LG Smart TV       2021-05-22  Technical issue   
    2           Other          Dell XPS       2020-07-14  Technical issue   
    3          Female  Microsoft Office       2020-11-13  Billing inquiry   
    4          Female  Autodesk AutoCAD       2020-02-04  Billing inquiry   
    
                 Ticket Subject  \
    0             Product setup   
    1  Peripheral compatibility   
    2           Network problem   
    3            Account access   
    4                 Data loss   
    
                                      Ticket Description  \
    0  I'm having an issue with the {product_purchase...   
    1  I'm having an issue with the {product_purchase...   
    2  I'm facing a problem with my {product_purchase...   
    3  I'm having an issue with the {product_purchase...   
    4  I'm having an issue with the {product_purchase...   
    
                   Ticket Status                                     Resolution  \
    0  Pending Customer Response                                            NaN   
    1  Pending Customer Response                                            NaN   
    2                     Closed   Case maybe show recently my computer follow.   
    3                     Closed  Try capital clearly never color toward story.   
    4                     Closed                    West decision evidence bit.   
    
      Ticket Priority Ticket Channel  First Response Time   Time to Resolution  \
    0        Critical   Social media  2023-06-01 12:15:36                  NaN   
    1        Critical           Chat  2023-06-01 16:45:38                  NaN   
    2             Low   Social media  2023-06-01 11:14:38  2023-06-01 18:05:38   
    3             Low   Social media  2023-06-01 07:29:40  2023-06-01 01:57:40   
    4             Low          Email  2023-06-01 00:12:42  2023-06-01 19:53:42   
    
       Customer Satisfaction Rating  
    0                           NaN  
    1                           NaN  
    2                           3.0  
    3                           3.0  
    4                           1.0  
    


```python
print(df.head())
```

       Ticket ID        Customer Name              Customer Email  \
    0          1        Marisa Obrien  carrollallison@example.com   
    1          2         Jessica Rios    clarkeashley@example.com   
    2          3  Christopher Robbins   gonzalestracy@example.com   
    3          4     Christina Dillon    bradleyolson@example.org   
    4          5    Alexander Carroll     bradleymark@example.com   
    
      Masked_Cust_Name           Masked_Cust_Email  Customer Age       Age_group  \
    0        M## O####  ca************@example.com            32     Young Adult   
    1        J## R####    cl**********@example.com            42           Adult   
    2        C## R####   go***********@example.com            48           Adult   
    3        C## D####    br**********@example.org            27     Young Adult   
    4        A## C####     br*********@example.com            67  Senior Citizen   
    
      Customer Gender Product Purchased     Product_Category  ...  \
    0           Other        GoPro Hero              Cameras  ...   
    1          Female       LG Smart TV                  TVs  ...   
    2           Other          Dell XPS  Laptops & Computers  ...   
    3          Female  Microsoft Office             Software  ...   
    4          Female  Autodesk AutoCAD             Software  ...   
    
                                      Ticket Description  \
    0  I'm having an issue with the {product_purchase...   
    1  I'm having an issue with the {product_purchase...   
    2  I'm facing a problem with my {product_purchase...   
    3  I'm having an issue with the {product_purchase...   
    4  I'm having an issue with the {product_purchase...   
    
                   Ticket Status                                     Resolution  \
    0  Pending Customer Response                                            NaN   
    1  Pending Customer Response                                            NaN   
    2                     Closed   Case maybe show recently my computer follow.   
    3                     Closed  Try capital clearly never color toward story.   
    4                     Closed                    West decision evidence bit.   
    
                                Validated_resolution Ticket Priority  \
    0                                  Not available        Critical   
    1                                  Not available        Critical   
    2   Case maybe show recently my computer follow.             Low   
    3  Try capital clearly never color toward story.             Low   
    4                    West decision evidence bit.             Low   
    
      Ticket Channel First Response Time  Time to Resolution  \
    0   Social media 2023-06-01 12:15:36                 NaT   
    1           Chat 2023-06-01 16:45:38                 NaT   
    2   Social media 2023-06-01 11:14:38 2023-06-01 18:05:38   
    3   Social media 2023-06-01 07:29:40 2023-06-01 01:57:40   
    4          Email 2023-06-01 00:12:42 2023-06-01 19:53:42   
    
      Customer Satisfaction Rating Validated_CSAT  
    0                          NaN    No Response  
    1                          NaN    No Response  
    2                          3.0              3  
    3                          3.0              3  
    4                          1.0              1  
    
    [5 rows x 23 columns]
    


```python
import pandas as pd

df = pd.read_csv(r"C:\Users\deb11\Downloads\Validated_Customer_Support - Updated_Data.csv")

print(df.head())
```

       Ticket ID Masked_Cust_Name           Masked_Cust_Email  Customer Age  \
    0          1        M## O####  ca************@example.com            32   
    1          2        J## R####    cl**********@example.com            42   
    2          3        C## R####   go***********@example.com            48   
    3          4        C## D####    br**********@example.org            27   
    4          5        A## C####     br*********@example.com            67   
    
            Age_group Customer Gender Product Purchased     Product_Category  \
    0     Young Adult           Other        GoPro Hero              Cameras   
    1           Adult          Female       LG Smart TV                  TVs   
    2           Adult           Other          Dell XPS  Laptops & Computers   
    3     Young Adult          Female  Microsoft Office             Software   
    4  Senior Citizen          Female  Autodesk AutoCAD             Software   
    
      Date of Purchase      Ticket Type            Ticket Subject  \
    0       2021-03-22  Technical issue             Product setup   
    1       2021-05-22  Technical issue  Peripheral compatibility   
    2       2020-07-14  Technical issue           Network problem   
    3       2020-11-13  Billing inquiry            Account access   
    4       2020-02-04  Billing inquiry                 Data loss   
    
                                      Ticket Description  \
    0  I'm having an issue with the {product_purchase...   
    1  I'm having an issue with the {product_purchase...   
    2  I'm facing a problem with my {product_purchase...   
    3  I'm having an issue with the {product_purchase...   
    4  I'm having an issue with the {product_purchase...   
    
                   Ticket Status                           Validated_resolution  \
    0  Pending Customer Response                                  Not available   
    1  Pending Customer Response                                  Not available   
    2                     Closed   Case maybe show recently my computer follow.   
    3                     Closed  Try capital clearly never color toward story.   
    4                     Closed                    West decision evidence bit.   
    
      Ticket Priority Ticket Channel Validated_response_time  \
    0        Critical   Social media     2023-06-01 12:15:36   
    1        Critical           Chat     2023-06-01 16:45:38   
    2             Low   Social media     2023-06-01 11:14:38   
    3             Low   Social media      2023-06-01 7:29:40   
    4             Low          Email      2023-06-01 0:12:42   
    
      Valoidated_time_to_res Validated_CSAT  
    0            No Response    No Response  
    1            No Response    No Response  
    2    2023-06-01 18:05:38              3  
    3     2023-06-01 1:57:40              3  
    4    2023-06-01 19:53:42              1  
    


```python
df.isnull().sum()
```




    Ticket ID                  0
    Masked_Cust_Name           0
    Masked_Cust_Email          0
    Customer Age               0
    Age_group                  0
    Customer Gender            0
    Product Purchased          0
    Product_Category           0
    Date of Purchase           0
    Ticket Type                0
    Ticket Subject             0
    Ticket Description         0
    Ticket Status              0
    Validated_resolution       0
    Ticket Priority            0
    Ticket Channel             0
    Validated_response_time    0
    Valoidated_time_to_res     0
    Validated_CSAT             0
    dtype: int64




```python
from sqlalchemy import create_engine

USER = "root"
PASSWORD = "1234"
HOST = "localhost"
DATABASE = "startersql"

#connecting and uploading
engine = create_engine(f"mysql+pymysql://{USER}:{1234}@{r"localhost"}:3306/{r"startersql"}")
df.to_sql(name='validated_cs_data',con=engine,if_exists='replace', index=False)

print("Successfully Sent to MySQL!")
```

    Successfully Sent to MySQL!
    


```python
pip install gspread google-auth
```

    Collecting gspreadNote: you may need to restart the kernel to use updated packages.
    
      Downloading gspread-6.2.1-py3-none-any.whl.metadata (11 kB)
    Collecting google-auth
      Downloading google_auth-2.58.0-py3-none-any.whl.metadata (6.0 kB)
    Collecting google-auth-oauthlib>=0.4.1 (from gspread)
      Downloading google_auth_oauthlib-1.4.1-py3-none-any.whl.metadata (2.6 kB)
    Requirement already satisfied: pyasn1-modules>=0.2.1 in .\anaconda3\Lib\site-packages (from google-auth) (0.2.8)
    Requirement already satisfied: cryptography>=38.0.3 in .\anaconda3\Lib\site-packages (from google-auth) (45.0.7)
    Requirement already satisfied: cffi>=1.14 in .\anaconda3\Lib\site-packages (from cryptography>=38.0.3->google-auth) (1.17.1)
    Requirement already satisfied: pycparser in .\anaconda3\Lib\site-packages (from cffi>=1.14->cryptography>=38.0.3->google-auth) (3.0)
    Collecting requests-oauthlib>=0.7.0 (from google-auth-oauthlib>=0.4.1->gspread)
      Downloading requests_oauthlib-2.0.0-py2.py3-none-any.whl.metadata (11 kB)
    Requirement already satisfied: pyasn1<0.5.0,>=0.4.6 in .\anaconda3\Lib\site-packages (from pyasn1-modules>=0.2.1->google-auth) (0.4.8)
    Collecting oauthlib>=3.0.0 (from requests-oauthlib>=0.7.0->google-auth-oauthlib>=0.4.1->gspread)
      Downloading oauthlib-3.3.1-py3-none-any.whl.metadata (7.9 kB)
    Requirement already satisfied: requests>=2.0.0 in .\anaconda3\Lib\site-packages (from requests-oauthlib>=0.7.0->google-auth-oauthlib>=0.4.1->gspread) (2.34.2)
    Requirement already satisfied: charset_normalizer<4,>=2 in .\anaconda3\Lib\site-packages (from requests>=2.0.0->requests-oauthlib>=0.7.0->google-auth-oauthlib>=0.4.1->gspread) (3.4.7)
    Requirement already satisfied: idna<4,>=2.5 in .\anaconda3\Lib\site-packages (from requests>=2.0.0->requests-oauthlib>=0.7.0->google-auth-oauthlib>=0.4.1->gspread) (3.18)
    Requirement already satisfied: urllib3<3,>=1.26 in .\anaconda3\Lib\site-packages (from requests>=2.0.0->requests-oauthlib>=0.7.0->google-auth-oauthlib>=0.4.1->gspread) (2.7.0)
    Requirement already satisfied: certifi>=2023.5.7 in .\anaconda3\Lib\site-packages (from requests>=2.0.0->requests-oauthlib>=0.7.0->google-auth-oauthlib>=0.4.1->gspread) (2026.7.22)
    Downloading gspread-6.2.1-py3-none-any.whl (59 kB)
    Downloading google_auth-2.58.0-py3-none-any.whl (262 kB)
    Downloading google_auth_oauthlib-1.4.1-py3-none-any.whl (19 kB)
    Downloading requests_oauthlib-2.0.0-py2.py3-none-any.whl (24 kB)
    Downloading oauthlib-3.3.1-py3-none-any.whl (160 kB)
    Installing collected packages: oauthlib, requests-oauthlib, google-auth, google-auth-oauthlib, gspread
    
       ---------------------------------------- 0/5 [oauthlib]
       -------- ------------------------------- 1/5 [requests-oauthlib]
       ---------------- ----------------------- 2/5 [google-auth]
       ---------------- ----------------------- 2/5 [google-auth]
       ------------------------ --------------- 3/5 [google-auth-oauthlib]
       ---------------------------------------- 5/5 [gspread]
    
    Successfully installed google-auth-2.58.0 google-auth-oauthlib-1.4.1 gspread-6.2.1 oauthlib-3.3.1 requests-oauthlib-2.0.0
    


```python
import gspread
from google.oauth2.service_account import Credentials
```


```python
SCOPES = [
    "https://www.googleapis.com/auth/spreadsheets"
]

credentials = Credentials.from_service_account_file(
    r"C:\Users\deb11\Github_project\elemental-shine-504617-h0-815cce97a787.json",
    scopes=SCOPES
)

gc = gspread.authorize(credentials)

print("Google Sheets authentication successful")
```

    Google Sheets authentication successful
    


```python
spreadsheet = gc.open_by_key("1WsdMthMwW8rGoF_NqK12T-semJb_wwI5cI7DXaiqMSw")
print(spreadsheet.title)
```

    Validated_Customer_Support
    


```python
from sqlalchemy import create_engine

engine = create_engine(
    "mysql+pymysql://root:1234@localhost:3306/startersql"
)

print("MySQL connected")
```

    MySQL connected
    


```python
query = """
SELECT
    Product_Category,
    COUNT(*) AS tickets,
    ROUND(
        AVG(NULLIF(Validated_CSAT, 'No Response')),
        2
    ) AS avg_csat
FROM validated_cs_data
GROUP BY Product_Category
ORDER BY tickets DESC;
"""

product_results = pd.read_sql(
    query,
    engine
)

product_results
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Product_Category</th>
      <th>tickets</th>
      <th>avg_csat</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Gaming Consoles &amp; Accessories</td>
      <td>1158</td>
      <td>2.96</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Laptops &amp; Computers</td>
      <td>1131</td>
      <td>3.02</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Cameras</td>
      <td>1061</td>
      <td>3.03</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Smart Home</td>
      <td>865</td>
      <td>3.04</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Smartphones</td>
      <td>826</td>
      <td>3.00</td>
    </tr>
    <tr>
      <th>5</th>
      <td>Audio</td>
      <td>788</td>
      <td>2.85</td>
    </tr>
    <tr>
      <th>6</th>
      <td>TVs</td>
      <td>642</td>
      <td>2.95</td>
    </tr>
    <tr>
      <th>7</th>
      <td>Home Appliances</td>
      <td>622</td>
      <td>3.08</td>
    </tr>
    <tr>
      <th>8</th>
      <td>Wearables</td>
      <td>601</td>
      <td>2.89</td>
    </tr>
    <tr>
      <th>9</th>
      <td>Software</td>
      <td>577</td>
      <td>3.11</td>
    </tr>
    <tr>
      <th>10</th>
      <td>E-readers</td>
      <td>198</td>
      <td>2.89</td>
    </tr>
  </tbody>
</table>
</div>




```python
worksheet = spreadsheet.worksheet(
    "SQL_Findings"
)
```


```python
values = [
    product_results.columns.tolist()
] + product_results.fillna("").values.tolist()
```


```python
worksheet.update(
    values
)
```




    {'spreadsheetId': '1WsdMthMwW8rGoF_NqK12T-semJb_wwI5cI7DXaiqMSw',
     'updatedRange': 'SQL_Findings!A1:C12',
     'updatedRows': 12,
     'updatedColumns': 3,
     'updatedCells': 36}




```python
query = """
SELECT 
    COUNT(*) AS total_tickets,
    
    SUM(CASE WHEN `Ticket Status` = 'Closed' THEN 1 ELSE 0 END) AS closed_tickets,
    
    SUM(CASE WHEN `Ticket Status` <> 'Closed' THEN 1 ELSE 0 END) AS open_pending_tickets,
    
    ROUND(100 * AVG(CASE WHEN `Ticket Status` = 'Closed' THEN 1 ELSE 0 END), 2) AS closure_rate_pct,
    
    ROUND(
        AVG(CASE WHEN `Validated_CSAT` <> 'No Response' THEN CAST(`Validated_CSAT` AS DECIMAL(10,2)) END), 
        2
    ) AS avg_csat,
    
    ROUND(
        100 * SUM(CASE WHEN `Validated_CSAT` <> 'No Response' THEN 1 ELSE 0 END) / COUNT(*), 
        2
    ) AS csat_response_rate_pct,
    
    SUM(CASE WHEN `Ticket Status` <> 'Closed' AND `Ticket Priority` IN ('High', 'Critical') THEN 1 ELSE 0 END) AS high_critical_open_pending
    
FROM validated_cs_data;

"""

KPI_cards = pd.read_sql(
    query,
    engine
)

KPI_cards
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>total_tickets</th>
      <th>closed_tickets</th>
      <th>open_pending_tickets</th>
      <th>closure_rate_pct</th>
      <th>avg_csat</th>
      <th>csat_response_rate_pct</th>
      <th>high_critical_open_pending</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>8469</td>
      <td>2769.0</td>
      <td>5700.0</td>
      <td>32.7</td>
      <td>2.99</td>
      <td>32.7</td>
      <td>2783.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
values = [
    KPI_cards.columns.tolist()
] + KPI_cards.fillna("").values.tolist()
```


```python
worksheet.update(
    values
)
```




    {'spreadsheetId': '1WsdMthMwW8rGoF_NqK12T-semJb_wwI5cI7DXaiqMSw',
     'updatedRange': 'SQL_Findings!A1:G2',
     'updatedRows': 2,
     'updatedColumns': 7,
     'updatedCells': 14}




```python
%pip install google-api-python-client
```

    Collecting google-api-python-client
      Downloading google_api_python_client-2.200.0-py3-none-any.whl.metadata (6.8 kB)
    Collecting httplib2<1.0.0,>=0.19.0 (from google-api-python-client)
      Downloading httplib2-0.32.0-py3-none-any.whl.metadata (2.2 kB)
    Requirement already satisfied: google-auth!=2.24.0,!=2.25.0,<3.0.0,>=1.32.0 in .\anaconda3\Lib\site-packages (from google-api-python-client) (2.58.0)
    Collecting google-auth-httplib2<1.0.0,>=0.2.0 (from google-api-python-client)
      Downloading google_auth_httplib2-0.4.2-py3-none-any.whl.metadata (3.0 kB)
    Collecting google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5 (from google-api-python-client)
      Downloading google_api_core-2.38.0-py3-none-any.whl.metadata (3.2 kB)
    Collecting uritemplate<5,>=3.0.1 (from google-api-python-client)
      Downloading uritemplate-4.2.0-py3-none-any.whl.metadata (2.6 kB)
    Collecting googleapis-common-protos<2.0.0,>=1.69.2 (from google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5->google-api-python-client)
      Downloading googleapis_common_protos-1.75.3-py3-none-any.whl.metadata (8.5 kB)
    Requirement already satisfied: protobuf<8.0.0,>=6.33.5 in .\anaconda3\Lib\site-packages (from google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5->google-api-python-client) (6.33.5)
    Collecting proto-plus<2.0.0,>=1.26.1 (from google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5->google-api-python-client)
      Downloading proto_plus-1.28.4-py3-none-any.whl.metadata (2.2 kB)
    Requirement already satisfied: requests<3.0.0,>=2.33.0 in .\anaconda3\Lib\site-packages (from google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5->google-api-python-client) (2.34.2)
    Collecting opentelemetry-api<2.0.0,>=1.44.0 (from google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5->google-api-python-client)
      Downloading opentelemetry_api-1.44.0-py3-none-any.whl.metadata (1.4 kB)
    Requirement already satisfied: pyasn1-modules>=0.2.1 in .\anaconda3\Lib\site-packages (from google-auth!=2.24.0,!=2.25.0,<3.0.0,>=1.32.0->google-api-python-client) (0.2.8)
    Requirement already satisfied: cryptography>=38.0.3 in .\anaconda3\Lib\site-packages (from google-auth!=2.24.0,!=2.25.0,<3.0.0,>=1.32.0->google-api-python-client) (45.0.7)
    Requirement already satisfied: pyparsing<4,>=3.1 in .\anaconda3\Lib\site-packages (from httplib2<1.0.0,>=0.19.0->google-api-python-client) (3.1.2)
    Requirement already satisfied: typing-extensions>=4.5.0 in .\anaconda3\Lib\site-packages (from opentelemetry-api<2.0.0,>=1.44.0->google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5->google-api-python-client) (4.16.0)
    Requirement already satisfied: charset_normalizer<4,>=2 in .\anaconda3\Lib\site-packages (from requests<3.0.0,>=2.33.0->google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5->google-api-python-client) (3.4.7)
    Requirement already satisfied: idna<4,>=2.5 in .\anaconda3\Lib\site-packages (from requests<3.0.0,>=2.33.0->google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5->google-api-python-client) (3.18)
    Requirement already satisfied: urllib3<3,>=1.26 in .\anaconda3\Lib\site-packages (from requests<3.0.0,>=2.33.0->google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5->google-api-python-client) (2.7.0)
    Requirement already satisfied: certifi>=2023.5.7 in .\anaconda3\Lib\site-packages (from requests<3.0.0,>=2.33.0->google-api-core!=2.0.*,!=2.1.*,!=2.2.*,!=2.3.0,<3.0.0,>=1.31.5->google-api-python-client) (2026.7.22)
    Requirement already satisfied: cffi>=1.14 in .\anaconda3\Lib\site-packages (from cryptography>=38.0.3->google-auth!=2.24.0,!=2.25.0,<3.0.0,>=1.32.0->google-api-python-client) (1.17.1)
    Requirement already satisfied: pycparser in .\anaconda3\Lib\site-packages (from cffi>=1.14->cryptography>=38.0.3->google-auth!=2.24.0,!=2.25.0,<3.0.0,>=1.32.0->google-api-python-client) (3.0)
    Requirement already satisfied: pyasn1<0.5.0,>=0.4.6 in .\anaconda3\Lib\site-packages (from pyasn1-modules>=0.2.1->google-auth!=2.24.0,!=2.25.0,<3.0.0,>=1.32.0->google-api-python-client) (0.4.8)
    Downloading google_api_python_client-2.200.0-py3-none-any.whl (16.1 MB)
       ---------------------------------------- 0.0/16.1 MB ? eta -:--:--
       ------------------------------ --------- 12.3/16.1 MB 64.5 MB/s eta 0:00:01
       ---------------------------------------- 16.1/16.1 MB 46.0 MB/s  0:00:00
    Downloading google_api_core-2.38.0-py3-none-any.whl (187 kB)
    Downloading google_auth_httplib2-0.4.2-py3-none-any.whl (9.5 kB)
    Downloading googleapis_common_protos-1.75.3-py3-none-any.whl (306 kB)
    Downloading httplib2-0.32.0-py3-none-any.whl (93 kB)
    Downloading opentelemetry_api-1.44.0-py3-none-any.whl (60 kB)
    Downloading proto_plus-1.28.4-py3-none-any.whl (50 kB)
    Downloading uritemplate-4.2.0-py3-none-any.whl (11 kB)
    Installing collected packages: uritemplate, proto-plus, opentelemetry-api, httplib2, googleapis-common-protos, google-auth-httplib2, google-api-core, google-api-python-client
    
       ---------- ----------------------------- 2/8 [opentelemetry-api]
       ---------- ----------------------------- 2/8 [opentelemetry-api]
       -------------------- ------------------- 4/8 [googleapis-common-protos]
       -------------------- ------------------- 4/8 [googleapis-common-protos]
       ------------------------- -------------- 5/8 [google-auth-httplib2]
       ------------------------------ --------- 6/8 [google-api-core]
       ----------------------------------- ---- 7/8 [google-api-python-client]
       ----------------------------------- ---- 7/8 [google-api-python-client]
       ----------------------------------- ---- 7/8 [google-api-python-client]
       ----------------------------------- ---- 7/8 [google-api-python-client]
       ----------------------------------- ---- 7/8 [google-api-python-client]
       ----------------------------------- ---- 7/8 [google-api-python-client]
       ----------------------------------- ---- 7/8 [google-api-python-client]
       ---------------------------------------- 8/8 [google-api-python-client]
    
    Successfully installed google-api-core-2.38.0 google-api-python-client-2.200.0 google-auth-httplib2-0.4.2 googleapis-common-protos-1.75.3 httplib2-0.32.0 opentelemetry-api-1.44.0 proto-plus-1.28.4 uritemplate-4.2.0
    Note: you may need to restart the kernel to use updated packages.
    


```python
from sqlalchemy import create_engine

engine = create_engine(
    "mysql+pymysql://root:1234@localhost:3306/startersql"
)

print("MySQL connected")
```

    MySQL connected
    


```python
import pandas as pd
import gspread

from googleapiclient.discovery import build
from google.oauth2.service_account import Credentials


# ============================================================
# 1. GOOGLE SHEETS CONNECTION
# ============================================================

SCOPES = [
    "https://www.googleapis.com/auth/spreadsheets",
    "https://www.googleapis.com/auth/drive"
]

credentials = Credentials.from_service_account_file(
    r"C:\Users\deb11\Github_project\elemental-shine-504617-h0-815cce97a787.json",
    scopes=SCOPES
)

gc = gspread.authorize(credentials)

# Change this to your exact Google Sheet name
spreadsheet = gc.open("Validated_Customer_Support")

print("Connected to Google Sheets")


# ============================================================
# 2. MYSQL CONNECTION
# ============================================================

# Use your existing engine if you already created it.
# Example:
#
# engine = create_engine(
#     "mysql+pymysql://root:1234@localhost:3306/startersql"
# )

print("Using existing MySQL engine")


# ============================================================
# 3. SQL ANALYSIS QUERIES
# ============================================================

queries = {

    "KPI_Snapshot": """
    SELECT
        COUNT(*) AS total_tickets,

        SUM(`Ticket Status` = 'Closed')
            AS closed_tickets,

        SUM(`Ticket Status` <> 'Closed')
            AS open_pending_tickets,

        ROUND(
            100 * AVG(`Ticket Status` = 'Closed'),
            2
        ) AS closure_rate_pct,

        ROUND(
            AVG(
                CASE
                    WHEN `Validated_CSAT` REGEXP '^[1-5]$'
                    THEN CAST(`Validated_CSAT` AS DECIMAL(3,1))
                END
            ),
            2
        ) AS avg_csat,

        ROUND(
            100 *
            SUM(`Validated_CSAT` REGEXP '^[1-5]$')
            / COUNT(*),
            2
        ) AS csat_response_rate_pct,

        SUM(
            `Ticket Status` <> 'Closed'
            AND `Ticket Priority` IN ('High', 'Critical')
        ) AS high_critical_open_pending

    FROM validated_cs_data;
    """,

    "Product_Category": """
    SELECT
        `Product_Category` AS product_category,

        COUNT(*) AS tickets,

        ROUND(
            AVG(
                CASE
                    WHEN `Validated_CSAT` REGEXP '^[1-5]$'
                    THEN CAST(`Validated_CSAT` AS DECIMAL(3,1))
                END
            ),
            2
        ) AS avg_csat,

        ROUND(
            100 *
            SUM(
                CASE
                    WHEN `Validated_CSAT` IN ('1','2')
                    THEN 1
                    ELSE 0
                END
            )
            /
            NULLIF(
                SUM(`Validated_CSAT` REGEXP '^[1-5]$'),
                0
            ),
            2
        ) AS low_csat_pct

    FROM validated_cs_data

    GROUP BY `Product_Category`

    ORDER BY tickets DESC;
    """,

    "Ticket_Type": """
    SELECT
        `Ticket Type` AS ticket_type,

        COUNT(*) AS tickets,

        ROUND(
            AVG(
                CASE
                    WHEN `Validated_CSAT` REGEXP '^[1-5]$'
                    THEN CAST(`Validated_CSAT` AS DECIMAL(3,1))
                END
            ),
            2
        ) AS avg_csat,

        ROUND(
            100 *
            SUM(
                CASE
                    WHEN `Validated_CSAT` IN ('1','2')
                    THEN 1
                    ELSE 0
                END
            )
            /
            NULLIF(
                SUM(`Validated_CSAT` REGEXP '^[1-5]$'),
                0
            ),
            2
        ) AS low_csat_pct

    FROM validated_cs_data

    GROUP BY `Ticket Type`

    ORDER BY low_csat_pct DESC;
    """,

    "Channel": """
    SELECT
        `Ticket Channel` AS channel,

        COUNT(*) AS tickets,

        ROUND(
            AVG(
                CASE
                    WHEN `Validated_CSAT` REGEXP '^[1-5]$'
                    THEN CAST(`Validated_CSAT` AS DECIMAL(3,1))
                END
            ),
            2
        ) AS avg_csat,

        ROUND(
            100 *
            SUM(
                CASE
                    WHEN `Validated_CSAT` IN ('1','2')
                    THEN 1
                    ELSE 0
                END
            )
            /
            NULLIF(
                SUM(`Validated_CSAT` REGEXP '^[1-5]$'),
                0
            ),
            2
        ) AS low_csat_pct

    FROM validated_cs_data

    GROUP BY `Ticket Channel`

    ORDER BY avg_csat ASC;
    """,

    "Priority": """
    SELECT
        `Ticket Priority` AS priority,

        COUNT(*) AS total_tickets,

        SUM(
            `Ticket Status` <> 'Closed'
        ) AS open_pending

    FROM validated_cs_data

    GROUP BY `Ticket Priority`

    ORDER BY
        FIELD(
            `Ticket Priority`,
            'Critical',
            'High',
            'Medium',
            'Low'
        );
    """
}


# ============================================================
# 4. RUN ALL SQL QUERIES
# ============================================================

results = {}

for sheet_name, query in queries.items():

    df_result = pd.read_sql(
        query,
        engine
    )

    results[sheet_name] = df_result

    print(
        f"{sheet_name}: "
        f"{len(df_result)} rows"
    )


# ============================================================
# 5. CREATE / REPLACE RESULT WORKSHEETS
# ============================================================

for sheet_name, df_result in results.items():

    try:
        worksheet = spreadsheet.worksheet(sheet_name)

    except gspread.WorksheetNotFound:

        worksheet = spreadsheet.add_worksheet(
            title=sheet_name,
            rows=100,
            cols=20
        )

    worksheet.clear()

    values = (
        [df_result.columns.tolist()]
        +
        df_result.fillna("").astype(str).values.tolist()
    )

    worksheet.update(
        values,
        "A1"
    )

    print(
        f"Published {sheet_name}"
    )


# ============================================================
# 6. CREATE DASHBOARD SHEET
# ============================================================

try:
    dashboard = spreadsheet.worksheet("Dashboard")

except gspread.WorksheetNotFound:

    dashboard = spreadsheet.add_worksheet(
        title="Dashboard",
        rows=40,
        cols=20
    )


dashboard.clear()


# ============================================================
# 7. DASHBOARD TITLE
# ============================================================

dashboard.update(
    "A1",
    [["CUSTOMER SUCCESS OPERATIONS DASHBOARD"]]
)

dashboard.update(
    "A2",
    [[
        "Customer demand, experience and unresolved-service analysis"
    ]]
)


# ============================================================
# 8. KPI CARDS
# ============================================================

kpi = results["KPI_Snapshot"].iloc[0]

dashboard.update(
    "A4:B9",
    [
        ["Metric", "Value"],

        [
            "Total Tickets",
            int(kpi["total_tickets"])
        ],

        [
            "Closure Rate %",
            float(kpi["closure_rate_pct"])
        ],

        [
            "Average CSAT",
            float(kpi["avg_csat"])
        ],

        [
            "CSAT Response Rate %",
            float(kpi["csat_response_rate_pct"])
        ],

        [
            "High/Critical Open + Pending",
            int(kpi["high_critical_open_pending"])
        ]
    ]
)
```

    Connected to Google Sheets
    Using existing MySQL engine
    KPI_Snapshot: 1 rows
    Product_Category: 11 rows
    Ticket_Type: 5 rows
    Channel: 4 rows
    Priority: 4 rows
    Published KPI_Snapshot
    Published Product_Category
    Published Ticket_Type
    Published Channel
    Published Priority
    

    C:\Users\deb11\AppData\Local\Temp\ipykernel_15308\1423502588.py:315: DeprecationWarning: The order of arguments in worksheet.update() has changed. Please pass values first and range_name secondor used named arguments (range_name=, values=)
      dashboard.update(
    C:\Users\deb11\AppData\Local\Temp\ipykernel_15308\1423502588.py:320: DeprecationWarning: The order of arguments in worksheet.update() has changed. Please pass values first and range_name secondor used named arguments (range_name=, values=)
      dashboard.update(
    C:\Users\deb11\AppData\Local\Temp\ipykernel_15308\1423502588.py:334: DeprecationWarning: The order of arguments in worksheet.update() has changed. Please pass values first and range_name secondor used named arguments (range_name=, values=)
      dashboard.update(
    




    {'spreadsheetId': '1WsdMthMwW8rGoF_NqK12T-semJb_wwI5cI7DXaiqMSw',
     'updatedRange': 'Dashboard!A4:B9',
     'updatedRows': 6,
     'updatedColumns': 2,
     'updatedCells': 12}




```python

```

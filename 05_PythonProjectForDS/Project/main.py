import yfinance as yf
import pandas as pd
import matplotlib_inline
import matplotlib.pyplot as plt
import json

# store ticker info 'AAPL' from yf in object 'apple'
apple = yf.Ticker('AAPL')
# extract info about the stock using info from json file at
# https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-PY0220EN-SkillsNetwork/data/apple.json
with open('Project/Resources/apple.json') as json_file:
    apple_info = json.load(json_file)
# print(apple_info['country'])


# extract the share price of AAPL
apple_share_price_data = apple.history(period='max')

# the index is currently the date column, let's reset it so the index is simply the line number
apple_share_price_data.reset_index(inplace=True)

# plot ticker data
apple_share_price_data.plot(
    x='Date',
    y='Open'
)
plt.show()


# plot AAPL dividends
apple.dividends.plot()
plt.show()


# AMD
amd = yf.Ticker('AMD') # store ticker info as object
with open('Project/Resources/amd.json') as json_file:
    amd_info = json.load(json_file)
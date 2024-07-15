from pycoingecko import CoinGeckoAPI
import pandas as pd

# store CoinGecko API as object to call easier
cg = CoinGeckoAPI()

# store btc data from coin gecko as object
btc_data = cg.get_coin_market_chart_by_id(
    id='bitcoin',
    vs_currency='usd',
    days=30
)

# convert data to df
btc_data = pd.DataFrame(btc_data['prices'],
                        columns = ['TimeStamp','Price'])
# convert timestamp format to 'to_datetime' to make iot easier to read
btc_data['Date'] = pd.to_datetime(btc_data['TimeStamp'], unit = 'ms')

# write data to separate file
with open('btc_data.txt','w') as f:
    f.write(btc_data)
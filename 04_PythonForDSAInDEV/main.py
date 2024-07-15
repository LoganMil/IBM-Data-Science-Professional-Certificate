from pycoingecko import CoinGeckoAPI
import pandas as pd
import plotly.graph_objects as go

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
# create new column from Timestamp data for ease of use
btc_data['Date'] = pd.to_datetime(btc_data['TimeStamp'], unit = 'ms')
# create candlestick chart from btc data
candlestick_data = btc_data.groupby(btc_data.Date.dt.date).agg(
    {'Price': ['min','max','first','last']}
)

# plot candlestick_data
plotlyfig = go.Figure[go.Candlestick(
    x = candlestick_data.index,
    open = candlestick_data['Price']['first'],
    high = candlestick_data['Price']['max'],
    low = candlestick_data['Price']['min'],
    close = candlestick_data['Price']['last'],
)]
plotlyfig.update_layout(
    xaxis_rangeslider_visible = False,
    xaxis_title = 'Date',
    yaxis_title = 'Price (USD $)',
    title = 'Bitcoin Candlestick Chart Over Past 30 Days'
)
go.offline.plot(plotlyfig,
                    filename = './bitcoin_candlestick_graph.html',
                    auto_open = False)

# # write data to separate file
# with open('btc_data.txt','w') as f:
#     f.write(btc_data)
import pandas as pd

# # clean table
# url = 'https://en.wikipedia.org/wiki/List_of_largest_banks'
# tables = pd.read_html(url)
# df = tables[0]
# print(df.head())

# messy table (note: footnotes still present)
URL = 'https://en.wikipedia.org/wiki/List_of_countries_by_GDP_(nominal)'
tables = pd.read_html(URL)
df = tables[2] # the required table will have index 2
print(df.head())
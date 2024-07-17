from bs4 import BeautifulSoup
import requests

url = 'https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DA0321EN-SkillsNetwork/labs/datasets/HTMLColorCodes.html'

data = requests.get(url).text
soup = BeautifulSoup(data,'html5lib')

table = soup.find('table')

for row in table.find_all('tr'):
    cols = row.find_all('td')
    color_name = 
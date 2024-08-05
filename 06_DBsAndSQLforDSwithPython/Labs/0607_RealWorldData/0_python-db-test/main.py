import csv, sqlite3, sql, pandas, os

# print(os.getcwd())
# C:\Users\Hailey\Documents\Logan\Coursera\IBM-Data-Science-Professional-Certificate\06_DBsAndSQLforDSwithPython



try:

    con = sqlite3.connect('Labs/0607_RealWorldData/0_python-db-test/socioeconomic.db')
    cur = con.cursor()

    df = pandas.read_csv('Labs/0607_RealWorldData/jcxq-k9xf.csv')
    df.to_sql('SE_data', con, if_exists='replace', index=False, method='multi')

    query = 'SELECT * FROM SE_data;'
    cur.execute(query)



    print('All of the Chicago Socioeconomic Data')
    result = cur.fetchmany(5)
    for row in result:
        print(result)






    cur.close()

except sqlite3.Error as error:
    print('Error ocurred - ', error)

finally:
    
    if con:
        con.close()
        print('SQLite Connection Closed')

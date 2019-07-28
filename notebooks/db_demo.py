import pymysql.cursors
from memory_profiler import profile

@profile
def db_performance():
    db = pymysql.connect(host="127.0.0.1",    # your host, usually localhost
                     user="root",         # your username
                     passwd="root",       # your password
                     db="eas503db")    # name of the data base
    querystr = 'SELECT count(*) FROM chicago_crime_data'
    cur = db.cursor()
    cur.execute(querystr)

    for row in cur.fetchall():
        cnt = row
    db.close()

db_performance()

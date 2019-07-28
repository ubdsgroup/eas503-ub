import pandas as pd
from memory_profiler import profile

@profile
def pd_performance():
    df = pd.read_csv('chicago_crime_data.csv',header=0)
    cnt = len(df.index)

pd_performance()

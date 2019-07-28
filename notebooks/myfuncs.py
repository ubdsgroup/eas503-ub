s = 'Created by Varun'
print('Initializing the module')
def sum2(x,y):
    return pow(x,2) + pow(y,2)

def sum3(x,y):
    return pow(x,3) + pow(y,3)

if __name__ == '__main__':
    assert sum2(2,2) == 8
    print('Testing is fine')

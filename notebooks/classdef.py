# this class has not __init__ function
class myclass:
    # we define a global field 
    classtype='My Class'
    def mymethod(self):
        print("this is a method")
        self.a = 'g'
        #print("This is "+self.classtype) # note that we are explicitly referencing the field of the class
        
    def mymethod2(self):
        print("This is"+self.classtype)
        print(self.a)

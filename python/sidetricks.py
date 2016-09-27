import os
import __main__

print('This file:', os.path.realpath(__file__))
print('Main file:', os.path.realpath(__main__.__file__))
print('Main directory:', os.path.dirname(os.path.realpath(__main__.__file__)))

def callstuff():
    print('In callstuff this file:', os.path.realpath(__file__))
    print('In callstuff main file:', os.path.realpath(__main__.__file__))
    print('In callstuff main directory:', os.path.dirname(os.path.realpath(__main__.__file__)))
    

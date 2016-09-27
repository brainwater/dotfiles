import os

# get the directory of this script
print('This directory:', os.path.dirname(os.path.realpath(__file__)))

# Only run if directly called, don't run if imported
if __name__ == '__main__':
    print('This script was called directly and is main')

# Call other
print('Importing sidetricks')
import sidetricks

print('Calling stuff')
sidetricks.callstuff()


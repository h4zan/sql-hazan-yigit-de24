from pathlib import Path
#print(Path(__file__))
#print(Path(__file__).parent)
#print(Path(__file__).parent / 'data')

# __file__ - dunder file
# absolute path to constant.py
# /"data" - concatenate with "data"
# operator overloading and polymorphism 

DATA_PATH = Path(__file__).parent / 'data'
DATABASE_PATH =Path(__file__).parent /'goteborg_stad.db'


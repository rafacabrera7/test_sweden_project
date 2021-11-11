import sys
sys.path.append('../Database/')
from dbSQL import *
from script_rafa import *

text = "https://arbetsformedlingen.se/platsbanken/annonser?page=1&p=5:tPox_ie4_X9X&l=2:CifL_Rzy_Mku"
x = scrape(text, "Stockholms län", "Hotell, restaurang, storhushåll", "Restaurant and kitchen assistants etc.")
print(x)

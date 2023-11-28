import geopandas as gpd
import geoplot as gplt
import matplotlib.pyplot as plt

cities = gpd.read_file(gplt.datasets.get_path('usa_cities'))
gplt.pointplot(cities)
plt.savefig('usa_cities.png')
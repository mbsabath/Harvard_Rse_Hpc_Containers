import geopandas as gpd
import geoplot as gplt
import geoplot.crs as gcrs
import matplotlib.pyplot as plt
import sys

if __name__ == "__main__":

    if len(sys.argv) != 2:
        outname = "custom_example.png"
    else:
        outname = sys.argv[1]

    dc_roads = gpd.read_file(gplt.datasets.get_path('dc_roads'))

    gplt.sankey(
        dc_roads, projection=gcrs.AlbersEqualArea(),
        scale='aadt', limits=(0.1, 10), color='black'
    )

    plt.title("Streets in Washington DC by Average Daily Traffic, 2015")
    plt.savefig(f"{outname}")
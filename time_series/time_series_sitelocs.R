# packages
pacman::p_load(leaflet,dplyr)

# load data. can also be generated from google api. 
site_names <- c("Kisumu","Lake Jipe","Kinango")
kisumu <- c(-0.0917,34.7680)
lake_jipe <- c(-3.6019,37.7557)
kinango <- c(-4.1393,39.3180)
latlon <- t(data.frame(kisumu,lake_jipe,kinango))
colnames(latlon) <- c("lat", "lng") # need to be named this
latlon


# build map ---------------------------------------------------------------
### default maps
require(leaflet)
map <- leaflet() # initiate the leaflet map object
map <- addTiles(map) # add the actual map tiles to the leaflet object

names(providers) # types of base maps available
# some good custom layers
# 37-48, 97-103, 
# provider_type <- names(providers)[37]
provider_type <- "CartoDB.Positron"# set the above input as the custom base
col_site <- "red" # colour of site marker
radius <- 10 # size of site marker
zoom <- 6 # zoom level
opac <- 1 # transparency of map elements
weight <- 2 # width of poly lines

map <- addMarkers(map, 
                  lng = latlon[,"lng"],
                  lat = latlon[,"lat"],
                  data=latlon)

# add custom map bases 
map <- addProviderTiles(map, provider_type,
                        options = providerTileOptions(opacity = opac) # add opacity to country lines
)
# plot
map

---
layout: page
title: 30 Day Map Challenge  
permalink: /30daymapchallenge/
---
<a id="top"></a>

******      

<!-- ![](.png)   -->
  
<!-- ******   -->

<br>  

What's the [#30DayMapChallenge](https://github.com/tjukanovt/30DayMapChallenge)? It's an annual mapping challenge for the month of November where anyone can partake by posting a creation in the spatial world. Here's the official tag taken from the website.    

> A daily mapping/cartography/data visualization challenge aimed at the spatial community  

The rules are pretty simple: create a map or spatial-related output using any means, as long as it's your own work and that you credit data sources. As I mostly use `R`, this is my bread and butter for this challenge. 

This year I'm challenging myself by using a new tool, software, design, or data source for each entry. I just have to learn something new each time, rather than recycle familiar tools.  Creating 30 new maps in 30 days is tough, so I think half of this is a decent target.     

    
![](https://raw.githubusercontent.com/tjukanovt/30DayMapChallenge/master/images/map_challenge_themes_2020.jpg)  

<br>  
<a id="day1"></a>  
[](#day1)  
# Day 1: Points          

### Mapping my favourite coffee places around the world    

An interactive map of my favourite coffee spots around the world (so far) using Mapbox and `mapdeck` in `R`.     

Part of a larger project where I'm mapping my favourite food places around the world to create a centralised repository so I can more easily address the following conversation:      

> Friend: 'Do you know any good _INSERT FOOD_ places in _INSERT CITY_?'          
> Me: 'Sure thing, I collated all my favourite places and put it all in this site. Enjoy.'                  

Not an exhaustive list of places and updated regularly as I find them. The total list of places for the overall project is close to 100 spanning different categories and the code is automated to pull the data with new updates.

### Process    
* Data were georeferenced from mobile location data using Open Street Map   
* Mapped with `mapdeck` in `R`  
* Map design from Mapbox Studio                         

### [Click for full map](https://darwinanddavis.github.io/worldmaps/30daymap2020/day1)        
  
![coffee](30daymap2020/day1_.jpg)   

### Tools  

R  
Mapbox        
```{r}    
pacman::p_load(here,sf,RColorBrewer,dplyr,ggmap,sp,maptools,scales,rgdal,ggplot2,jsonlite,readr,devtools,colorspace,mapdata,ggsn,mapview,mapproj,ggthemes,reshape2,grid,rnaturalearth,rnaturalearthdata,ggtext,purrr)          
```  
 

### Links      
[`R` code](https://github.com/darwinanddavis/worldmaps/tree/gh-pages/docs/30daymap2020)        

******  


<br>  
<a id="day2"></a>    
[](#day2)  
# Day 2: Lines      

### Roadtrippin' the US     

My parents visited the US/me when I was living in ATL. They roadtripped the south, starting in Austin. I met them in Memphis, then drove to ATL. This map is using geolocation data to track their pathway across the US with `R` and Mapbox.        

<!-- ### Process  
* Data were georeferenced from mobile location data using Open Street Map  
* Pathways were mapped from KML data        
* Polygon data were retrieved from `maps` and `rnaturalearth` in `R`     
* Mapped with `ggplot` in `R`         -->

<br> 

![usa](30daymap2020/day2.png)   

### Tools  

R  
Mapbox        
```{r}  
pacman::p_load(here,sf,RColorBrewer,dplyr,ggmap,sp,maptools,scales,rgdal,ggplot2,jsonlite,readr,devtools,colorspace,mapdata,ggsn,mapview,mapproj,ggthemes,reshape2,grid,rnaturalearth,rnaturalearthdata,ggtext,purrr)          
```  
  

******  

<!-- <br>
# Day 3: Polygons

******   -->

<br>
<a id="day4"></a>  
[](#day4)  
# Day 4: Hexagons

### Mapping my Lyft ride activity over two years    

Using geolocation data for my Lyft rides as a passenger to build an interactive map that shows my Lyft activity, including origin pickup and destination dropoff points. The data covers the USA.  

These data are really cool, so I just wanted to make use of them. Hexagons are good for visualising frequency and mobility spatial data. My data here ended up being too coarse (obviously I didn't take enough Lyft rides) to leverage this, but it tells a story about where my ride activity is weighted. There is also a time component, which I'll definitely use for another analysis.                 

### Notes   
* Data were obtained from my Lyft ride report.    
* Data were first georeferenced to get latlons.     
* Zoom out to see the cities where I used Lyft to get around. Cities with labels contain data, sometimes only a few points. 
* Note the legend in the below images in case the legend in the link is chopped off.            

### Limitations  
* Hexagons are good for large scale coarse and clustered data, like heatmaps. The data here are too sparse to make full use of this.  
* There is a higher density of destination sites because I primarily used Lyft to get home, which is concentrated on one latlon point. 
* Georeferencing the data didn't find all locations, so some points are missing.            

### [Click for full map](https://darwinanddavis.github.io/worldmaps/30daymap2020/day4)      

Atlanta, USA (where I lived during this time)      
![day4_1](30daymap2020/day4_1.jpg) 
<br>

Washington DC, USA     
![day4_1](30daymap2020/day4_2.jpg) 
<br>  

St Louis, USA  
![day4_1](30daymap2020/day4_3.jpg) 
<br>  

Chicago, USA  
![day4_1](30daymap2020/day4_4.jpg) 
<br>  


### Tools     
  
R    
Mapbox           
```{r}  
pacman::p_load(mapdeck,readr,ggmap,dplyr,sf,sfheaders,data.table,tigris,sp,maps,colorspace)  
```  
              
### Links      
[`R` code](https://github.com/darwinanddavis/worldmaps/tree/gh-pages/docs/30daymap2020)    

******  

<br>
<a id="day6"></a>  
[](#day6)  
# Day 6: Red  

### Cinnamon squirrel locations in NYC Central Park  

Squirrels! The NYC Open Data Squirrel Census on squirrel sightings. I've seen these data used many times and I hadn't tried them yet. There are detailed behaviour data too, but location data are fine for this exercise.       

The fur colour is defined as cinnamon. I'm no squirrel expert, but I've seen these squirrels in person/in squirrel and they look pretty red to me. There are probably species differences between the cinnamon and red varieties. I don't even like cinnamon.  

### [Click for full map](https://darwinanddavis.github.io/worldmaps/30daymap2020/day6)      
  
![day6](30daymap2020/day6.png) 
<br>
  
### Tools     
  
R             
Mapbox    
```{r}  
pacman::p_load(here,mapdeck,dplyr,purrr,readr)    
```    
 
### Links      
[`R` code](https://github.com/darwinanddavis/worldmaps/tree/gh-pages/docs/30daymap2020)  
[OpenData NYC squirrel census](https://data.cityofnewyork.us/Environment/2018-Central-Park-Squirrel-Census-Squirrel-Data/vfnx-vebw)       

******  

<br>
<a id="day8"></a>  
[](#day8)  
# Day 8: Yellow  

### Australia's global honey export trade       

Mapping Australia's honey exports from some publicly available trade data for 2017. Australia is in the top five major exporters for honey.  

The data go as far back as the 1960s. However, a time series component seemed like overkill for this particular exercise.             

### [Click for full map](https://darwinanddavis.github.io/worldmaps/30daymap2020/day8)      
  
![day8](30daymap2020/day8.jpg)   
<br>
  
### Tools     
  
R    
Leaflet                 
```{r}    
pacman::p_load(here,dplyr,rworldmap,leaflet,readr,rgeos,purrr,stringr,ggthemes,showtext,geosphere,htmlwidgets)
```  

### Links      
[`R` code](https://github.com/darwinanddavis/worldmaps/tree/gh-pages/docs/30daymap2020)      
[BACI International Trade Database](https://legacy.oec.world/en/resources/data/)         

******  


<br>
<a id="day9"></a>  
[](#day9)  
# Day 9: Monochrome   

### Exploring the Appalachian Trail    

Exploring digital elevation models (DEM) of the Appalachian Trail, USA, with the parts along the range where I've visited for either camping or hiking during 2018–2020.    

This was more of a sandbox session in colour palettes and rasters to bring out some of the super intricate detail of terrain models, as well as improving my text and label positioning in `R`. Thanks, `ggtext`.          
  
![day9](30daymap2020/day9.png)           
  
### Tools     
  
R             
```{r}    
pacman::p_load(dplyr,readr,rvest,xml2,magrittr,ggplot2,stringr,ggthemes,ggnetwork,elevatr,raster,colorspace,ggtext,ggsn,ggspatial)
```  
    
### Links            
[`R` code](https://github.com/darwinanddavis/worldmaps/tree/gh-pages/docs/30daymap2020)        

### Data    
Terrain raster 3DEP data courtesy of the U.S. Geological Survey      
Terrain tiles obtained from [Amazon Web Services](https://registry.opendata.aws/terrain-tiles/)    

<!-- <br>
Day 5: Blue  

******  

<br>
Day 6: Red  

******  

<br>
Day 7: Green    

******  


<br>
Day 8: Yellow  

******  

<br>
Day 9: Monochrome  

******  

<br>
Day 10: Grid  

******  

<br>
Day 11: 3D  

******  

<br>
Day 12: Map not made with GIS software  

******  

<br>
Day 13: Raster  

******  

<br>
Day 14: Climate change  

******  

<br>
Day 15: Connections  

******  

<br>
Day 16: Island(s)  

******  

<br>
Day 17: Historical map  

******  

<br>
Day 18: Landuse  

******  

<br>
Day 19: NULL  

******  

<br>
Day 20: Population  

******  

<br> 
Day 21: Water  

******  

<br>
Day 22: Movement  

******  

<br>
Day 23: Boundaries  

******  

<br>
Day 24: Elevation  

******  

<br>
Day 25: COVID-19  

******  

<br>
Day 26: Map with a new tool  


******  

<br>
Day 27: Big or small data  

******  

<br>
Day 28: Non-geographic map  

******  

<br>
Day 29: Globe  

******  

<br>
Day 30: A map   -->

<br>
<br> 

[Back to top](#top)|[Home page](./index.md)


---
layout: page
title: Infographics  
permalink: /infographics/
---
<a id="top"></a>

******    

![](infographics/header.jpg)    

<br>
## My First Year: Exploring daily life of a 1-year-old using [Babytracker](https://play.google.com/store/apps/details?id=com.amila.parenting&hl=en_AU&gl=US) app activity data (client project) 

### People      

Matt Malishev           

### Tasks    

Daily life for the first year of a 1-year-old using client data from the [Babytracker](https://play.google.com/store/apps/details?id=com.amila.parenting&hl=en_AU&gl=US) app. Data covers activity time, sleeping, feeding and meal type, breast/bottle feeding, bath/play time, pee/poo activity, body temperature and medicine intake measurements, and growth over time. Client info within infographic is masked.       

### [View hi-res infographic](https://github.com/darwinanddavis/infographics/blob/master/myfirstyear/img/myfirstyear.pdf)         

<center>
	<img href="infographics/baby1.png" width="50%" height="100%" >
</center>  
<br>

<br>

![](infographics/baby2.png)      
<br>

![](infographics/baby3.png)      
<br>

![](infographics/baby4.png)       
<br>  

******    

<br>
## Dissecting Tokyo 2020 Olympics medal tally data by country and medal count per event          

### People    

Matt Malishev         

### Tasks  

* Webscrape live medal tally data from the Tokyo 2020 Olympics site      
* Wrangle and analyse the data to create digestible datasets and generate data viz        
* Build an infographic using the data/plots         

This project uses webscraping, data analysis/viz, and plotting tools in `R` to access, wrangle, analyse, and plot Tokyo Olympics 2020 medal tally data to generate the graphics used in the below infographic.      

Step-by-step instructions and code are detailed in the below link. All code, compiled datasets, and source files are also available on [Github](https://github.com/darwinanddavis/misc/tree/gh-pages/olympics).                 

### Outcomes      

Tokyo 2020 Olympics medal tally infographic   

### [Writeup and analysis](https://darwinanddavis.github.io/misc/olympics/olympics.html)              

### [View hi-res infographic](https://darwinanddavis.github.io/misc/olympics/img/olympics.pdf)      

![](infographics/olympics1.png)  
<br>
  
![](infographics/olympics2.png) 
<br>

![](infographics/olympics3.png) 
<br>

![](infographics/olympics4.jpg) 
<br>

![](infographics/olympics5.jpg) 
<br>
  
### Tools     
  
R             
HTML    
CSS    
JS  

```{r}    
pacman::p_load(here,rvest,xml2,dplyr,circlize,tidyr,stringr,purrr,magick,reshape2)  
```  
    
### Links            
[`R` code](https://github.com/darwinanddavis/misc/tree/gh-pages/olympics/r)        

### Data      
[Tokyo 2020 Olympics official website](https://olympics.com/tokyo-2020/olympic-games/en/results/all-sports/medal-standings.htm)      
   
******     

[Back to top](#top)|[Home page](./index.md)

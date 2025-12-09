
R version 4.5.2 (2025-10-31 ucrt) -- "[Not] Part in a Rumble"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> rmarkdown::pandoc_available()
[1] TRUE
> saveWidget(m, 
+            "C:\\Users\\Hassan\\Documents\\ndvi_interactive_map.html",
+            selfcontained = TRUE)
Error in saveWidget(m, "C:\\Users\\Hassan\\Documents\\ndvi_interactive_map.html",  : 
  could not find function "saveWidget"
> install.packages("htmlwidgets")
Installing package into ‘C:/Users/Hassan/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.5/htmlwidgets_1.6.4.zip'
Content type 'application/zip' length 814103 bytes (795 KB)
downloaded 795 KB

package ‘htmlwidgets’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\Hassan\AppData\Local\Temp\RtmpUF9LTW\downloaded_packages
> library(htmlwidgets)
> saveWidget(m,
+            "C:\\Users\\Hassan\\Documents\\ndvi_interactive_map.html",
+            selfcontained = TRUE)
Error: object 'm' not found
> library(terra)
terra 1.8.86
> library(leaflet)
> library(htmlwidgets)
> library(RColorBrewer)
> ndvi <- rast("C:\\Users\\Hassan\\Downloads\\ndvi_median_demo.tif")
> ndvi_small <- aggregate(ndvi, fact = 6, fun = mean, na.rm = TRUE)
> pal <- colorNumeric(c("blue","white","green"), values(ndvi_small), na.color = "transparent")
> m <- leaflet() %>% 
+   addTiles() %>% 
+   addRasterImage(ndvi_small, colors = pal, opacity = 0.8) %>% 
+   addLegend(pal = pal, values = values(ndvi_small), title = "NDVI")
> saveWidget(m,
+            "C:\\Users\\Hassan\\Documents\\ndvi_interactive_map.html",
+            selfcontained = TRUE)
> # NDVI basic stats
> ndvi_min  <- global(ndvi, "min", na.rm = TRUE)
> ndvi_mean <- global(ndvi, "mean", na.rm = TRUE)
> ndvi_max  <- global(ndvi, "max", na.rm = TRUE)
> ndvi_sd   <- global(ndvi, "sd", na.rm = TRUE)
> 
> ndvi_min
            min
NDVI -0.4372549
> ndvi_mean
          mean
NDVI 0.3305533
> ndvi_max
           max
NDVI 0.8340195
> ndvi_sd
            sd
NDVI 0.1698295
> ndvi_stats <- data.frame(
+   Statistic = c("NDVI_min", "NDVI_mean", "NDVI_max", "NDVI_sd"),
+   Value = c(ndvi_min$min, ndvi_mean$mean, ndvi_max$max, ndvi_sd$sd)
+ )
> 
> ndvi_stats
  Statistic      Value
1  NDVI_min -0.4372549
2 NDVI_mean  0.3305533
3  NDVI_max  0.8340195
4   NDVI_sd  0.1698295
> write.csv(ndvi_stats,
+           "C:\\Users\\Hassan\\Documents\\NDVI_statistics.csv",
+           row.names = FALSE)
> 

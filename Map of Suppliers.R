g <- leaflet() %>%
  addTiles() %>% # Add default OpenStreetMap map tiles
  addMarkers(lng=2.3522, lat=48.8566, popup="Mono Packaging Materials") %>%
  addMarkers(lng=-3.7038, lat=40.4168, popup="Trio PET PLC") %>%
  addMarkers(lng=-80.1918, lat=25.7617, popup="Miami Oranges") %>%
  addMarkers(lng=2.1734, lat=41.3851, popup="NO8DO Mango")%>%
  addMarkers(lng=121.4737, lat=31.2304, popup="Seitan Vitamins")
print(g)
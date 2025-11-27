#> tusb_remake:area/portal/tocult_colde/frontier/open
### 辺境のワープ開放

data modify storage tusb_remake: portal_name set value "辺境"
data modify storage tusb_remake: portal.tocult_colde.frontier set value true
execute positioned 1341 215 1558 run function tusb_remake:area/portal/open

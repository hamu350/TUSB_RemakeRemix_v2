#> tusb_remake:area/portal/tocult_colde/excavation_upper/open
### 採掘場(上)のワープ開放

data modify storage tusb_remake: portal_name set value "採掘場(上)"
data modify storage tusb_remake: portal.tocult_colde.excavation_upper set value true
execute positioned 2297 83 1429 run function tusb_remake:area/portal/open

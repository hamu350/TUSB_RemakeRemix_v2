#> tusb_remake:area/portal/tocult_colde/drift_ice/open
### 流氷のワープ開放

data modify storage tusb_remake: portal_name set value "流氷"
data modify storage tusb_remake: portal.tocult_colde.drift_ice set value true
execute positioned 1354 96 1582 run function tusb_remake:area/portal/open

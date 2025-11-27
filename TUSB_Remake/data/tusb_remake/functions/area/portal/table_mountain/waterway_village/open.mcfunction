#> tusb_remake:area/portal/table_mountain/waterway_village/open
### 地下水路の村へのワープ開放

data modify storage tusb_remake: portal_name set value "地下水路の村"
data modify storage tusb_remake: portal.table_mountain.waterway_village set value true
execute positioned 31 2 -2152 run function tusb_remake:area/portal/open

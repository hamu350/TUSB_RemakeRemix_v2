#> tusb_remake:area/portal/tocult_colde/spiral_tower/open
### 螺旋の塔のワープ開放

data modify storage tusb_remake: portal_name set value "螺旋の塔"
data modify storage tusb_remake: portal.tocult_colde.spiral_tower set value true
execute positioned 1359 96 1560 run function tusb_remake:area/portal/open

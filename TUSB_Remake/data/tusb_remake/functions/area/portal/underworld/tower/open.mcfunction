#> tusb_remake:area/portal/underworld/tower/open
### 地下キノコの塔のワープ開放

data modify storage tusb_remake: portal_name set value "地下キノコの塔"
data modify storage tusb_remake: portal.underworld.tower set value true
execute positioned 1045 6 52 run function tusb_remake:area/portal/open

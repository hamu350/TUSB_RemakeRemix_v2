#> tusb_remake:area/portal/tocult_colde/castle/open
### トカルト城のワープ開放

data modify storage tusb_remake: portal_name set value "トカルト城"
data modify storage tusb_remake: portal.tocult_colde.castle set value true
execute positioned 1278 96 1582 run function tusb_remake:area/portal/open

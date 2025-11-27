#> tusb_remake:area/portal/cloudia/castle/open
### クラウディア城へのワープ開放

data modify storage tusb_remake: portal_name set value "クラウディア城"
data modify storage tusb_remake: portal.cloudia.castle set value true
execute positioned -2479 3 -129 run function tusb_remake:area/portal/open

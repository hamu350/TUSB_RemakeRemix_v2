#> world_manager:area/portal/cloudia/tutorial/open
### チュートリアルのワープ開放

data modify storage tusb_remake: portal_name set value "クラウディア チュートリアル" 
data modify storage tusb_remake: portal.cloudia.tutorial set value true
execute positioned -1886 113 -195 run function world_manager:area/portal/open

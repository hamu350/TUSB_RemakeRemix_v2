#> world_manager:area/portal/the_end/skyblock/open
### THE UNUSUAL SKYBLOCKのワープ開放

data modify storage tusb_remake: portal_name set value "THE UNUSUAL SKYBLOCK"
data modify storage tusb_remake: portal.the_end.skyblock set value true
execute positioned -1186 69 8 run function world_manager:area/portal/open

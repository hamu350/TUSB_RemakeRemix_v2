#> tusb_remake:area/portal/the_end/stairs/open
### エンド 大階段のワープ開放

data modify storage tusb_remake: portal_name set value "エンド 大階段"
data modify storage tusb_remake: portal.the_end.stairs set value true
execute positioned -702 66 26 run function tusb_remake:area/portal/open

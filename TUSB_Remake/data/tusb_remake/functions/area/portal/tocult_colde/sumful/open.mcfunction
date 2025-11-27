#> tusb_remake:area/portal/tocult_colde/sumful/open
### スムフルのワープ開放

data modify storage tusb_remake: portal_name set value "スムフル"
data modify storage tusb_remake: portal.tocult_colde.sumful set value true
execute positioned 1338 96 1598 run function tusb_remake:area/portal/open

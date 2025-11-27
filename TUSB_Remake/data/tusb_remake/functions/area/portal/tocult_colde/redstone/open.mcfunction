#> tusb_remake:area/portal/tocult_colde/redstone/open
### 古代遺跡　調査コードRSのワープ開放

data modify storage tusb_remake: portal_name set value "古代遺跡　調査コードRS"
data modify storage tusb_remake: portal.tocult_colde.redstone set value true
execute positioned 1278 96 1538 run function tusb_remake:area/portal/open

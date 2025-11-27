#> tusb_remake:area/portal/tocult_colde/command_block/open
### 古代遺跡　調査コードCBのワープ開放

data modify storage tusb_remake: portal_name set value "古代遺跡　調査コードCB"
data modify storage tusb_remake: portal.tocult_colde.command_block set value true
execute positioned 1294 96 1522 run function tusb_remake:area/portal/open

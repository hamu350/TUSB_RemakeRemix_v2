#> tusb_remake:area/portal/cloudia/hello_work/open
### 職業島へのワープ開放

data modify storage tusb_remake: portal_name set value "職業島"
data modify storage tusb_remake: portal.cloudia.hello_work set value true
execute positioned -2383 77 -157 run function tusb_remake:area/portal/open

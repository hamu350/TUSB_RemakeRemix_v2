#> tusb_remake:clock/undying/use/cheak_item

data modify storage tusb_remake: test set from entity @p[tag=Undying] UUID
execute store success storage tusb_remake: cheak_owner byte 1 run data modify storage tusb_remake: test set from entity @s Owner
execute if data storage tusb_remake: {cheak_owner:false} if data entity @s {Item:{tag:{Undying:true}}} run data modify storage tusb_remake: cheak set value true
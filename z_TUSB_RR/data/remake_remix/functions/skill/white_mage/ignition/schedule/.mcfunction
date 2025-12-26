#> tusb_remake:skill/white_mage/ignition/schedule/

data modify storage tusb_remake: _ set value false
execute as @e[type=snowball,tag=Ignition] at @s run function tusb_remake:skill/white_mage/ignition/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/white_mage/ignition/schedule/ 1t

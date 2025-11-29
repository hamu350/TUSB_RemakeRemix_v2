#> tusb_remake:clock/undying/use/get_slot

data modify storage tusb_remake: Inventory set from entity @s Inventory
execute store result score $Slot TUSB if data storage tusb_remake: Inventory[]
execute if data storage tusb_remake: Inventory[{Slot:100b}] run scoreboard players remove $Slot TUSB 1
execute if data storage tusb_remake: Inventory[{Slot:101b}] run scoreboard players remove $Slot TUSB 1
execute if data storage tusb_remake: Inventory[{Slot:102b}] run scoreboard players remove $Slot TUSB 1
execute if data storage tusb_remake: Inventory[{Slot:103b}] run scoreboard players remove $Slot TUSB 1
execute if data storage tusb_remake: Inventory[{Slot:-106b}] run scoreboard players remove $Slot TUSB 1
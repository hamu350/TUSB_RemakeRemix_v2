data remove storage tusb_remake: trade
data modify storage tusb_remake: trade.maxUses set value 2147483647
data modify storage tusb_remake: trade.buy set from entity @s Inventory[{Slot:0b}]
data modify storage tusb_remake: trade.buyB set from entity @s Inventory[{Slot:1b}]
data modify storage tusb_remake: trade.sell set from entity @s Inventory[{Slot:2b}]
execute as @s at @s run data modify entity @e[limit=1,sort=nearest,type=villager] Offers.Recipes[{maxUses:{}}] append from storage tusb_remake: trade.maxUses
execute as @s at @s run data modify entity @e[limit=1,sort=nearest,type=villager] Offers.Recipes append from storage tusb_remake: trade
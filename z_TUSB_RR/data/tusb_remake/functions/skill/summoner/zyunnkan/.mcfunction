execute at @s store result score @s petto if entity @e[type=#tusb_remake:friendly,distance=..15,limit=10]

scoreboard players set _ TUSB 20
scoreboard players operation @s petto *= _ TUSB
scoreboard players operation @s MP += @s petto

title @s times 0 70 10
title @s subtitle {"translate":"                           + %1$s MP","with":[{"score":{"name":"*","objective":"petto"}}],"color":"aqua","italic":true,"bold":true}
title @s title {"text":""}

scoreboard players operation @s MP < @s MPMax
execute at @s run particle enchant ~ ~ ~ 0.5 0.5 0.5 0 200
execute at @s run playsound entity.item.pickup master @a[distance=..16] ~ ~ ~ 1 0.7 0
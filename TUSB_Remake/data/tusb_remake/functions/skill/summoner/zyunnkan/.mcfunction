execute at @s store result score @s petto if entity @e[type=#tusb_remake:friendly,distance=..5]

execute if score @s petto matches 10.. run scoreboard players set @s petto 100
execute if score @s petto matches 2 run scoreboard players set @s petto 20
execute if score @s petto matches 3 run scoreboard players set @s petto 30
execute if score @s petto matches 4 run scoreboard players set @s petto 40
execute if score @s petto matches 5 run scoreboard players set @s petto 50
execute if score @s petto matches 6 run scoreboard players set @s petto 60
execute if score @s petto matches 7 run scoreboard players set @s petto 70
execute if score @s petto matches 8 run scoreboard players set @s petto 80
execute if score @s petto matches 9 run scoreboard players set @s petto 90

title @s times 0 70 10
title @s subtitle {"translate":"                           + %1$s MP","with":[{"score":{"name":"*","objective":"petto"}}],"color":"aqua","italic":true,"bold":true}
title @s title {"text":""}

execute if score @s petto matches 1 run title @s times 0 70 10
execute if score @s petto matches 1 run title @s subtitle {"translate":"                           + 10 MP","color":"aqua","italic":true,"bold":true}
execute if score @s petto matches 1 run title @s title {"text":""}
execute if score @s petto matches 1 run scoreboard players add @s MP 10
execute if score @s petto matches 20 run scoreboard players add @s MP 20
execute if score @s petto matches 30 run scoreboard players add @s MP 30
execute if score @s petto matches 40 run scoreboard players add @s MP 40
execute if score @s petto matches 50 run scoreboard players add @s MP 50
execute if score @s petto matches 60 run scoreboard players add @s MP 60
execute if score @s petto matches 70 run scoreboard players add @s MP 70
execute if score @s petto matches 80 run scoreboard players add @s MP 80
execute if score @s petto matches 90 run scoreboard players add @s MP 90
execute if score @s petto matches 100 run scoreboard players add @s MP 100


scoreboard players operation @s MP < @s MPMax
execute at @s run particle enchant ~ ~ ~ 0.5 0.5 0.5 0 200
execute at @s run playsound entity.item.pickup master @a[distance=..16] ~ ~ ~ 1 0.7 0
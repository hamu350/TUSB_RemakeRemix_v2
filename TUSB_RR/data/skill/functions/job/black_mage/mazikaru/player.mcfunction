#> skill:job_skill/black_mage/mazikaru/player

execute at @s store result score @s mazikaru if entity @e[type=#lib:mob,tag=Enemy,distance=..8,limit=10]

scoreboard players set _ TUSB 20
scoreboard players operation @s mazikaru *= _ TUSB
scoreboard players add @s mazikaru 40
scoreboard players operation @s MP += @s mazikaru

scoreboard players operation @s MP < @s MPMax

scoreboard players set _ TUSB 10
scoreboard players operation @s mazikaru /= _ TUSB
scoreboard players operation @s HealCount += @s mazikaru
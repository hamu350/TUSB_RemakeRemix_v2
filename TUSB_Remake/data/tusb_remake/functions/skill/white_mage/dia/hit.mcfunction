#> tusb_remake:skill/white_mage/dia/hit
# ディアが当たった時

### リメイク：威力を倍に
execute if score @s PotentialSkill matches 4210 run effect give @s minecraft:instant_health 1 2 false
execute if score @s PotentialSkill matches 4211 run effect give @s minecraft:instant_health 1 3 false
execute if score @s PotentialSkill matches 4212 run effect give @s minecraft:instant_health 1 4 false
execute if score @s PotentialSkill matches 4213 run effect give @s minecraft:instant_health 1 5 false
execute if score @s PotentialSkill matches 4214..4219 run effect give @s minecraft:instant_health 1 6 false

playsound minecraft:entity.bat.hurt master @a[distance=..32] ~ ~ ~ 2 0.75 1
particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

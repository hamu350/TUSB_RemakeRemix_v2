#> skill:job_skill/white_mage/syawa_/schedule/hit

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

execute if entity @s[type=#lib:undead] run effect give @s minecraft:instant_health 2 6 true
execute if entity @s[type=#lib:living] run effect give @s minecraft:instant_damage 2 6 true

playsound block.fire.extinguish master @a[distance=..16] ~ ~ ~ 2 2 0
particle firework ~ ~1 ~ 1 1 1 0.25 20 force

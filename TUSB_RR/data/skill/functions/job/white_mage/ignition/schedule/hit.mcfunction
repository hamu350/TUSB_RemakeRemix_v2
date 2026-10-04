#> skill:job_skill/white_mage/ignition/schedule/hit

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

execute if entity @s[type=#lib:undead] run effect give @s minecraft:instant_health 1 8 true
execute unless entity @s[type=#lib:undead] run effect give @s minecraft:instant_damage 1 8 true

playsound block.fire.extinguish master @a[distance=..32] ~ ~ ~ 2 2 0
playsound minecraft:entity.zombie.infect master @a[distance=..32] ~ ~ ~ 2 2 0
particle firework ~ ~1 ~ 1 1 1 0.25 20 force
particle flame ~ ~1 ~ 1 1 1 0.25 20 force

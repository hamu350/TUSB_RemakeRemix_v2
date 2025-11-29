#> tusb_remake:skill/summoner/deal/cast
# ディール発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.wool.break master @a[distance=..32] ~ ~ ~ 2 0.6 0

## リメイク：ダメージを少しアップ
## 150 => 270 => 400
### スキルのレベルに応じたダメージを与える
execute if score _ ActivatedSkill matches 6220 run data modify storage score_damage: Argument set value {Damage:150.00,DamageType:"None"}
execute if score _ ActivatedSkill matches 6221..6229 run data modify storage score_damage: Argument set value {Damage:270.00,DamageType:"None"}
execute if score _ ActivatedSkill matches 6221..6229 run data modify storage score_damage: Argument set value {Damage:400.00,DamageType:"None"}

execute as @e[distance=..30,type=#tusb_remake:mob,tag=Enemy] at @s if block ~ ~-1 ~ #minecraft:wool run function tusb_remake:skill/summoner/deal/apply

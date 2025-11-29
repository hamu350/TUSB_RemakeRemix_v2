#> tusb_remake:skill/ninja/seiyou/apply
### 跳躍発動時の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players add @s seiyou 3
scoreboard players set @s NinjaTime 3

execute if score _ ActivatedSkill matches 2260..2269 if score @s seiyou matches 31.. run scoreboard players set @s seiyou 30

playsound entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 1 1.8 0
particle enchanted_hit ~ ~ ~ 2.0 0 2.0 0 100 force
playsound minecraft:entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 1.0 0.75 0.0


title @s times 0 70 10
title @s subtitle {"translate":"                            %1$s Charge!","with":[{"score":{"name":"*","objective":"seiyou"}}],"color":"green","italic":true,"bold":true}
title @s title {"text":""}


# effect give @s[scores={seiyou=1..12}] minecraft:instant_damage 1 1
# effect give @s[scores={seiyou=13..22}] minecraft:instant_damage 1 2
# effect give @s[scores={seiyou=23..}] minecraft:instant_damage 1 3

# 軽減不可の0.5-1.0-2.0dmg
  # 引数を設定
    data modify storage score_damage: Argument set value {Damage:0.00,EPF:0,BypassArmor:true,BypassResistance:true}
  # 値に応じてダメージを設定
    execute if score @s seiyou matches 1..12 run data modify storage score_damage: Argument.Damage set value 0.1
    execute if score @s seiyou matches 13..22 run data modify storage score_damage: Argument.Damage set value 0.2
    execute if score @s seiyou matches 23.. run data modify storage score_damage: Argument.Damage set value 0.4
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument
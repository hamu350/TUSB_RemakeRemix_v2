#> core:clock/skill_trigger/setup
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @a[scores={Choyaku=2..,Jump=1..},nbt={ActiveEffects:[{Id:8}]}] at @s run function skill:job_skill/ninja/choyaku/jump
execute as @a[scores={seiyou=2..,Jump=1..}] at @s run function skill:job_skill/ninja/seiyou/jump
scoreboard players reset @a[scores={Jump=1..}] Jump
### 緩衝体力用被ダメージ補正処理
execute as @a[scores={HPChanging=0..},nbt=!{AbsorptionAmount:0f}] run function core:clock/skill_trigger/setup2

#### 奈落介錯 y=-130以下
execute as @a[predicate=lib:in_void,scores={HP=1..}] at @s run function player_manager:kill/abyss

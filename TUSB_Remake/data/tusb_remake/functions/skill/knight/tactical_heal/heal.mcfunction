#> tusb_remake:skill/knight/tactical_heal/heal
# タクティカルヒールの回復をする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### リメイク：回復量を２倍に
### 受けたダメージの1/5のスコアを回復カウントに入れる => 受けたダメージの２倍回復
execute store result storage tusb_remake: _ int 0.2 run scoreboard players get @s DamageTaken
execute store result score _ TUSB run data get storage tusb_remake: _
scoreboard players operation @s HealCount += _ TUSB

tellraw @s {"text":"タクティカルヒールの効果が切れた。","color":"gold"}
playsound entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.78 0
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0 30 force
tag @s remove TacticalHeal

advancement revoke @s only tusb_remake:skill/knight/tactical_heal/heal

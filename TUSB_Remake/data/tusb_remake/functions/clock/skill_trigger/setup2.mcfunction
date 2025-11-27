#> tusb_remake:clock/skill_trigger/setup2
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 前のHPから今のHPを引く
scoreboard players operation @s DamageResisted = @s HP
execute store result storage tusb_remake: _ int 10 run scoreboard players operation @s DamageResisted -= @s HPChanging
execute store result score @s DamageResisted run data get storage tusb_remake: _
### 回復だった場合は0にする
scoreboard players set @s[scores={DamageResisted=..-1}] DamageResisted 0

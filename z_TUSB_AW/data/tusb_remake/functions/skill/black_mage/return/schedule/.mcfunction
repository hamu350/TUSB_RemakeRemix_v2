#> tusb_remake:skill/black_mage/return/schedule/
# ルーラ待機(507X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ ReturnTimer run time query gametime
### 待機中のプレイヤーは演出を入れる
execute as @a[tag=Return] if score @s ReturnTimer >= _ ReturnTimer at @s run function tusb_remake:skill/black_mage/return/schedule/check
### 待機中じゃないプレイヤーは飛ばしたりする
execute as @a[tag=Return] if score @s ReturnTimer <= _ ReturnTimer at @s run function tusb_remake:skill/black_mage/return/schedule/clear

### まだ対象が存在するならループ
execute if entity @a[tag=Return] in minecraft:overworld run schedule function tusb_remake:skill/black_mage/return/schedule/ 1t

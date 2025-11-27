#> tusb_remake:clock/last
# 毎ティック最後に実行したいもの
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### マジックシールドのチェック
execute as @a[tag=MagicShield] run effect give @s minecraft:resistance 1 100
### ウィンドウォール
execute as @a[scores={WindWall=0..}] at @s run function tusb_remake:skill/black_mage/wind_wall/check

### プレイヤーの回復効果
execute as @a[scores={HealCount=1..3},nbt=!{ActiveEffects:[{Id:10}]}] run function tusb_remake:player/heal/small
execute as @a[scores={HealCount=4..},nbt=!{ActiveEffects:[{Id:6}]}] run function tusb_remake:player/heal/large

### HP記録
execute as @a[scores={HPChanging=0..}] run scoreboard players operation @s HP = @s HPChanging
scoreboard players reset @a[scores={HPChanging=0..}] HPChanging
### 満腹度記録
execute as @a[scores={FoodChanging=0..}] run scoreboard players operation @s Food = @s FoodChanging
scoreboard players reset @a[scores={FoodChanging=0..}] FoodChanging
### 満腹度制限
execute as @a[scores={FoodMax=0..}] run function tusb_remake:player/food/limit

### 死亡トリガー TODO
scoreboard players reset @a[scores={Deaths=1..}] Deaths
### 被ダメージトリガーリセット TODO
scoreboard players reset @a[scores={DamageTaken=0..}] DamageTaken
scoreboard players reset @a[scores={DamageResisted=0..}] DamageResisted
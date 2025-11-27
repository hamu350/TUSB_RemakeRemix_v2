#> tusb_remake:clock/skill_trigger
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 雪玉
execute as @a[scores={UseSnowball=1..}] at @s run function tusb_remake:skill/snowball/

### 死亡/サヨナラ
execute as @a[scores={Deaths=1..}] at @s run function tusb_remake:skill/deaths/

### 弓
execute as @a[scores={UseBow=1..}] at @s run function tusb_remake:skill/bow/
# 追加箇所
### クロスボウ
execute as @a[scores={UseCrossBow=1..}] at @s run function tusb_remake:skill/bow/crossbow
#

### 食事
execute as @a[scores={FoodChanging=0..}] at @s if score @s FoodChanging > @s Food run function tusb_remake:skill/food/

### ニンジン棒
execute as @a[scores={UseCarrotStick=1..}] at @s run function tusb_remake:skill/carrot_stick/
### キノコ棒
execute as @a[scores={UseFungusStick=1..}] at @s run function tusb_remake:skill/fungus_stick/

### 近接攻撃
execute as @a[scores={DamageDealtAbsorbed=0..}] run scoreboard players operation @s DamageDealt += @s DamageDealtAbsorbed
execute as @a[scores={DamageDealtResisted=0..}] run scoreboard players operation @s DamageDealt += @s DamageDealtResisted
execute as @a[scores={DamageDealt=1..}] at @s run function tusb_remake:skill/hit/

### スキル設定変更
execute as @a[scores={InstantChangeA=0..}] at @s run function tusb_remake:skill/change/instant/a
execute as @a[scores={InstantChangeB=0..}] at @s run function tusb_remake:skill/change/instant/b
execute as @a[scores={ModeChangeA=0..}] at @s run function tusb_remake:skill/change/mode/a
execute as @a[scores={ModeChangeB=0..}] at @s run function tusb_remake:skill/change/mode/b

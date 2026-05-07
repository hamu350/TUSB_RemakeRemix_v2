#> core:clock/skill_trigger
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 雪玉
execute as @a[scores={UseSnowball=1..}] at @s run function skill:trigger/snowball/

### 死亡/サヨナラ
execute as @a[scores={Deaths=1..}] at @s run function skill:trigger/deaths/

### 弓
execute as @a[scores={UseBow=1..}] at @s run function skill:trigger/bow/

### 食事
execute as @a[scores={FoodChanging=0..}] at @s if score @s FoodChanging > @s Food run function skill:trigger/food/

### ニンジン棒
execute as @a[scores={UseCarrotStick=1..}] at @s run function skill:trigger/carrot_stick/
### キノコ棒
execute as @a[scores={UseFungusStick=1..}] at @s run function skill:trigger/fungus_stick/

### 近接攻撃
execute as @a[scores={DamageDealtAbsorbed=0..}] run scoreboard players operation @s DamageDealt += @s DamageDealtAbsorbed
execute as @a[scores={DamageDealtResisted=0..}] run scoreboard players operation @s DamageDealt += @s DamageDealtResisted
execute as @a[scores={DamageDealt=1..}] at @s run function skill:trigger/hit/

### スキル設定変更
execute as @a[scores={InstantChangeA=0..}] at @s run function skill:change/instant/a
execute as @a[scores={InstantChangeB=0..}] at @s run function skill:change/instant/b
execute as @a[scores={ModeChangeA=0..}] at @s run function skill:change/mode/a
execute as @a[scores={ModeChangeB=0..}] at @s run function skill:change/mode/b

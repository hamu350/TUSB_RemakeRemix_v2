#> tusb_remake:skill/archer/chain_arrow/hit/
# チェインアローが直接当たった時

### ダメージ * 100 + 1000X 入っているので、まずは10000を引く
scoreboard players operation _ PotentialSkill = @s PotentialSkill
scoreboard players remove _ PotentialSkill 10000
# RR変更点(CWから引用)：固定ダメージ追加(0-5-10dmg)
scoreboard players operation Level TUSB = _ PotentialSkill
scoreboard players set _ TUSB 10
scoreboard players operation Level TUSB %= _ TUSB
scoreboard players set _ TUSB 200
scoreboard players operation _ TUSB *= Level TUSB
scoreboard players operation _ PotentialSkill += _ TUSB

### ダメージを設定 (ダメージ*2.5)
data modify storage score_damage: Argument set value {Damage:0.00,DamageType:"Projectile"}
execute store result storage score_damage: Argument.Damage double 0.025 run scoreboard players get _ PotentialSkill
### 端数切り捨て
execute store result storage score_damage: Argument.Damage double 1 run data get storage score_damage: Argument.Damage

### 演出を出すのは10体まで
data modify storage tusb_remake: chain_arrow_count set value 10
### チェインアローのレベルに応じて呼び出し
execute if score Level TUSB matches 0 as @e[distance=..5,type=#tusb_remake:mob,tag=Enemy,sort=random] at @s run function tusb_remake:skill/archer/chain_arrow/hit/damage
execute if score Level TUSB matches 1 as @e[distance=..15,type=#tusb_remake:mob,tag=Enemy,sort=random] at @s run function tusb_remake:skill/archer/chain_arrow/hit/damage
execute if score Level TUSB matches 2..9 as @e[distance=..25,type=#tusb_remake:mob,tag=Enemy,sort=random] at @s run function tusb_remake:skill/archer/chain_arrow/hit/damage

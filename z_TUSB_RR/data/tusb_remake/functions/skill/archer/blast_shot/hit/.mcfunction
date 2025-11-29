#> tusb_remake:skill/archer/blast_shot/hit/
# ブラストショットが直接当たった時

### 爆発演出
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1 0
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force

scoreboard players operation _ PotentialSkill = @s PotentialSkill

### リメイク：ダメージを平均化して少しアップ
execute if score _ PotentialSkill matches 3230 run data modify storage score_damage: Argument set value {Damage:20.00,DamageType:"Blast"}
execute if score _ PotentialSkill matches 3231..3239 run data modify storage score_damage: Argument set value {Damage:45.00,DamageType:"Blast"}

### ブラストショットのレベルに応じて呼び出し
execute if score _ PotentialSkill matches 3230 as @e[distance=..3,type=#tusb_remake:mob,tag=Enemy] run function tusb_remake:skill/archer/blast_shot/hit/damage1
execute if score _ PotentialSkill matches 3231..3239 as @e[distance=..6,type=#tusb_remake:mob,tag=Enemy] run function tusb_remake:skill/archer/blast_shot/hit/damage2

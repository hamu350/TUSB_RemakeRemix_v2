#> tusb_remake:skill/archer/blast_shot/hit/damage
# ブラストショットが直接当たった時

data modify storage tusb_remake: blast_point set from entity @s Pos
### 座標を戻す
data modify entity @s Pos set from storage tusb_remake: blast_point2

### X座標の変化
execute store result score @s TUSB run data get storage tusb_remake: blast_point2[0] 100
execute store result score _ TUSB run data get storage tusb_remake: blast_point[0] 100
execute store result storage tusb_remake: blast_point[0] double 0.005 run scoreboard players operation _ TUSB -= @s TUSB

### Y座標の変化
execute store result score @s TUSB run data get storage tusb_remake: blast_point2[1] 100
execute store result score _ TUSB run data get storage tusb_remake: blast_point[1] 100
execute store result storage tusb_remake: blast_point[1] double 0.005 run scoreboard players operation _ TUSB -= @s TUSB

### Z座標の変化
execute store result score @s TUSB run data get storage tusb_remake: blast_point2[2] 100
execute store result score _ TUSB run data get storage tusb_remake: blast_point[2] 100
execute store result storage tusb_remake: blast_point[2] double 0.005 run scoreboard players operation _ TUSB -= @s TUSB

### 座標の変化をMotionに設定
data modify entity @s Motion set from storage tusb_remake: blast_point

### ダメージを入れる
function score_damage:api/attack

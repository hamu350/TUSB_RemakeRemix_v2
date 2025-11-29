#> tusb_remake:skill/archer/blast_shot/hit/damage2
# ブラストショットが直接当たった時

### 自分自身の座標を保存
data modify storage tusb_remake: blast_point2 set from entity @s Pos
### 自分自身の方向で、7m先の座標を保存
execute facing entity @s feet positioned ^ ^ ^7 run tp @s ~ ~2 ~
### 共通処理
function tusb_remake:skill/archer/blast_shot/hit/damage

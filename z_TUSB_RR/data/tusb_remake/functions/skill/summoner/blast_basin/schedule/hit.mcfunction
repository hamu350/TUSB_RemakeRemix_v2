#> tusb_remake:skill/summoner/blast_basin/schedule/hit
# きらきらタライが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 演出
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~ ~ 1 1 0

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

### ダメージと吹き飛ばしを与える
execute as @e[distance=..8,type=#tusb_remake:mob,tag=Enemy] run function tusb_remake:skill/archer/blast_shot/hit/damage1

data modify storage tusb_remake: hit set value true

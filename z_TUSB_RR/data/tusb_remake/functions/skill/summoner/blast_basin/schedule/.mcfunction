#> tusb_remake:skill/summoner/blast_basin/schedule/
### きらきらタライが飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: _ set value false
### 爆発威力４⇨半径８、威力１６、おまけして２０
data modify storage score_damage: Argument set value {Damage:20.00,DamageType:"Blast"}
execute as @e[type=falling_block,tag=KiraTnt] at @s run function tusb_remake:skill/summoner/blast_basin/schedule/fly

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/summoner/blast_basin/schedule/ 1t

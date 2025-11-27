#> tusb_remake:skill/summoner/blast_basin/cast
# きらきらタライ発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=..15,type=#tusb_remake:mob,tag=Enemy] at @s anchored eyes positioned ^ ^ ^ anchored feet positioned ~ ~1.0 ~ run function tusb_remake:skill/summoner/blast_basin/summon

execute in minecraft:overworld run schedule function tusb_remake:skill/summoner/blast_basin/schedule/ 1t

#> tusb_remake:nether_boss/lightning_bolt/schedule
# ライトニングボルト
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as 0-0-1-0-4 at @s run spreadplayers ~-10 ~41 0 9 under 255 false @e[distance=..1,tag=FrontWaterBolt,limit=1]
execute as 0-0-1-0-7 at @s positioned ~ 22 ~ run summon lightning_bolt
tp 0-0-1-0-7 0-0-1-0-4
execute as 0-0-1-0-4 at @s run spreadplayers ~17 ~38 0 13 under 255 false @e[distance=..1,tag=FrontPoisonBolt,limit=1]
execute as 0-0-1-0-8 at @s positioned ~ 21 ~ run summon lightning_bolt
tp 0-0-1-0-8 0-0-1-0-4

### まだ残り回数があったら繰り返し
execute store result storage tusb_remake: lightning_bolt_count int 0.9999999999 run data get storage tusb_remake: lightning_bolt_count
execute unless data storage tusb_remake: {lightning_bolt_count:0} in minecraft:overworld run schedule function tusb_remake:nether_boss/lightning_bolt/schedule 1t

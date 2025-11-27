#> tusb_remake:skill/summoner/tsuntsun/carrot/cast
# つんつんを詠唱(624X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=..15,type=snow_golem,team=FriendlyTeam] at @s run tag @a[distance=..10] add TsuntsunSnowGolem
execute as @e[distance=..15,type=wolf,team=FriendlyTeam] at @s run tag @a[distance=..10] add TsuntsunWolf
execute as @e[distance=..15,type=iron_golem,team=FriendlyTeam] at @s run tag @a[distance=..10] add TsuntsunIronGolem

execute as @a[distance=..30,tag=TsuntsunSnowGolem] at @s run function tusb_remake:skill/summoner/tsuntsun/carrot/apply/snow_golem
execute as @a[distance=..30,tag=TsuntsunWolf] at @s run function tusb_remake:skill/summoner/tsuntsun/carrot/apply/wolf
execute as @a[distance=..30,tag=TsuntsunIronGolem] at @s run function tusb_remake:skill/summoner/tsuntsun/carrot/apply/iron_golem

tag @a remove TsuntsunSnowGolem
tag @a remove TsuntsunWolf
tag @a remove TsuntsunIronGolem

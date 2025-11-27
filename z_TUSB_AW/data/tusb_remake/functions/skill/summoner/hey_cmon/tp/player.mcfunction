#> tusb_remake:skill/summoner/hey_cmon/tp/player
# ヘイカモン(6020)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0 30 force
execute if entity @a[tag=Adv,tag=This] run tp @s[tag=Adv] ~ ~ ~
execute if entity @a[tag=!Adv,tag=This] run tp @s ~ ~ ~

tellraw @s {"translate":"* %1$s の魔法で引き寄せられた！","with":[{"selector":"@a[tag=This]"}]}

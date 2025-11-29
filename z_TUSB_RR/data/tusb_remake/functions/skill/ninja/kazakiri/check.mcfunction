#> tusb_remake:skill/ninja/kazakiri/check
# 風切の継続チェック(207X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players remove @s Kazakiri 1

playsound minecraft:entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 0.5 1.6 0
particle minecraft:cloud ~ ~1 ~ 0.5 0 0.5 0 30 force

### スニークしているとき
execute if predicate tusb_remake:is_sneaking run effect give @s slow_falling 2 0 true
execute if predicate tusb_remake:is_sneaking run effect clear @s levitation
### スニークしているとき
execute unless predicate tusb_remake:is_sneaking run effect give @s levitation 2 1 true
execute unless predicate tusb_remake:is_sneaking run effect clear @s slow_falling

tellraw @s[scores={Kazakiri=..-1}] {"text":"風切の効果が切れた。","color":"gold"}
scoreboard players reset @s[scores={Kazakiri=..-1}] Kazakiri

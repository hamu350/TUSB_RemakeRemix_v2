#> tusb_remake:skill/white_mage/raise/
# レイズを発動させる(405X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

me はレイズを唱えた。
tag @s add ReRaise
tellraw @s {"text":"リレイズの効果がかかった。","color":"green","hoverEvent":{"action":"show_text","value":"死亡時にレイズの効果を得る。"}}

execute as @a[distance=..10,scores={HP=..0}] at @s run function tusb_remake:skill/white_mage/raise/apply

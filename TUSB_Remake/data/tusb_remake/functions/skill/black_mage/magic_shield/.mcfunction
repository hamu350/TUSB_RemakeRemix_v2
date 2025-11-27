#> tusb_remake:skill/black_mage/magic_shield/
# マジックシールドを発動させる(506X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 0.5 0.5 0
particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

tellraw @s {"text":"マジックシールドの効果がかかった。","color":"green","hoverEvent":{"action":"show_text","value":"次に受けるダメージを無効化する。"}}
tag @s add MagicShield
effect give @s minecraft:resistance 1 100

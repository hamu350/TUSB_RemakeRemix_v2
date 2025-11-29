#> tusb_remake:skill/black_mage/magic_shield/
# マジックシールドを発動させる(506X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.illusioner.prepare_blindness master @a[distance=..16] ~ ~ ~ 0.5 0.5 0
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.1 50 force

tellraw @s {"text":"マジカルエンゲージの効果がかかった。","color":"green","hoverEvent":{"action":"show_text","value":"§a一定時間定期MP回復量が倍増し、次受ける攻撃を無効化し、次使うスキルの消費MPを半減させる。"}}
tag @s add MagicShield
effect give @s minecraft:resistance 1 100

execute unless score @s ManaRefresh matches 60.. run scoreboard players set @s ManaRefresh 60
tag @s add EnergySave

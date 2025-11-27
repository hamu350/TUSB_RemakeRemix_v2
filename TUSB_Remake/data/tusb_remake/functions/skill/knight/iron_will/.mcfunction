#> tusb_remake:skill/knight/iron_will/
# アイアンウィル発動(101X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound block.anvil.land master @a[distance=..16] ~ ~ ~ 1 1.4 0
particle crit ~ ~1 ~ 0.5 0.5 0.5 0.5 30 force

tellraw @s {"text":"アイアンウィルの効果がかかった。","color":"green","hoverEvent":{"action":"show_text","value":"次のノックバックを軽減する。一定確率で効果が継続する。\n装備：継続確率にボーナス。"}}

# scoreboard players operation @s IronWill = @s RndMWC
# function tusb_remake:random/update
# scoreboard players set _ TUSB 50
# scoreboard players operation @s IronWill %= _ TUSB
## リメイク：ランダム性をなくしました（平均化）
scoreboard players set @s IronWill 100
scoreboard players add @s[scores={ActivatedSkill=1011..}] IronWill 75

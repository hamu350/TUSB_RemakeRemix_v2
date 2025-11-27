#> tusb_remake:skill/archer/energy_save/apply
### 次にスキルを使うと、消費MPが減る
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s add EnergySave
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
tellraw @s {"text":"エナジーセーブの効果がかかった。","color":"green","hoverEvent":{"action":"show_text","value":"次に使用するスキルの消費MPを半減する。"}}

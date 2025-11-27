#> tusb_remake:skill/archer/enchase/apply
### 次に弓を使うと、エンチェイスがかかる
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if score _ ActivatedSkill matches 3040 run tag @s add EnChase1
execute if score _ ActivatedSkill matches 3041..3049 run tag @s add EnChase2
tag @s add EnChase
particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
tellraw @s {"text":"エンチェイスの効果がかかった。","color":"green","hoverEvent":{"action":"show_text","value":"次に撃った矢が生物に当たりやすくなる。"}}

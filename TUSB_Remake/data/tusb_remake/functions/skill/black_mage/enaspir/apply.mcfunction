#> tusb_remake:skill/black_mage/enaspir/apply
### 次に近接攻撃をするとMPが回復する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

particle minecraft:note ~ ~1 ~ 0.5 0.5 0.5 0 30 force

tellraw @s {"text":"エンアスピルの効果がかかった。","color":"green","hoverEvent":{"action":"show_text","value":"次にアンデッドでない敵を近接攻撃した時、MPを回復する。"}}

execute if score _ ActivatedSkill matches 5050 unless score @s EnAspir matches 10.. run scoreboard players set @s EnAspir 10
execute if score _ ActivatedSkill matches 5051..5059 unless score @s EnAspir matches 15.. run scoreboard players set @s EnAspir 15

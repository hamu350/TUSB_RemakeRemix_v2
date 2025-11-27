#> tusb_remake:skill/black_mage/hocus_pocus/invoke
# パルプンテ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

me はパルプンテを唱えた！

### リメイク：確率はMPによらず一定に＆悪い確率を下げた
### 悪い結果(0-4)：４％、良い結果(5-14)：８％
scoreboard players operation _ Random = @s Random
function tusb_remake:random/update
scoreboard players set _ TUSB 25
scoreboard players operation _ Random %= _ TUSB

execute if score _ Random matches 0 run function tusb_remake:skill/black_mage/hocus_pocus/chance/0
execute if score _ Random matches 1 run function tusb_remake:skill/black_mage/hocus_pocus/chance/1
execute if score _ Random matches 2 run function tusb_remake:skill/black_mage/hocus_pocus/chance/2
execute if score _ Random matches 3 run function tusb_remake:skill/black_mage/hocus_pocus/chance/3
execute if score _ Random matches 4 run function tusb_remake:skill/black_mage/hocus_pocus/chance/4
execute if score _ Random matches 5..6 run function tusb_remake:skill/black_mage/hocus_pocus/chance/5
execute if score _ Random matches 7..8 run function tusb_remake:skill/black_mage/hocus_pocus/chance/6
execute if score _ Random matches 9..10 run function tusb_remake:skill/black_mage/hocus_pocus/chance/7
execute if score _ Random matches 11..12 run function tusb_remake:skill/black_mage/hocus_pocus/chance/8
execute if score _ Random matches 13..14 run function tusb_remake:skill/black_mage/hocus_pocus/chance/9
execute if score _ Random matches 15..16 run function tusb_remake:skill/black_mage/hocus_pocus/chance/10
execute if score _ Random matches 17..18 run function tusb_remake:skill/black_mage/hocus_pocus/chance/11
execute if score _ Random matches 19..20 run function tusb_remake:skill/black_mage/hocus_pocus/chance/12
execute if score _ Random matches 21..22 run function tusb_remake:skill/black_mage/hocus_pocus/chance/13
execute if score _ Random matches 23..24 run function tusb_remake:skill/black_mage/hocus_pocus/chance/14

### 発動者
playsound ambient.cave master @a[distance=..32] ~ ~ ~ 0.8 2 0.2
### 0-4
execute if score _ Random matches 0..4 run particle minecraft:witch ~ ~ ~ 5 2 5 0.1 300 force
### 5-14
execute if score _ Random matches 5..14 run particle instant_effect ~ ~ ~ 5 2 5 0.1 300 force

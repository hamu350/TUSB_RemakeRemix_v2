#> tusb_remake:sign_event/extra_hint/
# エクストラドメインのヒント看板
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"text":"～このチェストの鍵のヒント～","color":"white","bold":true,"underlined":true}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5 0
particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 90

execute positioned -2703 18 52 if entity @s[distance=..6] run tellraw @s {"text":"薄暗い空間に線路が見えます。","color":"gray","bold":true}
execute positioned -2679 18 76 if entity @s[distance=..6] run tellraw @s {"text":"外には赤と白の斑点模様が見え、水の臭いがします。","color":"gray","bold":true}
execute positioned -2679 18 114 if entity @s[distance=..6] run tellraw @s {"text":"見晴らしがよく火山が見え、真下には龍の骨がいくつか見えます。","color":"gray","bold":true}
execute positioned -2702 18 137 if entity @s[distance=..6] run tellraw @s {"text":"周囲には血の池があり、村人の声が聞こえます。","color":"gray","bold":true}
execute positioned -2740 18 137 if entity @s[distance=..6] run tellraw @s {"text":"周囲がよく冷えており、遠くから巨人の足音がします。","color":"gray","bold":true}
execute positioned -2763 18 114 if entity @s[distance=..6] run tellraw @s {"text":"雲が散々と見え、虹の木が確認できます。","color":"gray","bold":true}
execute positioned -2763 18 76 if entity @s[distance=..6] run tellraw @s {"text":"空が黒く、不気味な植物の庭園が見えます。","color":"gray","bold":true}
execute positioned -2739 18 52 if entity @s[distance=..6] run tellraw @s {"text":"極寒の地でペンギンが白目をむいて気絶してます。","color":"gray","bold":true}

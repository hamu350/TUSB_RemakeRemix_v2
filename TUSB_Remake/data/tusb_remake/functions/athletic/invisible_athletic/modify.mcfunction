#> tusb_remake:athletic/invisible_athletic/modify
# 透明アスレチックのコマンドを修正する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 足場表示用
execute in minecraft:the_nether run data modify block -518 90 1077 Command set value "fill ~ ~1 ~ ~3 ~1 ~ minecraft:stone_pressure_plate replace minecraft:stone_pressure_plate"
execute in minecraft:the_nether run data modify block -517 89 1077 Command set value "execute as @a[x=-539,y=41,z=1058,dx=47,dy=47,dz=59] at @s positioned ~-10 61 ~-10 run fill ~ ~ ~ ~20 ~10 ~20 minecraft:light_gray_stained_glass replace minecraft:barrier"
execute in minecraft:the_nether run data modify block -516 89 1077 Command set value "playsound minecraft:entity.lightning_bolt.thunder master @a[x=-539,y=41,z=1058,dx=47,dy=47,dz=59] ~ 100 ~ 0.1 1.414 1"

### 足場消し用
execute in minecraft:the_nether run data modify block -515 90 1077 Command set value "fill -532 61 1064 -498 71 1111 minecraft:barrier replace minecraft:light_gray_stained_glass"
execute in minecraft:the_nether run data modify block -514 90 1077 Command set value "clear @a[x=-539,y=41,z=1048,dx=47,dy=47,dz=73] minecraft:fishing_rod{TrialItem:1b}"
execute in minecraft:the_nether run data modify block -513 90 1077 Command set value "give @a[x=-539,y=41,z=1058,dx=47,dy=47,dz=59] minecraft:fishing_rod{Enchantments:[{}],TrialItem:1b,Damage:32} 1"

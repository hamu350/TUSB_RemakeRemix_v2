# Update Room作成
fill -1905 3 -97 -1921 19 -109 iron_block hollow
fill -1906 4 -98 -1920 18 -108 light[level=15]

# 入口ゲート
fill -2740 90 -382 -2740 90 -383 air
fill -2740 90 -382 -2740 90 -383 minecraft:end_gateway{ExactTeleport:1b,ExitPortal:{X:-1906,Y:4,Z:-106}}
# 文字
summon text_display -2740.0 91.30 -382.0 {text:'[{"text":"Sys","color":"white","obfuscated":true},{"text":" Update Room ","color":"gold","obfuscated":false},{"text":"Sys","color":"white","obfuscated":true}]',Rotation:[-90f,0f]}
# 帰還ゲート
setblock -1906 4 -108 end_gateway{ExactTeleport:1b,ExitPortal:{X:-2737,Y:90,Z:-382}}
# 文字
summon text_display -1905.5 5.3 -107.5 {text:'[{"text":"Sys","color":"white","obfuscated":true},{"text":" Exit ","color":"gold","obfuscated":false},{"text":"Sys","color":"white","obfuscated":true}]',Rotation:[45f,0f]}

# CMD適応
setblock -1909 4 -108 minecraft:oak_pressure_plate
setblock -1911 4 -108 minecraft:oak_pressure_plate
setblock -1913 4 -108 minecraft:oak_pressure_plate
setblock -1915 4 -108 minecraft:oak_pressure_plate
setblock -1909 3 -108 command_block{Command:"execute positioned ~-0.5 ~0.5 ~-0.5 run data remove entity @e[type=item,limit=1,sort=nearest,dx=0] Item.tag.CustomModelData"}
setblock -1911 3 -108 command_block{Command:"execute positioned ~-0.5 ~0.5 ~-0.5 run data modify entity @e[type=item,limit=1,sort=nearest,dx=0] Item.tag.CustomModelData set value 1"}
setblock -1913 3 -108 command_block{Command:"execute positioned ~-0.5 ~0.5 ~-0.5 run data modify entity @e[type=item,limit=1,sort=nearest,dx=0] Item.tag.CustomModelData set value 2"}
setblock -1915 3 -108 command_block{Command:"execute positioned ~-0.5 ~0.5 ~-0.5 run data modify entity @e[type=item,limit=1,sort=nearest,dx=0] Item.tag.CustomModelData set value 3"}
setblock -1909 5 -108 oak_wall_sign[facing=south]{Text1:'{"text":"remove:"}',Text2:'{"text":"CustomModelData"}',Text3:'{"text":"超作業台、取引用"}',Text4:'{"text":"アイテムを乗せて適応"}'}
setblock -1911 5 -108 oak_wall_sign[facing=south]{Text2:'{"text":"CMD:1"}'}
setblock -1913 5 -108 oak_wall_sign[facing=south]{Text2:'{"text":"CMD:2"}'}
setblock -1915 5 -108 oak_wall_sign[facing=south]{Text2:'{"text":"CMD:3"}'}
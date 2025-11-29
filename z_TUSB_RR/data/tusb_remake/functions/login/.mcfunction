#> tusb_remake:login/
# ログイン時に毎回する処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### サーバープロパティ間違ってる時のために、難易度ハードにする
difficulty hard

### 正常な時
execute if entity @s[tag=Resolved] if score @s Job = @s Job run function tusb_remake:login/normal
### エラーの時
execute if entity @s[tag=Resolved] unless score @s Job = @s Job run function tusb_remake:login/error

### ログインしたフラグをリセット
scoreboard players reset @s LeaveGame

###難易度調整
function tusb_remake:set_difficulty/


## TODO
# setblock -2722 90 -393 minecraft:oak_wall_sign[facing=south,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function tusb_remake:player/mp/reset_display"},"text":"=注意="}',Text2:'{"bold":true,"color":"gold","text":"MP表示を整理します"}',Text3:'{"bold":true,"color":"gold","text":"非ﾛｸﾞｲﾝﾌﾟﾚｲﾔｰのMPは"}',Text4:'{"bold":true,"color":"gold","text":"はリセットされます"}'}

# setblock -2738 89 -375 minecraft:oak_sign[rotation=12,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"/function tusb_remake:skill/display/mode/a"},"text":""}',Text2:'{"bold":true,"color":"white","text":"モードチェンジ"}',Text3:'{"bold":true,"color":"light_purple","text":"-ルビー-"}',Text4:'""'}

# setblock -2738 89 -380 minecraft:oak_sign[rotation=12,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"/function tusb_remake:skill/display/mode/b"},"text":""}',Text2:'{"bold":true,"color":"white","text":"モードチェンジ"}',Text3:'{"bold":true,"color":"aqua","text":"-サファイア-"}',Text4:'""'}

# setblock -2738 89 -385 minecraft:oak_sign[rotation=12,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"/function tusb_remake:skill/display/instant/a"},"text":""}',Text2:'{"bold":true,"color":"yellow","text":"サポートアクション"}',Text3:'{"bold":true,"color":"red","text":"-ルビー-"}',Text4:'""'}

# setblock -2738 89 -390 minecraft:oak_sign[rotation=12,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"/function tusb_remake:skill/display/instant/b"},"text":""}',Text2:'{"bold":true,"color":"yellow","text":"サポートアクション"}',Text3:'{"bold":true,"color":"dark_aqua","text":"-サファイア-"}',Text4:'""'}
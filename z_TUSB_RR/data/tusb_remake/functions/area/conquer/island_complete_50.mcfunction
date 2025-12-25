#> tusb_remake:area/conquer/island_complete
#
# 50島目攻略処理
#
# @within function tusb_remake:area/conquer/

# 演出
tellraw @a [{"translate":"???","color": "red","italic": true,"bold": true},{"translate":"にささやかれました：","color": "gray","italic": true,"bold": false},{"translate":"深紅の屋敷で待ってるよ、フフフ...","color": "dark_red","italic": true,"bold": true}]
tellraw @a {"translate": ""}
tellraw @a {"translate": "EXドメインにて？？？戦ができるようになりました！","color": "yellow"}

# 入場看板設置
setblock -2720 9 122 minecraft:crimson_sign[rotation=6]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"/function tusb_remake:area/move/game_master/admission"}}',Text2:'["",{"text":"1","bold":true,"obfuscated":true,"color":"dark_red"},{"text":"\\u300c\\uff1f\\uff1f\\uff1f\\u300d\\u3078","bold":true,"color":"dark_red"},{"text":"1","bold":true,"obfuscated":true,"color":"dark_red"}]'}

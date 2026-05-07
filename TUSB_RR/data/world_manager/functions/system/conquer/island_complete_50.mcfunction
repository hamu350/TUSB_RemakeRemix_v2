#> world_manager:area/conquer/island_complete
#
# 50島目攻略処理
#
# @within function world_manager:area/conquer/

# 演出
tellraw @a [{"translate":"???","color": "red","italic": true,"bold": true},{"translate":"にささやかれました：","color": "gray","italic": true,"bold": false},{"translate":"深紅の屋敷で待ってるよ、フフフ...","color": "dark_red","italic": true,"bold": true}]
tellraw @a {"translate": ""}
tellraw @a {"translate": "EXドメインにて？？？戦ができるようになりました！","color": "yellow"}

# 入場看板設置
setblock -2720 9 122 minecraft:crimson_sign[rotation=6]{GlowingText: 0b, Color: "black", Text4: '{"text":""}', x: -2720, Text3: '{"text":""}', y: 9, Text2: '{"extra":[{"bold":true,"obfuscated":true,"color":"dark_red","text":"1"},{"bold":true,"color":"dark_red","text":"「？？？」へ"},{"bold":true,"obfuscated":true,"color":"dark_red","text":"1"}],"text":""}', z: 122, Text1: '{"clickEvent":{"action":"run_command","value":"/execute at @s run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.1 50 force @a[distance=..4]"},"text":""}', id: "minecraft:sign"}

execute positioned -2720 9 122 run forceload remove ~ ~ ~ ~

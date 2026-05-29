#> mob_manager:villager/talk_event/farmer/ok
# 農家との会話
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### アイテムは直接渡す
loot give @p[gamemode=!spectator] kill @s
### 本来のドロップはなしにして🐏バイバイ
data modify entity @s DeathLootTable set value "minecraft:empty"
kill @s
### お礼
tellraw @a {"translate":"* %1$s 「連れて来て下さったのですか！ ありがとうございます。これはほんのお礼です。お受取り下さい。」","with":[{"text":"農業家","color":"dark_green"}]}
tellraw @a {"translate":"* %1$s 「お～い、みんな！ ごはんだぞ～！！」","with":[{"text":"農業家","color":"dark_green"}]}

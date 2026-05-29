#> mob_manager:villager/talk_event/farmer/ng
# 農家との会話
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### アイテムは直接渡す
loot give @p[gamemode=!spectator] kill @s
### 本来のドロップはなしにして🐏バイバイ
data modify entity @s DeathLootTable set value "minecraft:empty"
kill @s
### 残念メッセージ
tellraw @a {"translate":"* %1$s 「あぁ…連れて来て下さったのですか…。ありがとうございます。でも食事の時間はもう終わってしまいました…。」","with":[{"text":"農業家","color":"dark_green"}]}

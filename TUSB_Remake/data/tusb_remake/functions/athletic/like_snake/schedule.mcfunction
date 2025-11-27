#> tusb_remake:athletic/like_snake/schedule
# スピードラン
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.
### スケジュール

execute as 0-0-4-0-6 at @s positioned ~ ~0.4375 ~ run setblock ~ ~27 ~ minecraft:quartz_block keep
execute as 0-0-4-0-7 at @s positioned ~ ~0.4375 ~ run setblock ~ ~27 ~ minecraft:air replace

execute as 0-0-4-0-6 at @s run data modify entity @s PortalCooldown set value 0
execute as 0-0-4-0-7 at @s run data modify entity @s PortalCooldown set value 0

### 再度スケジュール
execute in minecraft:overworld run schedule function tusb_remake:athletic/like_snake/schedule 1t

### 扉を開ける <= 片方なくなったとき
execute unless entity 0-0-4-0-6 if entity 0-0-4-0-7 in minecraft:the_nether positioned -358 79 1088 unless block ~ ~ ~ minecraft:air run fill ~ ~ ~ ~2 ~2 ~ minecraft:air
### 扉を閉じる <= 両方なくなったとき
execute unless entity 0-0-4-0-6 unless entity 0-0-4-0-7 in minecraft:the_nether run clone -358 49 1088 -356 51 1088 -358 79 1088
execute unless entity 0-0-4-0-6 unless entity 0-0-4-0-7 in minecraft:overworld run schedule clear tusb_remake:athletic/like_snake/schedule

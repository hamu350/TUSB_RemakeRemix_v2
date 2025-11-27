#> tusb_remake:nether_boss/attack_check
# ネザーボスの攻撃タイミングの確認
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## スポナーの表示を更新するよ～
## スポナーがあったら§0 黒
execute as @e[tag=NetherBossSpawner] run data merge entity @s {CustomName:'"§0⬛"'}
## スポナーがなかったら§c 赤
execute as @e[tag=NetherBossSpawner] at @s unless block ~ ~ ~ minecraft:spawner run data merge entity @s {CustomName:'"§c⬛"'}
## もしも黒スポナーがなかったらクリア！！
execute unless entity @e[tag=NetherBossSpawner,name="§0⬛"] run data modify storage tusb_remake: nether_boss_clear set value true

## ネザーボスのカウントを増やす
execute store result storage tusb_remake: nether_boss_count int -1 run data get storage tusb_remake: nether_boss_count -1.0000000001
## カウントが44になっていたら、ドラゴンが吠える
execute if data storage tusb_remake: {nether_boss_count:44} as 0-0-1-0-4 at @s positioned ~ ~-30 ~74 run playsound minecraft:entity.ender_dragon.growl master @a[distance=..80] ~ 0 ~ 0.1 0.7 1
## カウントが46になっていたら、アタックチャーンス！
execute if data storage tusb_remake: {nether_boss_count:46} run function tusb_remake:nether_boss/attack_chance
## クリアしていたら、クリア演出！
execute if data storage tusb_remake: {nether_boss_clear:true} run function tusb_remake:nether_boss/clear

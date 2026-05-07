#> player_manager:effect/invisible/
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### エーテル
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:1b}]}] run function player_manager:effect/invisible/ether/1
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:2b}]}] run function player_manager:effect/invisible/ether/2
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:3b}]}] run function player_manager:effect/invisible/ether/3
### エリクサー
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:4b}]}] run function player_manager:effect/invisible/elixir/1
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:5b}]}] run function player_manager:effect/invisible/elixir/2

### 死の宣告
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:0b}]},tag=!Doom] run function player_manager:effect/invisible/doom/give
### 聖水
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:6b}]},tag=Doom] run function player_manager:effect/invisible/doom/clear

effect clear @s minecraft:invisibility

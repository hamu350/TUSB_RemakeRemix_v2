#> tusb_remake:player/invisible/
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### エーテル
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:1b}]}] run function tusb_remake:player/invisible/ether/1
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:2b}]}] run function tusb_remake:player/invisible/ether/2
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:3b}]}] run function tusb_remake:player/invisible/ether/3
### エリクサー
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:4b}]}] run function tusb_remake:player/invisible/elixir/1
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:5b}]}] run function tusb_remake:player/invisible/elixir/2

### 死の宣告
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:0b}]},tag=!Doom] run function tusb_remake:player/invisible/doom/
### 聖水
execute if entity @s[nbt={ActiveEffects:[{Id:14,Amplifier:6b}]},tag=Doom] run function tusb_remake:player/invisible/doom/clear

effect clear @s minecraft:invisibility

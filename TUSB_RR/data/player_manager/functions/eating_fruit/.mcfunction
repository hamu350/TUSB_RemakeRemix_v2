#> player_manager:eating_fruit/
# コーラスフルーツを食べた時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

me 「この果物、虫はいってるうううううう！！！」

summon minecraft:endermite ~ ~ ~ {CustomName:'"コーラスマイト"',Health:200f,Lifetime:1900,Attributes:[{Name:"minecraft:generic.max_health",Base:200d},{Name:"minecraft:generic.movement_speed",Base:0.3d},{Name:"generic.attack_damage",Base:1d},{Name:"generic.knockback_resistance",Base:0.3d},{Name:"generic.follow_range",Base:32d}],HandItems:[{tag:{Enchantments:[{id:"minecraft:power",lvl:20s}]},id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0.0f,0.0f]}

### キャンセルするためにアイテムをドロップさせちゃおう！
## メインハンド
execute if data entity @s SelectedItem{id:"minecraft:chorus_fruit"} run function player_manager:eating_fruit/drop/mainhand
## オフハンド
execute if data entity @s Inventory[{id:"minecraft:chorus_fruit",Slot:-106b}] run function player_manager:eating_fruit/drop/offhand

advancement revoke @s only player_manager:use/eating_fruit

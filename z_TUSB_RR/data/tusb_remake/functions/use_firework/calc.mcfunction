#> tusb_remake:player/use_firework/calc
# 花火を使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 耐久力を1/6消費する
execute store result score _ TUSB run data get entity @s Inventory[{Slot:102b}].tag.Damage

### もし 431以下なら耐久力を消費させる
execute if score _ TUSB matches 2..431 run function tusb_remake:player/use_firework/consume

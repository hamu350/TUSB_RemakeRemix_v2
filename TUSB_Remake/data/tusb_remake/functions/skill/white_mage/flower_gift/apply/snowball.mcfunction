#> tusb_remake:skill/white_mage/flower_gift/apply/snowball
### 雪玉をフラワーギフトにする
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify entity @s Tags set value [FlowerGift,FlyingObject,Driftable,TypeChecked]

execute if score _ ActivatedSkill matches 4220 run tag @s add FlowerGift1
execute if score _ ActivatedSkill matches 4221 run tag @s add FlowerGift2
execute if score _ ActivatedSkill matches 4222..4229 run tag @s add FlowerGift3

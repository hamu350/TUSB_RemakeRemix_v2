#> tusb_remake:skill/white_mage/flower_gift/schedule/hit/1
# フラワーギフトが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

item replace entity @s weapon.offhand with minecraft:poppy{display:{Name:'"白魔導士より愛を込めて"'}}

### リメイク：効果量アップ
attribute @s minecraft:generic.follow_range modifier add 5eb654be-6e0c-4d98-ba2b-7385beb91de2 "FlowerGift" -0.65 multiply

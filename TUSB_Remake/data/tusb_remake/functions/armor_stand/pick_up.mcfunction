#> tusb_remake:armor_stand/pick_up
# 特殊なアーマースタンドからアイテムを拾い上げた時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 近くの特殊アーマースタンドで、もうアイテムを持っていなかったら、しんでもらう
execute anchored eyes positioned ^ ^ ^5 as @e[type=armor_stand,distance=..5,nbt={DisabledSlots: 2039326, Health: 1.0f, ArmorItems: [{tag: {AttributeModifiers: [{Name: "minus"}]}}]}] unless data entity @s HandItems[].id run kill @s

advancement revoke @s only tusb_remake:armor_stand/pick_up

#> tusb_remake:skill/bow/crossbow
# クロスボウを使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# クロスボウ用に内容を変更

### エンチェイス
execute as @s[tag=EnChase] run function tusb_remake:skill/archer/enchase/shoot/
execute as @s[scores={CurrentMode=3200..3209}] run function tusb_remake:skill/archer/stakes_fire/shoot
execute as @s[scores={CurrentMode=3210..3219}] run function tusb_remake:skill/archer/chain_arrow/shoot
execute as @s[scores={CurrentMode=3230..3239}] run function tusb_remake:skill/archer/blast_shot/shoot
execute as @s[scores={CurrentMode=3240..3249}] run function tusb_remake:skill/archer/bird_strike/shoot
execute as @s[scores={CurrentMode=3250..3259}] run function tusb_remake:skill/archer/ghast_cannon/shoot
execute as @s[scores={CurrentMode=3260..3269}] run function tusb_remake:skill/archer/fatal_shot/shoot

# 拡散エンチャントがついていたら更に処理する
# マナはしっかりと3回分消費します

execute if data entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:multishot"}] run function tusb_remake:skill/bow/crossbow_multishot
execute if data entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:multishot"}] run function tusb_remake:skill/bow/crossbow_multishot

scoreboard players reset @s UseCrossBow

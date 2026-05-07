#> mob_manager:entity/time_shield/replace_shield
#
# 確率に引っかかったmobの盾を変える


# 初期化する
data modify storage remake_remix: time_shield.mob_data set value {}

# データを取ってくる
data modify storage remake_remix: time_shield.mob_data.id set from entity @s HandItems[1].id
data modify storage remake_remix: time_shield.mob_data.tag set from entity @s HandItems[1].tag
data modify storage remake_remix: time_shield.mob_data.DropChances set from entity @s HandDropChances[1]

# もしなにもないなら時送りの盾を持たせる
execute unless data storage remake_remix: time_shield.mob_data.id run function mob_manager:entity/time_shield/set_attribute

# ドロップチャンスを0に
# デフォ0.085なので1000倍にする
execute store result score @s TUSB run data get storage remake_remix: time_shield.mob_data.DropChances 1000

execute if score @s TUSB matches 85 run data modify entity @s HandDropChances[1] set value 0.0f
# リセット
scoreboard players reset @s TUSB

# もしデータが有るならすでにある分のデータを考慮した上でattributeを強化する
execute if data storage remake_remix: time_shield.mob_data.id run function mob_manager:entity/time_shield/modify_offhand_data

# イルカの好意エフェクトを付与(変わってるよっていう見た目を出すために)
effect give @s conduit_power 1000000 127 false

# 体力回復する
effect give @s[type=#lib:undead] instant_damage 2 11
effect give @s[type=!#lib:undead] instant_health 2 11

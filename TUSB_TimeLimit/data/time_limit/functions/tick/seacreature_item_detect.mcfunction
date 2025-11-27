#> time_limit:tick/seacreature_item_detect

# 元アイテムだけ決めて元アイテムがあるならーみたいな
# スポーンをloottableでアイテム判断するんじゃなくて乱数召喚にするか?
# これ普通にこのコマンドをtickのとこにおけばよくないすか(
execute if entity @e[type=item,tag=!spawned,nbt={Item:{id:"minecraft:structure_void"}}] at @e[type=item,tag=!spawned,nbt={Item:{id:"minecraft:structure_void"}}] run function time_limit:fishing/creature/
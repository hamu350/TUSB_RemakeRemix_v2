#> time_limit:time_shield/calculate

# 時の盾のデータを計算するます(1hに1回動く)

# 時間更新コマンドをここで挟んでおく
scoreboard players operation Time Spend_Hour = $Temp Spend_Time
scoreboard players operation Ver After_Version = Time Spend_Hour
# 今どれくらいの効果にすればいいかを計算する

# tagがついたんでtagのpathを追加しないといけません
# unbreaking
execute store result storage time_limit:storage shield_data.tag.Enchantments[0].lvl short 3 run scoreboard players get Time Spend_Hour
# kb
execute store result storage time_limit:storage shield_data.tag.Enchantments[1].lvl short 3 run scoreboard players get Time Spend_Hour
# sharp
execute store result storage time_limit:storage shield_data.tag.Enchantments[2].lvl short 3 run scoreboard players get Time Spend_Hour
# HP(offhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[0].Amount double 0.03 run scoreboard players get Time Spend_Hour
# speed(offhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[1].Amount double 0.03 run scoreboard players get Time Spend_Hour
# antikb(offhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[2].Amount double 0.03 run scoreboard players get Time Spend_Hour
# atk dmg(offhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[3].Amount double 0.03 run scoreboard players get Time Spend_Hour
# armor(offhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[4].Amount double 0.03 run scoreboard players get Time Spend_Hour
# attack speed(offhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[5].Amount double 0.03 run scoreboard players get Time Spend_Hour
# HP(mainhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[6].Amount double 0.03 run scoreboard players get Time Spend_Hour
# speed(mainhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[7].Amount double 0.03 run scoreboard players get Time Spend_Hour
# antikb(mainhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[8].Amount double 0.03 run scoreboard players get Time Spend_Hour
# atk dmg(mainhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[9].Amount double 0.03 run scoreboard players get Time Spend_Hour
# armor(mainhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[10].Amount double 0.03 run scoreboard players get Time Spend_Hour
# attack speed(mainhand)
execute store result storage time_limit:storage shield_data.tag.AttributeModifiers[11].Amount double 0.03 run scoreboard players get Time Spend_Hour
# 上限値処理
execute if score Time Spend_Hour matches 11.. run data modify storage time_limit:storage shield_data.tag.Enchantments[1].lvl set value 30
execute if score Time Spend_Hour matches 11.. run data modify storage time_limit:storage shield_data.tag.Enchantments[2].lvl set value 30
execute if score Time Spend_Hour matches 11.. run data modify storage time_limit:storage shield_data.tag.AttributeModifiers[1].Amount set value 0.30
execute if score Time Spend_Hour matches 11.. run data modify storage time_limit:storage shield_data.tag.AttributeModifiers[7].Amount set value 0.30
# speedとsharp、kbがmax30だけ、それ以外は限界値なし(仕様上の限界値はあるが)

# versionも入れないと
execute store result storage time_limit:storage shield_data.tag.version short 1 run scoreboard players get Time Spend_Hour
# 経過時間の表示
tellraw @a [{"text": "スタートしてから","bold": false,"color":"white"},{"score":{"name": "Time","objective": "Spend_Hour"},"bold": true,"color":"red"},{"text":"時間","bold": true,"color":"red"},{"text":"が経過しました。","bold": false,"color":"white"}]

# 現在の経過時間をstorageに代入(参照用)、いらんくない
#execute store result storage time_limit:storage spend_hour.version short 1 run scoreboard players get Time Spend_Hour
#> time_limit:tick/replace_shield

# 確率に引っかかったmobの盾を変える

# まず元々オフハンドに持っているデータを持ってくる
# idとタグがほしい

# say shield tried
# 初期化する
data modify storage time_limit:storage mob_data set value {}

# データを取ってくる
data modify storage time_limit:storage mob_data.id set from entity @s HandItems[1].id
data modify storage time_limit:storage mob_data.tag set from entity @s HandItems[1].tag
data modify storage time_limit:storage mob_data.DropChances set from entity @s HandDropChances[1]

# もしなにもないなら時送りの盾を持たせる
# これ別にオフハンドに持たせるからエンチャント適応されてる状態でもいいっちゃいいなぁ、、、
# そのままreplaceしてその後にデータ変える方が楽そう

# てかこれ{}はいってunlessじゃなくなる可能性が、、
# minecraft:shield{BlockEntityTag: {Patterns: [{Pattern: "dls", Color: 2}, {Pattern: "drs", Color: 2}, {Pattern: "sc", Color: 2}, {Pattern: "mr", Color: 7}, {Pattern: "tts", Color: 10}, {Pattern: "bts", Color: 10}, {Pattern: "cbo", Color: 10}, {Pattern: "cr", Color: 10}, {Pattern: "mc", Color: 2}, {Pattern: "bo", Color: 15}, {Pattern: "bo", Color: 2}, {Pattern: "flo", Color: 15}], Base: 7},RepairCost: 1000000000, HideFlags: 32, display: {Lore: ['{"text":"§3時と共に強くなる盾。"}'], Name: '{"text":"§f§ktime§3§l時送りの盾§f§ktime"}'}, Enchantments: [{lvl: 0s, id: "minecraft:unbreaking"}, {lvl: 0s, id: "minecraft:knockback"}, {lvl: 0s, id: "minecraft:sharpness"}], Damage: 0, version: 1, AttributeModifiers: [{Amount: 0.0d, Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 2, 0, 1], Name: "HP"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 2], Name: "SPD"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 2, 0, 3], Name: "KB"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 2, 0, 4], Name: "ATK"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 2, 0, 5], Name: "AMR"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 2, 0, 6], Name: "ATS"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 7], Name: "HP"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 8], Name: "SPD"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 1, 0, 9], Name: "KB"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 1, 0, 10], Name: "ATK"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 1, 0, 11], Name: "AMR"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 1, 0, 12], Name: "ATS"}]}

# シールドをまずつける
execute unless data storage time_limit:storage mob_data.id run data modify entity @s HandItems[1] set value {id:"minecraft:shield",Count:1b}
# その後に盾のデータを入れる、敵が持ってるものは青色のやつにする
# execute unless data storage time_limit:storage mob_data.id run data modify entity @s HandItems[1].tag set value {BlockEntityTag: {Patterns: [{Pattern: "dls", Color: 3}, {Pattern: "drs", Color: 3}, {Pattern: "sc", Color: 3}, {Pattern: "mr", Color: 7}, {Pattern: "tts", Color: 9}, {Pattern: "bts", Color: 9}, {Pattern: "cbo", Color: 9}, {Pattern: "cr", Color: 9}, {Pattern: "mc", Color: 3}, {Pattern: "bo", Color: 15}, {Pattern: "bo", Color: 3}, {Pattern: "flo", Color: 15}], Base: 7},RepairCost: 1000000000, HideFlags: 32, display: {Lore: ['{"text":"§3時と共に強くなる盾。"}'], Name: '{"text":"§f§ktime§3§l時送りの盾§f§ktime"}'}, Enchantments: [{lvl: 0s, id: "minecraft:unbreaking"}, {lvl: 0s, id: "minecraft:knockback"}, {lvl: 0s, id: "minecraft:sharpness"}], Damage: 0, version: 1, AttributeModifiers: [{Amount: 0.0d, Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 2, 0, 1], Name: "HP"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 2], Name: "SPD"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 2, 0, 3], Name: "KB"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 2, 0, 4], Name: "ATK"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 2, 0, 5], Name: "AMR"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 2, 0, 6], Name: "ATS"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 7], Name: "HP"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 8], Name: "SPD"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 1, 0, 9], Name: "KB"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 1, 0, 10], Name: "ATK"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 1, 0, 11], Name: "AMR"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 1, 0, 12], Name: "ATS"}]}
execute unless data storage time_limit:storage mob_data.id run data modify entity @s HandItems[1].tag set value {BlockEntityTag: {Patterns: [{Pattern: "dls", Color: 3}, {Pattern: "drs", Color: 3}, {Pattern: "sc", Color: 3}, {Pattern: "mr", Color: 7}, {Pattern: "tts", Color: 9}, {Pattern: "bts", Color: 9}, {Pattern: "cbo", Color: 9}, {Pattern: "cr", Color: 9}, {Pattern: "mc", Color: 3}, {Pattern: "bo", Color: 15}, {Pattern: "bo", Color: 3}, {Pattern: "flo", Color: 15}], Base: 7},RepairCost: 1000000000, HideFlags: 32, display: {Lore: ['{"text":"§3時と共に強くなる盾。"}'], Name: '{"text":"§f§ktime§3§l時送りの盾§f§ktime"}'}, Enchantments: [{lvl: 0s, id: "minecraft:unbreaking"}, {lvl: 0s, id: "minecraft:knockback"}, {lvl: 0s, id: "minecraft:sharpness"}], Damage: 0, version: 1, AttributeModifiers: [{Amount: 0.0d, Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 12, 0, 1], Name: "HP"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 12, 0, 2], Name: "SPD"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 12, 0, 3], Name: "KB"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 12, 0, 4], Name: "ATK"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 12, 0, 5], Name: "AMR"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 12, 0, 6], Name: "ATS"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 11, 0, 7], Name: "HP"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 11, 0, 8], Name: "SPD"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 11, 0, 9], Name: "KB"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 11, 0, 10], Name: "ATK"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 11, 0, 11], Name: "AMR"}, {Amount: 0.0d, Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 11, 0, 12], Name: "ATS"}]}
# こっちはエンチャントとかも付与しちゃうな、まあええか。

# 時間を元にattributeをset
execute unless data storage time_limit:storage mob_data.id run data modify entity @s HandItems[1].tag.AttributeModifiers set from storage time_limit:storage shield_data.tag.AttributeModifiers

# ドロップチャンスを0に

# デフォが0.085だから1000倍で取ればいいかなー
execute store result score @s TUSB run data get storage time_limit:storage mob_data.DropChances 1000

execute if score @s TUSB matches 85 run data modify entity @s HandDropChances[1] set value 0.0f
# リセット
scoreboard players reset @s TUSB


# もしデータが有るならすでにある分のデータを考慮した上でattributeを強化する
execute if data storage time_limit:storage mob_data.id run function time_limit:tick/modify_offhand_data

# イルカの好意エフェクトを付与(変わってるよっていう見た目を出すために)
effect give @s conduit_power 1000000 0 false

# 体力回復する
# attribute考慮で体力計算めんどいんでエフェクト付与する
# 最大体力は現状2048だからこの辺の仕様上これくらいあれば足りるはず

# 体力回復は1tickじゃなくて2tickじゃないとうまく動作しなかった、schedule入れても多分無理なやつかなぁっていう気もするっちゃする
# でも手打ちとかだと大丈夫だからよくわからんよなぁ、まぁ負荷的にschedule入れると探索だるいからいいや
effect give @s[type=#tusb_remake:undead] instant_damage 2 11
effect give @s[type=!#tusb_remake:undead] instant_health 2 11
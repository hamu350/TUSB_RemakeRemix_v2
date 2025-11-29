#> asset:villager/0000.example/trade_info/2.trade_info

# まずデータを初期化します(これは消さないでね)
# data remove storage asset: villager

# まずアイテムを持たせる防具立てを召喚します
summon armor_stand -2000.0 0.0 0.0 {Tags:["ItemHolder"]}

# 交易品となるアイテムを持たせます(Mainhand→buy、Offhand→buyB、Head→sell)
# item replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand with diamond 5
# item replace entity @e[tag=ItemHolder,limit=1] weapon.offhand with emerald 64
# item replace entity @e[tag=ItemHolder,limit=1] armor.head with diamond_block 1
# /loot版も用意しておきますね
# /lootでやる場合、個数を別コマンドで設定してあげる必要があります
# loot replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand loot <path>
# data modify entity @e[tag=ItemHolder,limit=1] HandItems[0].Count set value 1
# loot replace entity @e[tag=ItemHolder,limit=1] weapon.offhand loot <path>
# data modify entity @e[tag=ItemHolder,limit=1] HandItems[1].Count set value 1
# loot replace entity @e[tag=ItemHolder,limit=1] armor.head loot <path>
# data modify entity @e[tag=ItemHolder,limit=1] ArmorItems[0].Count set value 1

# 持たせたアイテムを元にstorage上の取引を追加します
# data modify storage _: _ set from entity @e[tag=ItemHolder,limit=1]
# data modify storage asset: villager.Offers.Recipes set value {buy:{},buyB:{},sell:{}}
# data modify storage asset: villager.Offers.Recipes[-1].buy set from storage _: _.HandItems[0]
# data modify storage asset: villager.Offers.Recipes[-1].buyB set from storage _: _.HandItems[1]
# data modify storage asset: villager.Offers.Recipes[-1].sell set from storage _: _.ArmorItems[0]
# data remove storage _: _
# 他にも入れたい上方(xpや使用上限など)があれば各自設定します
# data modify storage asset: villager.Offers.Recipes[-1] merge value {xp:0,MaxUses:2147483637}

# 交易品を持たせるところから繰り返します。オフハンドを消したりするのは忘れずに

# 取引情報を設定し終わったら防具立てを処理する
# kill @e[tag=ItemHolder,limit=1]

# nbtなどはsummon側で設定します。ということで終了

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:torch", Count: 5b}, buy: {id: "minecraft:gravel", Count: 30b}, sell: {id: "minecraft:armor_stand", Count: 3b, tag: {NoGravity: 1b, RepairCost: 1000000000, display: {Lore: ['{"text":"§e上空に向けて、§7砂利§eを設置する"}', '{"text":"§bﾜｰﾅﾝｶｽｺﾞｲ-§e奴を召喚する。"}'], Name: '{"text":"§7§l積み上げの印板"}'}, Enchantments: [], EntityTag: {Tags: ["SignStand", "GravelStacker", "TypeChecked"], id: "minecraft:armor_stand"}, Invulnerable: 1b, Invisible: 1b}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:oak_planks", Count: 16b}, buy: {id: "minecraft:emerald", Count: 16b}, sell: {id: "minecraft:armor_stand", Count: 1b, tag: {NoGravity: 1b, RepairCost: 1000000000, display: {Lore: ['{"text":"§a§l豪華なテント§eが出現する。"}', '{"text":"§e※十分な空間がないと設置されない。"}', '{"text":"§e§o※§c§oネザー§e§oや§5§oエンド§e§oでは使用出来ない。"}'], Name: '{"text":"§2§l宿の印板"}'}, Enchantments: [], EntityTag: {Tags: ["SignStand", "TentPlacer", "OverOnly", "TypeChecked"], id: "minecraft:armor_stand"}, Invulnerable: 1b, Invisible: 1b}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:iron_bars", Count: 8b}, buy: {id: "minecraft:dirt", Count: 16b}, sell: {id: "minecraft:armor_stand", Count: 1b, tag: {NoGravity: 1b, RepairCost: 1000000000, display: {Lore: ['{"text":"§r§e設置して使用すると、"}', '{"text":"§f§l羊スポナー§eを設置する。"}'], Name: '{"text":"§f§l羊スポナー"}'}, Enchantments: [], EntityTag: {Tags: ["SignStand", "SpawnerStand", "SheepSpawner", "TypeChecked"], id: "minecraft:armor_stand"}, Invulnerable: 1b, Invisible: 1b}}, xp: 1, uses: 4, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:iron_bars", Count: 8b}, buy: {id: "minecraft:gravel", Count: 64b}, sell: {id: "minecraft:armor_stand", Count: 1b, tag: {NoGravity: 1b, RepairCost: 1000000000, display: {Lore: ['{"text":"§r§e設置して使用すると、"}', '{"text":"§8§l砂利スポナー§eを設置する。"}'], Name: '{"text":"§8§l砂利スポナー"}'}, Enchantments: [], EntityTag: {Tags: ["SignStand", "SpawnerStand", "GravelSpawner", "TypeChecked"], id: "minecraft:armor_stand"}, Invulnerable: 1b, Invisible: 1b}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:diamond", Count: 4b}, buy: {id: "minecraft:ender_pearl", Count: 8b}, sell: {id: "minecraft:armor_stand", Count: 1b, tag: {NoGravity: 1b, RepairCost: 1000000000, display: {Lore: ['{"text":"§r§e設置して使用すると、"}', '{"text":"§7§l狼スポナー§eを設置する。"}'], Name: '{"text":"§7§l狼スポナー"}'}, Enchantments: [], EntityTag: {Tags: ["SignStand", "SpawnerStand", "WolfSpawner", "TypeChecked"], id: "minecraft:armor_stand"}, Invulnerable: 1b, Invisible: 1b}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:diamond", Count: 2b}, buy: {id: "minecraft:ender_pearl", Count: 4b}, sell: {id: "minecraft:armor_stand", Count: 1b, tag: {NoGravity: 1b, RepairCost: 1000000000, display: {Lore: ['{"text":"§eｲﾝﾍﾞﾝﾄﾘｰ内に下記で要求されたｱｲﾃﾑがあった場合、"}', '{"text":"§eそれと引き換えにｱｲﾃﾑを入手する事が出来る印板。"}', '{"text":"§a取引内容：羊毛32個をｴﾒﾗﾙﾄﾞ1個と交換する。"}'], Name: '{"text":"§a§l取引§f§lの印板(§a§l羊毛 → ｴﾒﾗﾙﾄﾞ§f§l)"}'}, Enchantments: [], EntityTag: {Tags: ["SignStand", "PermanentStand", "WoolTrader", "TypeChecked"], id: "minecraft:armor_stand"}, Invulnerable: 1b, Invisible: 1b}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
#> asset:villager/0001.hello_work/trade_info/2.trade_info
# ↑ここは一応やって

# まずデータを初期化します(これは消さないでね)
data remove storage asset: villager

# まずアイテムを持たせる防具立てを召喚します
# summon armor_stand -2000.0 0.0 0.0 {Tags:["ItemHolder"]}

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
# data remove storage _: _/
# 他にも入れたい上方(xpや使用上限など)があれば各自設定します
# data modify storage asset: villager.Offers.Recipes[-1] merge value {xp:0,MaxUses:2147483637}

# 交易品を持たせるところから繰り返します。オフハンドを消したりするのは忘れずに

# 取引情報を設定し終わったら防具立てを処理する
# kill @e[tag=ItemHolder,limit=1]

# nbtなどはsummon側で設定します。ということで終了

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'}, JobApply: 1b}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange: 1b, Job: 1, display: {Lore: ['{"text":"§r§b黄金の鉄の塊"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l剣士変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'}, JobApply: 1b}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange: 1b, Job: 2, display: {Lore: ['{"text":"§r§aｱｲｴｴｴ!"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l忍者変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'}, JobApply: 1b}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange: 1b, Job: 3, display: {Lore: ['{"text":"§r§cきゅっきゅっきゅっニャー"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l狩人変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'}, JobApply: 1b}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange: 1b, Job: 4, display: {Lore: ['{"text":"§r§fほーーーーりーーーー！"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l白魔導士変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'}, JobApply: 1b}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange: 1b, Job: 5, display: {Lore: ['{"text":"§r§8使いますよ？イオナズン"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l黒魔導士変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'}, JobApply: 1b}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange: 1b, Job: 6, display: {Lore: ['{"text":"§r§e僕と契約して召喚士になってよ"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l召喚士変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:white_wool", Count: 16b}, sell: {id: "minecraft:paper", Count: 1b, tag: {display: {Lore: ['{"text":"§7転職したいのですか？"}', '{"text":"§7いずれまた何らかの形で"}', '{"text":"§7ここを訪れれば"}', '{"text":"§7申請書を差し上げましょう。"}'], Name: '{"text":"§r§lジョブ変更申請書"}'}, JobApply: 1b}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
#> asset:villager/0009.albite_1/trade_info/2.trade_info
# 鉄の方です

# まずデータを初期化します(これは消さないでね)
# data remove storage asset: villager

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
# data remove storage _: _
# 他にも入れたい上方(xpや使用上限など)があれば各自設定します
# data modify storage asset: villager.Offers.Recipes[-1] merge value {xp:0,MaxUses:2147483637}

# 交易品を持たせるところから繰り返します。オフハンドを消したりするのは忘れずに

# 取引情報を設定し終わったら防具立てを処理する
# kill @e[tag=ItemHolder,limit=1]

# nbtなどはsummon側で設定します。ということで終了

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:white_wool", Count: 32b}, sell: {id: "minecraft:emerald", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:white_wool", Count: 32b}, buy: {id: "minecraft:white_wool", Count: 32b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 4b}, sell: {id: "minecraft:torch", Count: 32b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 4b}, sell: {id: "minecraft:ladder", Count: 16b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 2b}, sell: {id: "minecraft:wooden_sword", Count: 1b, tag: {Damage: 0}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:snowball", Count: 16b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 2b}, sell: {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Damage: 0}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 2b}, sell: {id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {Damage: 0}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 2b}, sell: {id: "minecraft:arrow", Count: 32b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 4b}, sell: {id: "minecraft:bow", Count: 1b, tag: {Damage: 0}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:experience_bottle", Count: 10b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 3b}, sell: {id: "minecraft:glass_bottle", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:wheat", Count: 1b}, buy: {id: "minecraft:glass_bottle", Count: 1b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 1, Id: 6b, Amplifier: 0b, ShowParticles: 0b}, {Duration: 0, Id: 12b, Amplifier: 0b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§6心が温まるスープ。"}', '{"text":"§6飲むとHPが回復する。"}'], Name: '{"text":"§e§lコーンスープ"}'}}}, xp: 1, uses: 2, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 1, Id: 6b, Amplifier: 0b, ShowParticles: 0b}, {Duration: 0, Id: 12b, Amplifier: 0b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§6心が温まるスープ。"}', '{"text":"§6飲むとHPが回復する。"}'], Name: '{"text":"§e§lコーンスープ"}'}}}, buy: {id: "minecraft:pumpkin", Count: 1b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 1, Id: 6b, Amplifier: 2b, ShowParticles: 0b}, {Duration: 0, Id: 13b, Amplifier: 127b, ShowParticles: 1b}, {Duration: 0, Id: 25b, Amplifier: -128b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§6ｺｰﾝｽｰﾌﾟにﾊﾟﾝﾌﾟｷﾝを加え"}', '{"text":"§6回復量が増加したもの。"}'], Name: '{"text":"§e§lパンプキンスープ"}'}}}, xp: 1, uses: 2, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:skeleton_spawn_egg", Count: 1b, tag: {EntityTag: {DeathTime: 19s, ArmorItems: [], DeathLootTable: "usb:signs/snowball", id: "minecraft:skeleton", NoAI: 1b, ActiveEffects: [{Duration: 100, Id: 6b, Amplifier: 5b, ShowParticles: 0b}, {Duration: 100, Id: 14b, Amplifier: 0b, ShowParticles: 0b}], Tags: ["RewardEgg", "TypeChecked"], HandItems: []}, RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["#minecraft:all"], display: {Lore: ['{"text":"§f雪が16個収納された筒。"}'], Name: '{"text":"§f雪筒"}'}, Enchantments: []}}, xp: 1, uses: 2, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 4b}, sell: {id: "minecraft:skeleton_spawn_egg", Count: 1b, tag: {EntityTag: {DeathTime: 19s, ArmorItems: [], DeathLootTable: "usb:signs/arrow", id: "minecraft:skeleton", NoAI: 1b, ActiveEffects: [{Duration: 100, Id: 6b, Amplifier: 5b, ShowParticles: 0b}, {Duration: 100, Id: 14b, Amplifier: 0b, ShowParticles: 0b}], Tags: ["RewardEgg", "TypeChecked"], HandItems: []}, RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["#minecraft:all"], display: {Lore: ['{"text":"§f矢が64本収納された筒。"}'], Name: '{"text":"§f矢筒"}'}, Enchantments: []}}, xp: 1, uses: 2, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
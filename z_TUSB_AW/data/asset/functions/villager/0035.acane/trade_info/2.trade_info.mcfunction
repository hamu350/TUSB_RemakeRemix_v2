#> asset:villager/0035.acane/trade_info/2.trade_info

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
# data remove storage _: _
# 他にも入れたい上方(xpや使用上限など)があれば各自設定します
# data modify storage asset: villager.Offers.Recipes[-1] merge value {xp:0,MaxUses:2147483637}

# 交易品を持たせるところから繰り返します。オフハンドを消したりするのは忘れずに

# 取引情報を設定し終わったら防具立てを処理する
# kill @e[tag=ItemHolder,limit=1]

# nbtなどはsummon側で設定します。ということで終了

data modify storage asset: villager set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 8b}, sell: {id: "minecraft:experience_bottle", Count: 16b}, xp: 1, uses: 83, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 10b}, sell: {id: "minecraft:book", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 32b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 4s, id: "minecraft:protection"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 32b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 4s, id: "minecraft:fire_protection"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 32b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 4s, id: "minecraft:feather_falling"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 32b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 4s, id: "minecraft:blast_protection"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 32b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 4s, id: "minecraft:projectile_protection"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 25b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 3s, id: "minecraft:unbreaking"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 40b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 3s, id: "minecraft:thorns"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 20b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 5s, id: "minecraft:sharpness"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 20b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 5s, id: "minecraft:smite"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 20b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 5s, id: "minecraft:bane_of_arthropods"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 25b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:knockback"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 25b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:fire_aspect"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 25b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 5s, id: "minecraft:power"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 32b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 2s, id: "minecraft:punch"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 25b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 1s, id: "minecraft:flame"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:book", Count: 1b}, buy: {id: "minecraft:emerald", Count: 40b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 1s, id: "minecraft:infinity"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
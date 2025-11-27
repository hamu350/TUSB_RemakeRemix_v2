#> asset:villager/0028.towerbank_operator/trade_info/2.trade_info

# まずデータを初期化します(これは消さないでね)
data remove storage asset: villager

# # まずアイテムを持たせる防具立てを召喚します
# summon armor_stand -2000.0 0.0 0.0 {Tags:["ItemHolder"]}

# # 交易品となるアイテムを持たせます(Mainhand→buy、Offhand→buyB、Head→sell)
# item replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand with diamond 5
# item replace entity @e[tag=ItemHolder,limit=1] weapon.offhand with emerald 64
# item replace entity @e[tag=ItemHolder,limit=1] armor.head with diamond_block 1
# # /loot版も用意しておきますね
# # /lootでやる場合、個数を別コマンドで設定してあげる必要があります
# # loot replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand loot <path>
# # data modify entity @e[tag=ItemHolder,limit=1] HandItems[0].Count set value 1
# # loot replace entity @e[tag=ItemHolder,limit=1] weapon.offhand loot <path>
# # data modify entity @e[tag=ItemHolder,limit=1] HandItems[1].Count set value 1
# # loot replace entity @e[tag=ItemHolder,limit=1] armor.head loot <path>
# # data modify entity @e[tag=ItemHolder,limit=1] ArmorItems[0].Count set value 1

# # 持たせたアイテムを元にstorage上の取引を追加します
# data modify storage _: _ set from entity @e[tag=ItemHolder,limit=1]
# data modify storage asset: villager.Offers.Recipes set value {buy:{},buyB:{},sell:{}}
# data modify storage asset: villager.Offers.Recipes[-1].buy set from storage _: _.HandItems[0]
# data modify storage asset: villager.Offers.Recipes[-1].buyB set from storage _: _.HandItems[1]
# data modify storage asset: villager.Offers.Recipes[-1].sell set from storage _: _.ArmorItems[0]
# data remove storage _: _
# # 他にも入れたい上方(xpや使用上限など)があれば各自設定します
# data modify storage asset: villager.Offers.Recipes[-1] merge value {xp:0,MaxUses:2147483637}

# # 交易品を持たせるところから繰り返します。オフハンドを消したりするのは忘れずに

# # 取引情報を設定し終わったら防具立てを処理する
# kill @e[tag=ItemHolder,limit=1]

# nbtなどはsummon側で設定します。ということで終了

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:coal", Count: 1b}, sell: {id: "minecraft:emerald", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:lapis_lazuli", Count: 1b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:iron_ingot", Count: 1b}, sell: {id: "minecraft:emerald", Count: 3b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:gold_ingot", Count: 1b}, sell: {id: "minecraft:emerald", Count: 3b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:diamond", Count: 1b}, sell: {id: "minecraft:emerald", Count: 5b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:beacon", Count: 1b}, sell: {id: "minecraft:emerald_block", Count: 16b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
data modify storage asset: villager.Offers.Recipes append value {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 5b}, sell: {id: "minecraft:diamond", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}
data modify storage asset: villager.Offers.Recipes append value {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald_block", Count: 5b}, sell: {id: "minecraft:diamond_block", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}
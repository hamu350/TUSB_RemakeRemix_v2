# > asset:villager/0000.example/trade_info/2.trade_info

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

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 3b}, sell: {id: "minecraft:filled_map", Count: 1b, tag: {Decorations: [{x: -21.0d, z: -69.0d, id: "exitN1", type: 3b, rot: 0.0d}, {x: 108.0d, z: -46.0d, id: "exitN2", type: 3b, rot: 0.0d}, {x: -16.0d, z: -88.0d, id: "exitN3", type: 3b, rot: 0.0d}, {x: -96.0d, z: 56.0d, id: "exitN4", type: 3b, rot: 0.0d}, {x: -50.0d, z: 34.0d, id: "shopN1", type: 6b, rot: 45.0d}, {x: 36.0d, z: 8.0d, id: "enterN1", type: 5b, rot: 180.0d}, {x: 22.0d, z: -40.0d, id: "enterN2", type: 5b, rot: 180.0d}, {x: 203.0d, z: -20.0d, id: "exitN5", type: 2b, rot: 0.0d}], map: 1, display: {Name: '{"text":"§r§7§n通常世界"}'}}}, xp: 1, uses: 2, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 6b}, sell: {id: "minecraft:filled_map", Count: 1b, tag: {Decorations: [{x: 1287.0d, z: 179.0d, id: "frameU1", type: 4b, rot: 45.0d}, {x: 880.0d, z: -228.0d, id: "enterU1", type: 5b, rot: 180.0d}, {x: 1092.0d, z: 28.0d, id: "frameU2", type: 4b, rot: 45.0d}, {x: 1287.0d, z: 170.0d, id: "exitU1", type: 3b, rot: 0.0d}], map: 3, display: {Name: '{"text":"§r§9§n地下世界"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 12b}, sell: {id: "minecraft:filled_map", Count: 1b, tag: {Decorations: [{x: 0.0d, z: -2220.0d, id: "frameT1", type: 4b, rot: 45.0d}, {x: 24.0d, z: -1829.0d, id: "enterT1", type: 5b, rot: 180.0d}, {x: -10.0d, z: -2230.0d, id: "exitT1", type: 3b, rot: 0.0d}], map: 4, display: {Name: '{"text":"§r§2§nテーブルマウンテン"}'}}}, xp: 1, uses: 2, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 12b}, sell: {id: "minecraft:filled_map", Count: 1b, tag: {Decorations: [{x: 79.0d, z: 747.0d, id: "exitG1", type: 3b, rot: 0.0d}, {x: 71.0d, z: 738.0d, id: "frameG1", type: 4b, rot: 45.0d}, {x: -32.0d, z: 745.0d, id: "enterG1", type: 5b, rot: 180.0d}], map: 5, display: {Name: '{"text":"§r§6§nガリバーランド"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 21b}, sell: {id: "minecraft:filled_map", Count: 1b, tag: {Decorations: [{x: -2483.0d, z: -138.0d, id: "enterC1", type: 5b, rot: 180.0d}, {x: -1935.0d, z: -136.0d, id: "shopC1", type: 6b, rot: 45.0d}, {x: -1739.0d, z: -137.0d, id: "shopC2", type: 6b, rot: 45.0d}, {x: -2322.0d, z: -131.0d, id: "frameC1", type: 4b, rot: 45.0d}, {x: -2228.0d, z: -164.0d, id: "frameC2", type: 4b, rot: 45.0d}, {x: -1904.0d, z: -71.0d, id: "frameC3", type: 4b, rot: 45.0d}], map: 2, display: {Name: '{"text":"§r§f§nクラウディア"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald_block", Count: 32b}, sell: {id: "minecraft:filled_map", Count: 1b, tag: {Decorations: [{x: 0.0d, z: 0.0d, id: "frame", type: 4b, rot: 45.0d}, {x: 1317.0d, z: 1561.0d, id: "enterD1", type: 5b, rot: 180.0d}, {x: 0.0d, z: 0.0d, id: "exitG1", type: 3b, rot: 0.0d}], map: 6, display: {Name: '{"text":"§r§b§nトカルトコルデ"}'}}}, xp: 1, uses: 5, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
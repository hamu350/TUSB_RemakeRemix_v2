#> asset:villager/0026.umihiko/trade_info/2.trade_info

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

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:cod", Count: 1b}, buy: {id: "minecraft:emerald", Count: 5b}, sell: {id: "minecraft:paper", Count: 1b, tag: {display: {Lore: ['{"text":"§6３分間変わったアイテムが釣れるようになります"}', '{"text":"§r§n釣り堀-海幸彦-"}'], Name: '{"text":"§r§l釣りチケ3分"}'}}}, xp: 1, uses: 57, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:fishing_rod", Count: 1b, tag: {RepairCost: 1000000000, Damage: 0, HideFlags: 1, display: {Lore: ['{"text":"§6ただの釣り竿"}'], Name: '{"text":"§f普通の釣り竿"}'}, Enchantments: [{lvl: 0s, id: "minecraft:lure"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:lapis_block", Count: 1b}, sell: {id: "minecraft:fishing_rod", Count: 1b, tag: {RepairCost: 1000000000, Damage: 0, HideFlags: 1, display: {Lore: ['{"text":"§6おもちゃのような疑似餌の付いた釣り竿"}'], Name: '{"text":"§3§l疑似餌付き釣り竿"}'}, Enchantments: [{lvl: 3s, id: "minecraft:lure"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:diamond_block", Count: 1b}, sell: {id: "minecraft:fishing_rod", Count: 1b, tag: {RepairCost: 1000000000, Damage: 0, HideFlags: 1, display: {Lore: ['{"text":"§6本物と見紛うほど精巧な疑似餌の付いた釣り竿"}'], Name: '{"text":"§b§l高級疑似餌付き釣り竿"}'}, Enchantments: [{lvl: 8s, id: "minecraft:lure"}]}}, xp: 1, uses: 27, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
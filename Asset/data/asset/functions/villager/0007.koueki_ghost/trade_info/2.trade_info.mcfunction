#> asset:villager/0007.koueki_ghost/trade_info/2.trade_info

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

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:barrier", Count: 1b, tag: {display: {Name: '{"text":"私は幽霊です"}'}}}, buy: {id: "minecraft:barrier", Count: 1b, tag: {display: {Name: '{"text":"もしかして私に話しかけてます？"}'}}}, sell: {id: "minecraft:barrier", Count: 1b, tag: {display: {Name: '{"text":"話しかけられたのは生前の時以来ですね"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:barrier", Count: 1b, tag: {display: {Name: '{"text":"呪いのアイテムなんてないですよ"}'}}}, buy: {id: "minecraft:barrier", Count: 1b, tag: {display: {Name: '{"text":"私と取引してください"}'}}}, sell: {id: "minecraft:barrier", Count: 1b, tag: {display: {Name: '{"text":"それでは、よろしくお願いします"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:emerald", Count: 1b}, buy: {id: "minecraft:chest", Count: 1b}, sell: {id: "minecraft:trapped_chest", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 5b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 5s, id: "minecraft:sharpness"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 5b}, sell: {id: "minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{lvl: 5s, id: "minecraft:power"}]}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 18b}, sell: {id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:regeneration"}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 18b}, sell: {id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:strength"}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 8b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 300, Id: 5b, Amplifier: 14b, ShowParticles: 1b}, {Duration: 300, Id: 5b, Amplifier: -14b, ShowParticles: 1b}, {Duration: 10, Id: 7b, Amplifier: 3b, ShowParticles: 1b}, {Duration: 10, Id: 7b, Amplifier: -3b, ShowParticles: 1b}, {Duration: 100, Id: 17b, Amplifier: 49b, ShowParticles: 1b}, {Duration: 100, Id: 17b, Amplifier: -49b, ShowParticles: 1b}, {Duration: 100, Id: 9b, Amplifier: 1b, ShowParticles: 1b}, {Duration: 100, Id: 15b, Amplifier: 1b, ShowParticles: 1b}, {Duration: 100, Id: 16b, Amplifier: 1b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: -100b, ShowParticles: 1b}, {Duration: 0, Id: 12b, Amplifier: -100b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§4曰くつきの紅い増強剤。"}', '{"text":"§4服用すると、常人の体力では即倒してしまう程の"}', '{"text":"§4痛みと渇きが襲い、死に至るとされている。"}', '{"text":"§4もしこの名状しがたい劇物に飲み込まれなければ"}', '{"text":"§4数秒ではあるが§e§l怪力§4を得るだろうと推測されている。"}'], Name: '{"text":"§4§l- ﾚｯﾄﾞﾄﾞﾗｺﾞﾝ -"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 8b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 300, Id: 3b, Amplifier: 14b, ShowParticles: 1b}, {Duration: 300, Id: 3b, Amplifier: -14b, ShowParticles: 1b}, {Duration: 10, Id: 7b, Amplifier: 3b, ShowParticles: 1b}, {Duration: 100, Id: 17b, Amplifier: 49b, ShowParticles: 1b}, {Duration: 100, Id: 17b, Amplifier: -49b, ShowParticles: 1b}, {Duration: 100, Id: 9b, Amplifier: 1b, ShowParticles: 1b}, {Duration: 100, Id: 15b, Amplifier: 1b, ShowParticles: 1b}, {Duration: 100, Id: 16b, Amplifier: 1b, ShowParticles: 1b}, {Duration: 0, Id: 12b, Amplifier: -100b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§e曰くつきの黄色い増強剤。"}', '{"text":"§e服用すると、常人の体力では即倒してしまう程の"}', '{"text":"§e痛みと渇きが襲い、死に至るとされている。"}', '{"text":"§eもしこの名状しがたい薬に飲み込まれなければ"}', '{"text":"§e数秒ではあるが§e§l壊力§eを得るだろうと推測されている。"}'], Name: '{"text":"§e§l- ｲｴﾛｰﾃﾞﾋﾞﾙ -"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
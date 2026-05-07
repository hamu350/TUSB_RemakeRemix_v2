#> asset:villager/0004.drug_papasu/trade_info/2.trade_info

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

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:gold_nugget", Count: 1b}, buy: {id: "minecraft:gravel", Count: 2b}, sell: {id: "minecraft:splash_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 1200, Id: 15b, Amplifier: 9b, ShowParticles: 1b}, {Duration: 1200, Id: 15b, Amplifier: -9b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 9b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: -9b, ShowParticles: 1b}, {Duration: 0, Id: 12b, Amplifier: -100b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§4§o投げつける薬。"}', '{"text":"§4§oこれを浴びた者は、"}', '{"text":"§4§o強力な酸で視力と体力を奪われる。"}'], Name: '{"text":"§6王水"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:gravel", Count: 3b}, buy: {id: "minecraft:torch", Count: 5b}, sell: {id: "minecraft:splash_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 300, Id: 18b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 300, Id: 18b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 300, Id: 17b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 300, Id: 17b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 300, Id: 2b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 300, Id: 2b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 0, Id: 16b, Amplifier: -100b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§4§o投げつける薬。これを浴びた者は、"}', '{"text":"§4§oあらゆる能力が低下する。"}'], Name: '{"text":"§5暗黒水"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:gravel", Count: 3b}, buy: {id: "minecraft:emerald", Count: 5b}, sell: {id: "minecraft:splash_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 1200, Id: 7b, Amplifier: 10b, ShowParticles: 0b}, {Duration: 1200, Id: 17b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 20b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 1200, Id: 19b, Amplifier: 10b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§4§o投げつける薬。これを浴びた者は、"}', '{"text":"§4§oほぼ間違いなく即死。"}'], Name: '{"text":"§8禁忌・冥界落とし"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:sand", Count: 3b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:splash_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 400, Id: 8b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 400, Id: 2b, Amplifier: 6b, ShowParticles: 1b}, {Duration: 400, Id: 2b, Amplifier: -6b, ShowParticles: 1b}, {Duration: 400, Id: 18b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 400, Id: 18b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 400, Id: 20b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 400, Id: 20b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 400, Id: 9b, Amplifier: 1b, ShowParticles: 1b}, {Duration: 400, Id: 4b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 400, Id: 4b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 400, Id: 15b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 400, Id: 15b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 400, Id: 17b, Amplifier: 100b, ShowParticles: 1b}, {Duration: 400, Id: 17b, Amplifier: -100b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: -20b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§8§o歩かせません、ジャンプさせません"}', '{"text":"§8§o攻撃させません、死なせません"}', '{"text":"§8§o壊させません、etc"}', '{"text":"§8§o惨たらしい効果を施す。"}', '{"text":"§8§oポーションというより呪いに近い。"}'], Name: '{"text":"§4§l究極拷問安眠スペシャル"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
#> asset:villager/0040.happiness_officer/trade_info/2.trade_info

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

data modify storage asset: villager set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:glass_bottle", Count: 3b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:nether_wart", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:blaze_powder", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:spider_eye", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:rabbit_foot", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:sugar", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:pufferfish", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:golden_carrot", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:ghast_tear", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:glistering_melon_slice", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:magma_cream", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:fermented_spider_eye", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:redstone", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 2b}, sell: {id: "minecraft:glowstone_dust", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 3b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 600, Id: 1b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 600, Id: 14b, Amplifier: -1b, ShowParticles: 0b}, {Duration: 600, Id: 5b, Amplifier: 10b, ShowParticles: 0b}, {Duration: 0, Id: 25b, Amplifier: -128b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§f服用した者は§d幸福感§fに満たされ"}', '{"text":"§c力§fと§eやる気§fに満ち溢れ"}', '{"text":"§f余りの速さに§b見えなくなる速度§fで駆け回る。"}'], Name: '{"text":"§d§l幸福の薬"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald_block", Count: 3b}, sell: {id: "minecraft:tipped_arrow", Count: 1b, tag: {CustomPotionEffects: [{Duration: 200, Id: 1b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 200, Id: 14b, Amplifier: -1b, ShowParticles: 0b}, {Duration: 200, Id: 5b, Amplifier: 5b, ShowParticles: 0b}, {Duration: 200, Id: 15b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 200, Id: 16b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 200, Id: 25b, Amplifier: -128b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§f刺さった者は§d幸福感§fに満たされ"}', '{"text":"§c力§fと§eやる気§fに満ち溢れ"}', '{"text":"§f余りの速さに§b見えなくなる速度§fで駆け回る。"}'], Name: '{"text":"§d§l幸福の矢"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
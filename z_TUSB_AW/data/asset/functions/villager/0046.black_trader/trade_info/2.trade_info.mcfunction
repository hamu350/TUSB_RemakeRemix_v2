#> asset:villager/0046.black_trader/trade_info/2.trade_info

# まずデータを初期化します(これは消さないでね)
data remove storage asset: villager

# アイテムを持たせる防具立てを召喚します
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
data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:prismarine_shard", Count: 8b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの補助通貨"}'], Name: '{"text":"§3オレウス海晶貨"}'}, Enchantments: []}}, sell: {id: "minecraft:paper", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b,maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:prismarine_shard", Count: 22b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの補助通貨"}'], Name: '{"text":"§3オレウス海晶貨"}'}, Enchantments: []}}, sell: {id: "minecraft:book", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b,maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:prismarine_shard", Count: 8b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの補助通貨"}'], Name: '{"text":"§3オレウス海晶貨"}'}, Enchantments: []}}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 100, Id: 23b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 100, Id: 9b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 700, Id: 18b, Amplifier: 100b, ShowParticles: 1b}, {Duration: 700, Id: 18b, Amplifier: -100b, ShowParticles: 1b}, {Duration: 0, Id: 12b, Amplifier: -100b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§e§o飲むと満腹になるが"}', '{"text":"§e§oしばらくの間弱体化する"}'], Name: '{"text":"ガソリン"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:prismarine_shard", Count: 2b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの補助通貨"}'], Name: '{"text":"§3オレウス海晶貨"}'}, Enchantments: []}}, sell: {id: "minecraft:arrow", Count: 16b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:iron_ingot", Count: 1b}, sell: {id: "minecraft:prismarine_shard", Count: 4b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの補助通貨"}'], Name: '{"text":"§3オレウス海晶貨"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:bone", Count: 1b}, sell: {id: "minecraft:gold_nugget", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:coal", Count: 1b}, sell: {id: "minecraft:gold_nugget", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:gold_nugget", Count: 8b}, sell: {id: "minecraft:prismarine_shard", Count: 1b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの補助通貨"}'], Name: '{"text":"§3オレウス海晶貨"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:prismarine_shard", Count: 32b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの補助通貨"}'], Name: '{"text":"§3オレウス海晶貨"}'}, Enchantments: []}}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 1200, Id: 1b, Amplifier: 16b, ShowParticles: 1b}, {Duration: 200, Id: 9b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 1200, Id: 16b, Amplifier: 1b, ShowParticles: 1b}, {Duration: 1200, Id: 22b, Amplifier: 1b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§3氷土にて多大な功績を残した探検家が"}', '{"text":"§3先住民により教わった特殊なレシピを"}', '{"text":"§3使用して作った薬。"}', '{"text":"§3ハイになれる。"}'], Name: '{"text":"§r§6ヴァイキングの秘薬"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:prismarine_crystals", Count: 16b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの通貨"}'], Name: '{"text":"§bコロナ海晶貨"}'}, Enchantments: []}}, sell: {id: "minecraft:lingering_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 0, Id: 19b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 3, Id: 14b, Amplifier: 2b, ShowParticles: 0b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§bマナがぽちょっと詰まった瓶。"}', '{"text":"§b中身に触れるとMPが大きく回復する。"}'], Name: '{"text":"§3§lエリアハイエーテル"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:prismarine_shard", Count: 16b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの補助通貨"}'], Name: '{"text":"§3オレウス海晶貨"}'}, Enchantments: []}}, buy: {id: "minecraft:prismarine_crystals", Count: 55b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの通貨"}'], Name: '{"text":"§bコロナ海晶貨"}'}, Enchantments: []}}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 3, Id: 14b, Amplifier: 5b, ShowParticles: 0b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§dマナから作られた霊薬。"}', '{"text":"§d飲むとHPとMPが全回復する。"}', '{"text":""}', '{"text":"§7スプラッシュ化不可"}'], Name: '{"text":"§5§lラストエリクサー"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 2, rewardExp: 0b}]

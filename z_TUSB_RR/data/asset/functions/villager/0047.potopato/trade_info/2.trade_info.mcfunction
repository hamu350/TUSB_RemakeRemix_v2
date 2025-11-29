#> asset:villager/0047.potopato/trade_info/2.trade_info

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
data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:prismarine_crystals", Count: 7b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの通貨"}'], Name: '{"text":"§bコロナ海晶貨"}'}, Enchantments: []}}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 20, Id: 23b, Amplifier: 127b, ShowParticles: 1b}, {Duration: 0, Id: 25b, Amplifier: -128b, ShowParticles: 1b}, {Duration: 20, Id: 14b, Amplifier: -1b, ShowParticles: 0b}, {Duration: 1, Id: 6b, Amplifier: 10b, ShowParticles: 0b}, {Duration: 200, Id: 9b, Amplifier: 10b, ShowParticles: 0b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§7§o大隅ノ國ニハ、一家ニ水ト米トヲマウケテ、"}', '{"text":"§7§o村ニツゲメグラセバ、男女一所ニアツマリテ、"}', '{"text":"§7§oチリヂリニカヘリヌ 酒ノ香ノイデクルトキ、"}', '{"text":"§7§o又アツマリテ、カミテハキイレシモノドモ、コレヲノム。"}', '{"text":"§7§o名ヅケテクチカミノ酒ト云フト云云、風土記ニ見エタリ。"}'], Name: '{"text":"§e§l§n御酒"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:prismarine_crystals", Count: 7b, tag: {RepairCost: 1000000000, display: {Lore: ['{"text":"§rトカルトコルデの通貨"}'], Name: '{"text":"§bコロナ海晶貨"}'}, Enchantments: []}}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 0, Id: 23b, Amplifier: 104b, ShowParticles: 1b}, {Duration: 0, Id: 25b, Amplifier: -128b, ShowParticles: 1b}, {Duration: 200, Id: 24b, Amplifier: 0b, ShowParticles: 0b}, {Duration: 20, Id: 6b, Amplifier: 10b, ShowParticles: 0b}, {Duration: 20, Id: 14b, Amplifier: -1b, ShowParticles: 0b}, {Duration: 400, Id: 3b, Amplifier: 4b, ShowParticles: 0b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§a知恵の樹§3から採れた§5禁断の果実§3の酒。"}', '{"text":"§3飲むと§c§n数秒後に死ぬ§3事から、"}', '{"text":"§5飲んではいけない§3とされている。"}'], Name: '{"text":"§5§l禁断の果実酒"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]

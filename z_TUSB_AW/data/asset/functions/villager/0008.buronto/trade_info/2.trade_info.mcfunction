#> asset:villager/0008.buronto/trade_info/2.trade_info

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

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:white_wool", Count: 64b}, sell: {id: "minecraft:torch", Count: 16b, tag: {RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["#minecraft:all"], display: {Lore: ['{"text":"§rアドベンチャーエリアでも設置できる。"}'], Name: '{"text":"§4§lAdv.§f§l松明"}'}, Enchantments: [{}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:white_wool", Count: 64b}, sell: {id: "minecraft:vine", Count: 16b, tag: {RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["#minecraft:all"], display: {Lore: ['{"text":"§rアドベンチャーエリアでも設置できる。"}'], Name: '{"text":"§4§lAdv.§f§lツタ"}'}, Enchantments: [{}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:white_wool", Count: 64b}, sell: {id: "minecraft:ender_eye", Count: 1b, tag: {RepairCost: 1000000000, CanPlaceOn: ["minecraft:end_portal_frame"], display: {Lore: ['{"text":"§rアドベンチャーエリアでも設置できる。"}'], Name: '{"text":"§4§lAdv.§f§lエンダーアイ"}'}, Enchantments: [{}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:white_wool", Count: 64b}, sell: {id: "minecraft:cobweb", Count: 1b, tag: {RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["#minecraft:all"], display: {Lore: ['{"text":"§rアドベンチャーエリアでも設置できる。"}'], Name: '{"text":"§4§lAdv.§f§l蜘蛛の巣"}'}, Enchantments: [{}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:wooden_pickaxe", Count: 1b, tag: {Damage: 0}}, sell: {id: "minecraft:wooden_pickaxe", Count: 1b, tag: {RepairCost: 1000000000, Damage: 0, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 1, 0, 1], Amount: -1.0d, Name: "NoATK"}, {Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 1, 0, 2], Amount: -1.0d, Name: "NoKBR"}], CanDestroy: ["minecraft:spawner", "minecraft:wall_torch", "minecraft:cobweb", "minecraft:vine"], display: {Name: '{"text":"§4§lAdv.§f§lツルハシ"}'}, Enchantments: [{}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:oak_button", Count: 1b}, sell: {id: "minecraft:oak_button", Count: 1b, tag: {RepairCost: 1000000000, CanPlaceOn: ["minecraft:command_block"], display: {Lore: ['{"text":"§r必要ないはずのボタン。"}'], Name: '{"text":"§4§lAdv.§f§lボタン"}'}, Enchantments: [{}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 6b}, sell: {id: "minecraft:shears", Count: 1b, tag: {Damage: 0, RepairCost: 1000000000, Enchantments: [{lvl: 5s, id: "minecraft:efficiency"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
#> asset:villager/0018.aiakaisi/trade_info/2.trade_info

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

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:repeater", Count: 3b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:comparator", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:redstone_torch", Count: 6b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:redstone_block", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:tripwire_hook", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 2b}, sell: {id: "minecraft:daylight_detector", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 2b}, sell: {id: "minecraft:lever", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 5b}, sell: {id: "minecraft:piston", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 6b}, sell: {id: "minecraft:sticky_piston", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 9b}, sell: {id: "minecraft:dispenser", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 9b}, sell: {id: "minecraft:dropper", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 9b}, sell: {id: "minecraft:hopper", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 9b}, sell: {id: "minecraft:note_block", Count: 3b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 9b}, sell: {id: "minecraft:redstone_lamp", Count: 3b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:diamond", Count: 1b}, sell: {id: "minecraft:music_disc_wait", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:hopper", Count: 64b}, buy: {id: "minecraft:creeper_head", Count: 1b}, sell: {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0MTI1MDcxMTE2MDcsInByb2ZpbGVJZCI6ImJhYjdjZGMyZjZiYTQ3ZjZiODk5ZjIzYWRkMmU3YzdmIiwicHJvZmlsZU5hbWUiOiJNZWRpY2tfbWMiLCJpc1B1YmxpYyI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2YwZDI0OTNlOTZmYTI0ZDJiYjY1ZTZmY2QxMTYzOWE0N2ZmNjQ0Y2Q1OTg1ZWExOWM3YTc0NDM4NjMxZjQ4In19fQ==", Signature: "l8RGNsshsNbkHxbcUx0lRSEW6Te9bphRwNTGEHIilUGSvxW6tqyAKjsiytjnXyNTGQRW0EjI+f/tnEL8qkqbq+0leJzlcyqrqBYHFiL/++mDncVNQIYFpL7IetPIbgjmkVo+DTy1OhGVMYQ104KG8jxDOhB1V5OPIBd5tVvwtmI23LxJZOLw7GxAXdB6y2wg4nZRaIqL+SxIJyfdai73T1fj2x43cYQI8vkGwAvq/y7XXY7BLzp8OyAE71xq6r8tdB1MMHRjE/T1s9KQsU3AvbgTY5uWpmObzjZny3paolpFn6hIQC00jcb8W3rAM2hQX2PUOAhc9fK6+R7+Ei7mjXFgE/klOl8PUV/WB6gzJvM61bI8JIs+a3CqFAnDOHofPoUZHhyr9Qf8O4zqSApR7un3Ppj/f5ee/PZuwBMI7NzSIedts2RCf1RDHvOBAq0TUxlyuf2jkZyGPEDuAf7UAJaYiKvn9vNogpcj40dJg3fx3VrKpI9kk2Z68nOQLd5dm+iZb46cC+zkqRX/MI4Wsr1cZ3ja7unibTu6UUleoB0zEIR3nWLIry+SMjrkRgbHHO10uDunu2QbowQeLSonpWm0KuM5QSI1ptvQs8hXZojJItjaHL44e3KFFLlfXMUWryIi/0GUMmDtBPxNTHpk1DpPvdUPurVVoq52D05Tb5U="}]}, Id: [I; -1162359358, -155564042, -1197870534, -584156033], Name: "Medick_mc"}, display: {Name: '{"text":"§a§l赤石愛"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]
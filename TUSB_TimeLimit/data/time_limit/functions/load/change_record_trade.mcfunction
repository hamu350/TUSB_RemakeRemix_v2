#> time_limit:load/change_record_trade

# レコード取引の追加
# uuidそのまま指定

# pigstep
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes insert 12 value {xp: 1, buy: {id: "minecraft:music_disc_pigstep", Count: 1b}, sell: {id: "minecraft:porkchop", Count: 16b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# otherside
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes insert 13 value {xp: 1, buy: {id: "minecraft:music_disc_otherside", Count: 1b}, sell: {id: "minecraft:bell", Count: 1b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# 5
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes insert 14 value {xp: 1, buy: {id: "minecraft:music_disc_5", Count: 1b}, sell: {id: "minecraft:nether_star", Count: 32b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}

# 既存トレードのバフ
# insertじゃなくてsetだぞ!!!!!!!!!!!!!

# cat emeblock2を8に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[1] set value {xp: 1, buy: {id: "minecraft:music_disc_cat", Count: 1b}, sell: {id: "minecraft:emerald_block", Count: 8b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# chirp apple2をapple8に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[3] set value {xp: 1, buy: {id: "minecraft:music_disc_chirp", Count: 1b}, sell: {id: "minecraft:apple", Count: 8b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# far emeblock2を8に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[4] set value {xp: 1, buy: {id: "minecraft:music_disc_far", Count: 1b}, sell: {id: "minecraft:emerald_block", Count: 8b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# mall エンパ8を16に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[5] set value {xp: 1, buy: {id: "minecraft:music_disc_mall", Count: 1b}, sell: {id: "minecraft:ender_pearl", Count: 16b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# stal 石炭ブロック2を4に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[7] set value {xp: 1, buy: {id: "minecraft:music_disc_stal", Count: 1b}, sell: {id: "minecraft:coal_block", Count: 4b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# strad ケーキ1を2に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[8] set value {xp: 1, buy: {id: "minecraft:music_disc_strad", Count: 1b}, sell: {id: "minecraft:cake", Count: 2b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# ward emeblock2を8に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[9] set value {xp: 1, buy: {id: "minecraft:music_disc_ward", Count: 1b}, sell: {id: "minecraft:emerald_block", Count: 8b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# 11 石炭ブロック2を4に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[10] set value {xp: 1, buy: {id: "minecraft:music_disc_11", Count: 1b}, sell: {id: "minecraft:coal_block", Count: 4b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# 鉄馬鎧 3から6に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[15] set value {xp: 1, buy: {id: "minecraft:iron_horse_armor", Count: 1b}, sell: {id: "minecraft:iron_ingot", Count: 6b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# 金馬鎧 3から6に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[16] set value {xp: 1, buy: {id: "minecraft:golden_horse_armor", Count: 1b}, sell: {id: "minecraft:gold_ingot", Count: 6b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
# ダイヤ馬鎧 3から6に
data modify entity 60fd38a5-46a3-4318-b0a1-c279a55eae08 Offers.Recipes[17] set value {xp: 1, buy: {id: "minecraft:diamond_horse_armor", Count: 1b}, sell: {id: "minecraft:diamond", Count: 6b}, uses: 0, priceMultiplier: 0.0f, maxUses: 2147483647, rewardExp: 0b, demand: 0, specialPrice: 0, buyB: {id: "minecraft:air", Count: 65b}}
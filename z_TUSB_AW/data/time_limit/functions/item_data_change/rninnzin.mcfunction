
# 入れ食い8を5にする
data modify storage player_item_tuner: condition.if set value {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {RepairCost: 1000000000, Damage: 0, display: {Name: '{"text":"§4§lレッドキャロット"}'}, Enchantments: [{lvl: 7s, id: "minecraft:sharpness"}, {lvl: 7s, id: "minecraft:smite"}, {lvl: 7s, id: "minecraft:bane_of_arthropods"}, {lvl: 1s, id: "minecraft:knockback"}, {lvl: 7s, id: "minecraft:fire_aspect"}]}}
data modify storage player_item_tuner: result.merge set value {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {RepairCost: 1000000000, Damage: 0, Enchantments: [{lvl: 7s, id: "minecraft:bane_of_arthropods"}, {lvl: 7s, id: "minecraft:fire_aspect"}, {lvl: 1s, id: "minecraft:knockback"}, {lvl: 7s, id: "minecraft:sharpness"}, {lvl: 7s, id: "minecraft:smite"}], display: {Name: '{"extra":[{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_red","text":"レッドキャロット"}],"text":""}'}}}
function #player_item_tuner:modify/inventory

# 進捗戻す
advancement revoke @s only time_limit:time_limit/rninnzin
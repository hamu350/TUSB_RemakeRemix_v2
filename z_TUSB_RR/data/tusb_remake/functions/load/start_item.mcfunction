#> tusb_remake:load/start_item
#
# 
#
# @within function tusb_remake:load/once
data modify block 3 4 2 Items[8] set value {Slot:8b,id: "minecraft:bat_spawn_egg", Count: 32b, tag: {EntityTag: {DeathLootTable: "usb:signs/exp", id: "minecraft:bat", DeathTime: 19s, ActiveEffects: [{Duration: 100, Id: 7b, Amplifier: 5b, ShowParticles: 0b}, {Duration: 100, Id: 14b, Amplifier: 0b, ShowParticles: 0b}], Tags: ["RewardEgg", "TypeChecked"]}, RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["#minecraft:all"], Enchantments: [], display: {Lore: ['{"text":"§c使うことでスキル経験値を得られる。"}', '{"text":"§c一体どのような§d経験§cなのだろうか…。"}'], Name: '{"text":"§d秘密経験の印玉"}'}},Count:16}
execute in minecraft:overworld run forceload remove 3 2 3 2
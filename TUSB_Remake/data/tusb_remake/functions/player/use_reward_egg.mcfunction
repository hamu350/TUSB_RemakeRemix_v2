#> tusb_remake:player/use_reward_egg
# 報酬卵を使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# give @s minecraft:witch_spawn_egg{RepairCost: 1000000000, HideFlags: 16, display: {Lore: ['{"text":"§rエーテルが入っている。"}'], Name: '{"text":"§2§lエーテルカプセル"}'}, Enchantments: [], EntityTag: {DeathLootTable: "usb:signs/ether1", id: "minecraft:witch", DeathTime: 19s, ActiveEffects: [{Duration: 100, Id:7, Amplifier: 5b, ShowParticles: 0b}, {Duration: 100, Id:14, Amplifier: 0b, ShowParticles: 0b}], Tags: ["RewardEgg", "TypeChecked"]}, CanPlaceOn: ["#minecraft:all"]}

advancement revoke @s only tusb_remake:player/use_reward_egg

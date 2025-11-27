#> tusb_remake:player/clear_bad_effect
# 悪い効果を消す
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run data get entity @s ActiveEffects[{Id:1}].Amplifier
execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:speed

effect clear @s minecraft:slowness

execute store result score _ TUSB run data get entity @s ActiveEffects[{Id:3}].Amplifier
execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:haste

effect clear @s minecraft:mining_fatigue

execute store result score _ TUSB run data get entity @s ActiveEffects[{Id:5}].Amplifier
execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:strength

execute store result score _ TUSB run data get entity @s ActiveEffects[{Id:8}].Amplifier
execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:jump_boost

effect clear @s minecraft:nausea

execute store result score _ TUSB run data get entity @s ActiveEffects[{Id:11}].Amplifier
execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:resistance

effect clear @s minecraft:blindness
effect clear @s minecraft:hunger
effect clear @s minecraft:weakness
effect clear @s minecraft:poison

effect clear @s minecraft:wither
effect clear @s minecraft:levitation

execute store result score _ TUSB run data get entity @s ActiveEffects[{Id:29}].Amplifier
execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:conduit_power

execute store result score _ TUSB run data get entity @s ActiveEffects[{Id:30}].Amplifier
execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:dolphins_grace

effect clear @s minecraft:bad_omen

execute store result score _ TUSB run data get entity @s ActiveEffects[{Id:32}].Amplifier
execute unless score _ TUSB matches 0..127 run effect clear @s minecraft:hero_of_the_village

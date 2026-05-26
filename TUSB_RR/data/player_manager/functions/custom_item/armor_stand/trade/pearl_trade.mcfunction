#> time_limit:sign_stand/trade/pearl_trade

# エンパ
# 2つ以上のアイテムはfunctionで判別します
# アイテムチェーーーック
execute store result score @s TUSB run clear @s minecraft:trapped_chest 0
execute store result score @s TUSB_sub run clear @s minecraft:furnace 0
# 両方とも数満たしてるならまずclear
execute if score @s TUSB matches 8.. if score @s TUSB_sub matches 8.. run clear @s minecraft:trapped_chest 8
execute if score @s TUSB matches 8.. if score @s TUSB_sub matches 8.. run clear @s minecraft:furnace 8
# アイテムを渡しましょう
execute if score @s TUSB matches 8.. if score @s TUSB_sub matches 8.. at @s run summon minecraft:bat ~ ~0.1 ~ {Health:0.001f,ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:false},{Id:7,Amplifier:0b,Duration:100,ShowParticles:false}],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:ender_pearl",Count:16b}}]}
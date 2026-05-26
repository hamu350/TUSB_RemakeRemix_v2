#> time_limit:sign_stand/trade/funchest_trade

# お楽しみセット
# 2つ以上のアイテムはfunctionで判別します
# アイテムチェーーーック
execute store result score @s TUSB run clear @s minecraft:emerald 0
execute store result score @s TUSB_sub run clear @s minecraft:crafting_table 0
# 両方とも数満たしてるならまずclear
execute if score @s TUSB matches 55.. if score @s TUSB_sub matches 6.. run clear @s minecraft:emerald 55
execute if score @s TUSB matches 55.. if score @s TUSB_sub matches 6.. run clear @s minecraft:crafting_table 6
# アイテムを渡しましょう
execute if score @s TUSB matches 55.. if score @s TUSB_sub matches 6.. at @s run summon minecraft:bat ~ ~0.1 ~ {Health:0.001f,ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:false},{Id:7,Amplifier:0b,Duration:100,ShowParticles:false}],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:chest",Count:1b,tag:{BlockEntityTag:{LootTable: "usb:chests/enjoy"},display: {Lore: ['{"text":"§eなにか§cアイテム§eが入っている"}', '{"text":"§e開ける人の§a§l運§eによって"}', '{"text":"§a§l質§eが変わる不思議なチェスト"}'], Name: '{"text":"§dお楽しみセット"}'}}}}]}

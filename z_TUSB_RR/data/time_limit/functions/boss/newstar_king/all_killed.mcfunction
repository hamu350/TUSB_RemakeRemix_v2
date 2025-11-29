#> time_limit:boss/newstar_king/all_killed

# どっちの王もキルされちゃった；；
execute in minecraft:the_end run setblock 501 100 498 command_block{conditionMet: 0b, auto: 0b, CustomName: '{"text":"@"}', powered: 0b, Command: "function time_limit:boss/newstar_king/makeup/", x: 501, y: 100, z: 498, id: "minecraft:command_block", SuccessCount: 0, TrackOutput: 1b, UpdateLastExecution: 1b}
# 先にアマスタキルしないとまたワープされちゃう
execute in the_end run kill @e[type=armor_stand,tag=Boss_Enter]
# bossfightingtag剥奪
tag @a remove Boss_Fighting
# ワープ
execute in the_end at @e[type=item,nbt={Item:{id:"minecraft:debug_stick",tag:{Shinen:1b}}}] run execute as @a[distance=..100] run tp @s -1390 200 9 270 ~
# ぱーちくる
# かえてもいいけど
execute in the_end run particle minecraft:glow_squid_ink ~ ~1 ~ 0.5 0.5 0.5 1 200 normal @a
# playsound
execute in the_end run playsound minecraft:block.portal.trigger block @s ~ ~ ~ 1 1.5
# 死んだ時のアイテムをkill
execute in the_end run kill @e[type=item,nbt={Item:{id:"minecraft:debug_stick",tag:{Shinen:1b}}}]

# particleとかいるならあとで追加しようそうしよう


# 混沌を示し者
give @a purple_dye{display:{Name:'{"text":"混沌を制し者","color":"dark_purple","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"ありとあらゆる混沌を制したものの証","color":"dark_blue","italic":false}']},HideFlags:126,CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:99s}],Explosion:{Type:0,Colors:[I;6321814],FadeColors:[I;11908533]}} 1
execute if data storage tusb_remake: settings{hardcore:1b} run give @a red_dye{display:{Name:'[{"text":"混沌を制し者","color":"dark_purple","bold":true,"underlined":true},{"text":"[有限ノ命]","color":"dark_red"}]'},HideFlags:126,CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:99s}]} 1
execute if data storage tusb_remake: settings{toculting:1b} run give @a light_blue_dye{display:{Name:'[{"text":"混沌を制し者","color":"dark_purple","bold":true,"underlined":true},{"text":"[凍結世界]","color":"aqua"}]'},HideFlags:126,CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:99s}]} 1
execute if data storage tusb_remake: settings{time_limit:1b} run give @a cyan_dye{display:{Name:'[{"text":"混沌を制し者","color":"dark_purple","bold":true,"underlined":true},{"text":"[時限世界]","color":"dark_aqua"}]'},HideFlags:126,CustomModelData:1,Enchantments:[{id:"minecraft:infinity",lvl:99s}]} 1
execute if data storage tusb_remake: settings{toculting:1b} if data storage tusb_remake: settings{hardcore:1b} if data storage tusb_remake: settings{time_limit:1b} run give @a firework_star{display:{Name:'[{"text":"混沌を制し者","color":"dark_purple","bold":true,"underlined":true},{"text":"[真]","color":"black"}]',Lore:['{"text":"ここまでプレイしていただきありがとうございました！！！"}','{"text":"TUSB CrisisWorldをお待ちください...","obfuscated":true}']}} 64

# playsoundの遅延とか
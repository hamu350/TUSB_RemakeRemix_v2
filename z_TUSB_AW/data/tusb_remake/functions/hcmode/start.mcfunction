#> tusb_remake:hcmode/start
#ハードコアモード開始ぃ

data modify storage tusb_remake: settings.hardcore set value 1b
tellraw @a [{"color":"red", "bold": true,"text":" ハードコアモードに切り替わりました。"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 0.67

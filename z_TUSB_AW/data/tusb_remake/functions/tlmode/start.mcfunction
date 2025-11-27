#> tusb_remake:tlmode/start
#ハードコアモード開始ぃ

data modify storage tusb_remake: settings.time_limit set value 1b 
tellraw @a [{"color":"aqua", "bold": true,"text":" タイムリミットモードに切り替わりました。"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 0.67
function time_limit:settings/
function time_limit:load/load_once

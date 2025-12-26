#> tusb_remake:enemy/skill/game_master/7
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/

# me
    execute as @e[tag=GM,limit=1] run me §l§4おめでとう！君は敗北を手に入れた！
# title
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] times 10 30 10
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] title ["",{"text":"k","obfuscated":true,"color":"black"},{"text":"7 7 7","color":"yellow"},{"text":"k","obfuscated":true,"color":"black"}]
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] subtitle {"text":"JackPot","color":"yellow"} 
# sound
    execute at @e[tag=GM,limit=1] run playsound minecraft:ui.toast.challenge_complete player @a[distance=..60,tag=GameMasterBattle] ~ ~ ~ 2 1
# tellraw
    execute at @e[tag=GM,limit=1] run tellraw @a "§l§4逃げろ!!!!"
# summon
    execute at @e[tag=GM,limit=1] run summon armor_stand ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["GM7"],ArmorItems:[{},{},{},{id:"minecraft:obsidian",Count:1b}],CustomName:'{"text":"！","color":"dark_red","bold":true}'}

#> tusb_remake:enemy/skill/game_master/6/6
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/6/

# me
    execute as @e[limit=1,tag=GM] at @s run me 外れ、死んでもらおうか。
# title
    execute at @e[limit=1,tag=GM] run title @a[distance=..60,tag=GameMasterBattle] title ["",{"text":"k","bold":true,"obfuscated":true,"color":"black"},{"text":"Good bye","bold":true,"color":"dark_red"},{"text":"k","bold":true,"obfuscated":true,"color":"black"}]
# sound
    execute at @e[limit=1,tag=GM] run playsound entity.ender_dragon.death master @a[distance=..60]
# solo
    execute if score _ game_master.reward matches 1 run function tusb_remake:enemy/skill/game_master/6/6.solo
# multi
    execute if score _ game_master.reward matches 2.. run function tusb_remake:enemy/skill/game_master/6/6.multi

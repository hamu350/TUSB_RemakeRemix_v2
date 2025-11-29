#> tusb_remake:enemy/skill/game_master/1
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/

# title
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] times 10 30 10
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] title {"translate": "§l§4１１１"}
# tellraw
    execute at @e[tag=GM,limit=1] run tellraw @a {"translate": "*§0kk§r§4GameMaster§0§kk§r 後１枚だね","bold": true,"hoverEvent": {"action": "show_text","contents": "ココをクリック！"},"clickEvent": {"action": "run_command","value": "/trigger UNO set 1"}}
    execute at @e[tag=GM,limit=1] run tellraw @a {"translate": "↑をクリックしろ！！！","bold": true}
# sound
    execute at @e[tag=GM,limit=1] run playsound entity.elder_guardian.curse master @a[distance=..60]
# tag
    execute at @e[tag=GM,limit=1] run tag @a[distance=..60,tag=GameMasterBattle] add UNO
# trigger enable
    execute at @e[tag=GM,limit=1] run scoreboard players enable @a[distance=..60] UNO
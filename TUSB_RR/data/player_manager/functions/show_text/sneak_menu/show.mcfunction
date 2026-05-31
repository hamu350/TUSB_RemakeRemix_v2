#> player_manager:show_text/sneak_menu/show
#
# リログ時メニュー表示
#
#

tellraw @s ["",{"translate":"・情報表示","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ShowMenu set 1"}}," ",{"translate":"・スキル変更","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSkillSet set 1"}}]

execute if data storage debug: Debug{Mode:-1s} run function debug:debug_menu/show

stopsound @s master minecraft:ui.button.click
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1

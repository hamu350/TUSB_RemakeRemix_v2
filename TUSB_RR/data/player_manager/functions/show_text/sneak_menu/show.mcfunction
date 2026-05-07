#> player_manager:show_text/sneak_menu/show
#
# リログ時メニュー表示
#
#

tellraw @s ["",{"translate":"・情報表示","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ShowMenu set 1"}}," ",{"translate":"・スキル変更","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSkillSet set 1"}}]

stopsound @s master minecraft:ui.button.click
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1

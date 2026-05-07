#> player_manager:show_text/login
#
#> リログ時メニュー表示
#
#

tellraw @s [{"translate":"= メニュー ="}]
scoreboard players enable @s ShowMenu
function player_manager:show_text/sneak_menu/show

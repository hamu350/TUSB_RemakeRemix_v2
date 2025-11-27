#> time_limit:login/show_menu
#
#> リログ時メニュー表示
#
#

tellraw @s [{"translate":"[INFO] ステータス確認やスキル設定ができます。"}]
scoreboard players enable @s ShowMenu
function time_limit:login/re_show

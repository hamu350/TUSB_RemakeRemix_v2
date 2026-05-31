#> debug:debug_menu/show
#
# デバッグメニューを表示
#
#

tellraw @s {"translate":"\n= デバッグメニュー =\n%1$s\n%2$s","with":[{"text":"・ステータスメニュー","clickEvent":{"action": "run_command","value": "/function debug:debug_menu/trigger/main/1.status"} },{"text":"・ワープメニュー","clickEvent":{"action": "run_command","value": "/function debug:debug_menu/trigger/main/2.warp"} }]}

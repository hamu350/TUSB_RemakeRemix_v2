#> debug:debug_menu/status/show/
#
# ステータスメニューを表示
#
# @within function debug:debug_menu/trigger/main/status

tellraw @s {"translate":"\n= ステータス =\n%s\n%s\n%s","with":[{"text":"・HP","hoverEvent":{"action": "show_text","contents": {"text":"最大体力設定"}},"clickEvent":{"action": "run_command","value": "/function debug:debug_menu/trigger/status/1.hp"} },{"text":"・MP","hoverEvent":{"action": "show_text","contents": {"text":"最大MP設定"}},"clickEvent":{"action": "run_command","value": "/function debug:debug_menu/trigger/status/2.mp"} },{"text":"・Level","hoverEvent":{"action": "show_text","contents": {"text":"職業・レベル設定"}},"clickEvent":{"action": "run_command","value": "/function debug:debug_menu/trigger/status/3.level"} }]}
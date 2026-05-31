#> debug:debug_menu/page/warp/table_mountain
#
# テーブルマウンテンのワープメニュー
#
# @within function debug:debug_menu/trigger/warp/4.table_mountain

# 下のtellrawで{}をコピーして名前,説明,コマンドのマクロ部分を変える

tellraw @s {"translate":"\n= テーブルマウンテン =\n%1$s","with":[{"text":"・名前","hoverEvent":{"action": "show_text","contents": {"text":"説明"}},"clickEvent":{"action": "run_command","value": "/function debug:warp/4.table_mountain/start_point"} }]}
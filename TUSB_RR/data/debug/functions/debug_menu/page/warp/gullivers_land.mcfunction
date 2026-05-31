#> debug:debug_menu/page/warp/gullivers_land
#
# ガリバーランドのワープメニュー
#
# @within function debug:debug_menu/trigger/warp/5.gullivers_land

# 下のtellrawで{}をコピーして名前,説明,コマンドのマクロ部分を変える

tellraw @s {"translate":"\n= ガリバーランド =\n%1$s","with":[{"text":"・名前","hoverEvent":{"action": "show_text","contents": {"text":"説明"}},"clickEvent":{"action": "run_command","value": "/function debug:warp/5.gullivers_land/start_point"} }]}
#> debug:debug_menu/page/warp/nether
#
# ネザー(煉獄含む)のワープメニュー
#
# @within function debug:debug_menu/trigger/warp/6.nether

# 下のtellrawで{}をコピーして名前,説明,コマンドのマクロ部分を変える

tellraw @s {"translate":"\n= ネザー =\n%1$s","with":[{"text":"・名前","hoverEvent":{"action": "show_text","contents": {"text":"説明"}},"clickEvent":{"action": "run_command","value": "/function debug:warp/6.nether/start_point"} }]}
#> mob_manager:gimmic/skill/game_master/1/uno
#
# 
#
# @within function player_manager:show_text/trigger

# クリック時の処理 
    # me
        execute as @a if score @s UNO matches 1 run me UNO！
    # tag remove
        execute as @a if score @s UNO matches 1 run tag @s remove UNO

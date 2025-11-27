#> tusb_remake:enemy/skill/game_master/9
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/

# me
    execute as @e[tag=GM,limit=1] run me 断么九！もっかいやろうか。
# title
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] times 10 30 10
    execute at @e[tag=GM,limit=1] run title @a[distance=..60,tag=GameMasterBattle] title {"translate": "§l§4９９９"}
# 2s後にスキルを再キャスト
    schedule function tusb_remake:game_master/cast 2s
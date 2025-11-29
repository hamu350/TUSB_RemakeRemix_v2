#> tusb_remake:game_master/bosswin/
# ボスが勝利した時実行

# プレイヤーを勝利させない
schedule clear tusb_remake:game_master/schedule

# ボスバー消し
bossbar set game_master visible false

# 敵、アイテム削除

forceload add -2950 -71 -3000 -11

function tusb_remake:game_master/allkill

# タグ外し
tag @a remove GameMasterBattle

execute as @a run attribute @s minecraft:generic.knockback_resistance modifier remove 3-1-4-6-2

schedule clear tusb_remake:game_master/bosswin/end

# ボス部屋解放
data modify storage tusb_remake: game_master.battle set value 0b

data modify storage tusb_remake: game_master.live set value 0b

# ボスボタン配置
setblock -2990 71 -41 light_weighted_pressure_plate

# 帰還看板配置
setblock -2983 70 -41 minecraft:warped_sign[rotation=4]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"/function tusb_remake:sign_event/game_master/boss_area"}}',Text2:'{"text":"\\u5e30\\u9084","bold":true,"color":"#FFFFFF"}',Text3:'{"text":"\\u203b\\u30a2\\u30a4\\u30c6\\u30e0\\u306f","bold":true,"color":"red"}',Text4:'{"text":"\\u6301\\u3061\\u5e30\\u308c\\u307e\\u305b\\u3093","bold":true,"color":"red"}'}

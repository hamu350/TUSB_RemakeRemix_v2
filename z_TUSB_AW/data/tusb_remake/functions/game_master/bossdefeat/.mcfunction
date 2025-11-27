#> tusb_remake:game_master/bossdefeat/
# ボスが敗北した時実行

# ボス部屋解放
data modify storage tusb_remake: game_master.battle set value 0b

# タグ外し
tag @a remove GameMasterBattle

execute at @e[limit=1,tag=GMend] run playsound minecraft:entity.ender_dragon.death hostile @a[distance=..60] ~ ~ ~ 0.5 1 0.5

execute as @e[limit=1,tag=GMend] at @s run me こんなものが出てくるなんて...チートとしか思えないな...

execute as @a run attribute @s minecraft:generic.knockback_resistance modifier remove 3-1-4-6-2

# 勝利宣言
tellraw @a {"text":"*§0kk§r§4GameMaster§0§kk§rは討伐された！"}

schedule clear tusb_remake:game_master/bosswin/end

data modify storage tusb_remake: game_master.live set value 0b

forceload add -2950 -71 -3000 -11

function tusb_remake:game_master/allkill

# ボスボタン配置
setblock -2990 71 -41 light_weighted_pressure_plate

# 帰還看板配置
setblock -2983 70 -41 minecraft:warped_sign[rotation=4]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"/function tusb_remake:sign_event/game_master/boss_area"}}',Text2:'{"text":"\\u5e30\\u9084","bold":true,"color":"#FFFFFF"}',Text3:'{"text":"\\u203b\\u30a2\\u30a4\\u30c6\\u30e0\\u306f","bold":true,"color":"red"}',Text4:'{"text":"\\u6301\\u3061\\u5e30\\u308c\\u307e\\u305b\\u3093","bold":true,"color":"red"}'}

# 敵消し
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s run tag @e[distance=..60,tag=Enemy] add Garbage

# 報酬配置
function tusb_remake:game_master/bossdefeat/reward

# 討伐回数を加算
scoreboard players add GameMasterDefeated _ 1
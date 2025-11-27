#> tusb_remake:boss/bosswin/
# ボスが勝利した時実行

# プレイヤーを勝利させない
schedule clear tusb_remake:boss/schedule

# ボスバー消し
bossbar set infinity_boss visible false

# 敵、アイテム削除
execute at @e[type=armor_stand,tag=Boss_MarkerB] run kill @e[tag=Enemy,distance=..25]
execute at @e[type=armor_stand,tag=Boss_MarkerB] run kill @e[type=item,distance=..25]

# タグ外し
tag @a remove InfinityBossBattle

# ボスは消える
tag @e[tag=InfinityBoss] add Garbage

# ボス部屋解放
data modify storage tusb_remake: infinity_boss.battle set value 0b

# ボスボタン配置
setblock -2769 223 -280 command_block[facing=up]{auto: 0b, powered: 0b, LastExecution: 2217789L, SuccessCount: 3, UpdateLastExecution: 1b, conditionMet: 1b, Command: "function tusb_remake:boss/makeup/",LastOutput: '{"extra":[{"translate":"commands.function.success.single","with":["18","tusb_remake:boss/makeup/"]}]}', TrackOutput: 0b}
setblock -2769 225 -280 minecraft:lever[face=floor,facing=west]

# 帰還看板配置
setblock -2764 224 -280 minecraft:warped_sign[rotation=4]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"/function tusb_remake:sign_event/infinity_boss/boss_area"}}',Text2:'{"text":"\\u5e30\\u9084","bold":true,"color":"#FFFFFF"}',Text3:'{"text":"\\u203b\\u30a2\\u30a4\\u30c6\\u30e0\\u306f","bold":true,"color":"red"}',Text4:'{"text":"\\u6301\\u3061\\u5e30\\u308c\\u307e\\u305b\\u3093","bold":true,"color":"red"}'}

#> tusb_remake:boss/spawn

# ボスデータセット
function asset:mob/3605.gamemaster/data/2.data_set
# 人数によって緩衝体力とボスバー
execute store result storage asset: mob.AbsorptionAmount int 12000 if entity @a[tag=GameMasterBattle,gamemode=!spectator]
execute store result score _ game_master.reward if entity @a[tag=GameMasterBattle,gamemode=!spectator]
execute store result bossbar minecraft:game_master max run data get storage asset: mob.AbsorptionAmount
bossbar set minecraft:game_master visible true
data modify storage util: in set from storage asset: mob

function util:spawn/

schedule function tusb_remake:game_master/cast 1t

# ボスの生存確認
schedule function tusb_remake:game_master/schedule 1t

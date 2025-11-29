#> tusb_remake:boss/spawn

# ボスデータセット
function asset:mob/3604.infinity_boss/data/2.data_set
# 人数によって緩衝体力とボスバー
execute store result storage asset: mob.AbsorptionAmount int 800 if entity @a[tag=InfinityBossBattle,gamemode=!spectator]
execute store result score _ infinity_boss.reward if entity @a[tag=InfinityBossBattle,gamemode=!spectator]
execute store result bossbar infinity_boss max run data get storage asset: mob.AbsorptionAmount
bossbar set minecraft:infinity_boss visible true
data modify storage util: in set from storage asset: mob

function util:spawn/

schedule function tusb_remake:boss/cast 1t

# ボスの生存確認
schedule function tusb_remake:boss/schedule 1t

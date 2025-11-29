#> asset:mob/0000.example/summon/2.summon

# functionの0000.exampleの変えたフォルダの名前にする(例:0001.the_white)
function asset:mob/0000.example/data/2.data_set
# 即消える経験値オーブを召喚しています
summon experience_orb ~ ~ ~ {Age:6000, Tags:["SummonMob"]}
# 召喚した経験値オーブに呼び出したmobを騎乗させます
data modify storage asset: mob.Tags append value "SpawnMob"
data modify entity @e[type=experience_orb,limit=1,tag=SummonMob,sort=nearest] Passengers append from storage asset: mob
# ここのMobIdを作るmobのidに変えます
scoreboard players set @e[tag=SpawnMob,limit=1] MobId 0
# 騎乗させたことで座標がずれているので修正します
data modify entity @e[tag=SpawnMob,limit=1] Pos set from entity @e[tag=SummonMob,limit=1] Pos

tag @e[tag=SpawnMob,limit=1] remove SpawnMob
kill @e[type=experience_orb,tag=SummonMob,limit=1,sort=nearest]
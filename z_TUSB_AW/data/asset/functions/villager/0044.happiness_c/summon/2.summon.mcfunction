#> asset:villager/0044.happiness_c/summon/2.summon

# まず取引情報を取得します
function asset:villager/0044.happiness_c/trade_info/2.trade_info
# 次にnbtを色々設定します
data modify storage asset: villager merge value {id:"villager",NoAI:true,Invulnerable:true,Tags:["TypeChecked","SystemEntity","SpawnMob"]}
# 召喚します。まず乗り物となる経験値を召喚
summon experience_orb ~ ~ ~ {Age:6000,Tags:["SummonMob"]}
# そしてstorageから乗せます
data modify entity @e[tag=SummonMob,limit=1] Passengers append from storage asset: villager
# 騎乗させたことで座標がずれているので修正します
data modify entity @e[tag=SpawnMob,limit=1] Pos set from entity @e[tag=SummonMob,limit=1] Pos

# 経験値をkillし、村人のtagも消します
kill @e[tag=SummonMob,limit=1]
tag @e[tag=SpawnMob,limit=1] remove SpawnMob
#> tusb_remake:villager/update/
# 村人の取引情報をアップデートするfunction

# 村人のidを取得
execute store result storage asset:context id int 1 run scoreboard players get @s VillagerId
# 取引情報を取得
function #asset:villager/trade_info
# 適応
data modify entity @s Offers set from storage asset: villager.Offers
# 取得したデータを捨てる
data remove storage asset: villager

# 最後に更新済みにする
scoreboard players operation @s VillagerUpdate = _ VillagerUpdate
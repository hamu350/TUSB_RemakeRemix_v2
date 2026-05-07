#> mob_manager:gimmic/skill/newstar_king/time_realization/
#
# タイム・リアリゼーション
# 

# 生存時間を表示
me はタイム・リアリゼーションを唱えた！
tellraw @a {"translate":"%1$sの生存時間：%2$stick","with": [{"selector": "@s"},{"score": {"name": "@s","objective": "LiveTime"}}],"color": "dark_purple"}

#> tusb_remake:game_master/bossdefeat/reward
# game_master.rewardの数だけ報酬を配置

loot insert -2721 19 105 loot asset:item/instant/egg/game_master_reward
scoreboard players remove _ game_master.reward 1
execute if score _ game_master.reward matches 1.. run schedule function tusb_remake:game_master/bossdefeat/reward 1t

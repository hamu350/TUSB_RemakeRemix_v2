#> tusb_remake:boss/bossdefeat/reward
# infinity_boss.rewardの数だけ報酬を配置

loot insert -2721 19 105 loot asset:item/instant/egg/infinity_boss_reward
scoreboard players remove _ infinity_boss.reward 1
execute if score _ infinity_boss.reward matches 1.. run schedule function tusb_remake:boss/bossdefeat/reward 1t

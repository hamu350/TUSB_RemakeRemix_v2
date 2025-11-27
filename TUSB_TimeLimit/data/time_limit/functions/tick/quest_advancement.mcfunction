#> time_limit:tick/quest_advancement

# 釣り
# execute as @a[scores={Fish_Count=25..}] run advancement grant @s only time_limit:time_limit_mission/fished_25
# execute as @a[scores={Fish_Count=50..}] run advancement grant @s only time_limit:time_limit_mission/fished_50
# execute as @a[scores={Fish_Count=100..}] run advancement grant @s only time_limit:time_limit_mission/fished_100
# execute as @a[scores={Fish_Count=200..}] run advancement grant @s only time_limit:time_limit_mission/fished_200
# execute as @a[scores={Fish_Count=300..}] run advancement grant @s only time_limit:time_limit_mission/fished_300
# 島攻略数
execute if score _ ConquerIsland matches 10.. run advancement grant @a only time_limit:time_limit_mission/conquer_island_10
execute if score _ ConquerIsland matches 20.. run advancement grant @a only time_limit:time_limit_mission/conquer_island_20
execute if score _ ConquerIsland matches 30.. run advancement grant @a only time_limit:time_limit_mission/conquer_island_30
execute if score _ ConquerIsland matches 40.. run advancement grant @a only time_limit:time_limit_mission/conquer_island_40
execute if score _ ConquerIsland matches 50.. run advancement grant @a only time_limit:time_limit_mission/conquer_island_50

# 島攻略数50なら別で出すやつ
execute if score _ ConquerIsland matches 50.. if score Start Game matches 1 run function time_limit:clear
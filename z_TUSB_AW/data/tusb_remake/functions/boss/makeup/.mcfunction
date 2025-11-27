#> tusb_remake:boss/makeup/
#
#> 羊を倒すとここが実行される感じ
#>
#>
#> 実行順：sound1+message1⇒message2+CountDown⇒particle1+sound2⇒summon
scoreboard players add Count MakeupTickB 1

# ボス部屋封鎖
data modify storage tusb_remake: infinity_boss.battle set value 1b

# タグ付け
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s run tag @a[distance=..20] add InfinityBossBattle

# ボスボタン除去
setblock -2769 225 -280 air
setblock -2769 223 -280 air

# 帰還看板除去
setblock -2764 224 -280 air

# 報酬量設定
scoreboard players reset _ infinity_boss.reward

# これasは全dim探索するけどatはどうなのかわからないから検証する必要あり

# schedule loopしてるからexecute as atが消えてて指定した座標で実行できていない

#> 最初の演出
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 2 run function tusb_remake:boss/makeup/sound1
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 2 run function tusb_remake:boss/makeup/message1

#> メッセージ2
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 82 run function tusb_remake:boss/makeup/message2

#> 10
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 102 run function tusb_remake:boss/makeup/countdown

#> 9
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 122 run function tusb_remake:boss/makeup/countdown

#> 8
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 142 run function tusb_remake:boss/makeup/countdown

#> 7
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 162 run function tusb_remake:boss/makeup/countdown

#> 6
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 182 run function tusb_remake:boss/makeup/countdown

#> 5
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 202 run function tusb_remake:boss/makeup/countdown

#> 4
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 222 run function tusb_remake:boss/makeup/countdown

#> 3
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 242 run function tusb_remake:boss/makeup/countdown

#> 2
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 262 run function tusb_remake:boss/makeup/countdown

#> 1
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 282 run function tusb_remake:boss/makeup/countdown

#> 魔法陣出現
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches 302 run function tusb_remake:boss/makeup/sound2
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s positioned ~ ~1 ~ if score Count MakeupTickB matches 302..342 run function tusb_remake:boss/makeup/particle1

#> summon
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s positioned ~ ~1 ~ if score Count MakeupTickB matches 343.. run function tusb_remake:boss/makeup/summon
execute as @e[type=armor_stand,tag=Boss_MarkerB] at @s if score Count MakeupTickB matches ..343 run schedule function tusb_remake:boss/makeup/ 1t
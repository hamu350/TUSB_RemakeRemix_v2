#> tusb_remake:game_master/makeup/
#
#> 羊を倒すとここが実行される感じ
#>
#>
#> 実行順：sound1+message1⇒message2+CountDown⇒particle1+sound2⇒summon
scoreboard players add Count MakeupTickC 1

# ボス部屋封鎖
data modify storage tusb_remake: game_master.battle set value 1b

# タグ付け
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s run tag @a[distance=..60,gamemode=!spectator] add GameMasterBattle

# ボスボタン除去
setblock -2990 71 -41 air

# 帰還看板除去
setblock -2983 70 -41 red_carpet

# 報酬量設定
scoreboard players reset _ game_master.reward


# これasは全dim探索するけどatはどうなのかわからないから検証する必要あり

# schedule loopしてるからexecute as atが消えてて指定した座標で実行できていない

#> 最初の演出
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 2 run function tusb_remake:game_master/makeup/sound1
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 2 run function tusb_remake:game_master/makeup/message1

#> メッセージ2
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 82 run function tusb_remake:game_master/makeup/message2

#> 10
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 102 run function tusb_remake:game_master/makeup/countdown

#> 9
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 122 run function tusb_remake:game_master/makeup/countdown

#> 8
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 142 run function tusb_remake:game_master/makeup/countdown

#> 7
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 162 run function tusb_remake:game_master/makeup/countdown

#> 6
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 182 run function tusb_remake:game_master/makeup/countdown

#> 5
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 202 run function tusb_remake:game_master/makeup/countdown

#> 4
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 222 run function tusb_remake:game_master/makeup/countdown

#> 3
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 242 run function tusb_remake:game_master/makeup/countdown

#> 2
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 262 run function tusb_remake:game_master/makeup/countdown

#> 1
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 282 run function tusb_remake:game_master/makeup/countdown

#> 魔法陣出現
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches 302 run function tusb_remake:game_master/makeup/sound2
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s positioned ~ ~1 ~ if score Count MakeupTickC matches 302..342 run function tusb_remake:game_master/makeup/particle1

#> summon
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s positioned ~ ~1 ~ if score Count MakeupTickC matches 343.. run function tusb_remake:game_master/makeup/summon
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s if score Count MakeupTickC matches ..343 run schedule function tusb_remake:game_master/makeup/ 1t
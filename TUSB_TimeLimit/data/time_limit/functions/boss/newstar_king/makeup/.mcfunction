#> time_limit:boss/newstar_king/makeup/
#
#> 羊を倒すとここが実行される感じ
#>
#>
#> 実行順：sound1+message1⇒message2+CountDown⇒particle1+sound2⇒summon
scoreboard players add Count MakeupTick 1

# これasは全dim探索するけどatはどうなのかわからないから検証する必要あり

# schedule loopしてるからexecute as atが消えてて指定した座標で実行できていない

execute if score Count MakeupTick matches 1 run function time_limit:boss/newstar_king/makeup/kill

#> 最初の演出
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 2 run function time_limit:boss/newstar_king/makeup/sound1
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 2 run function time_limit:boss/newstar_king/makeup/message1

#> メッセージ2
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 82 run function time_limit:boss/newstar_king/makeup/message2

#> 10
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 102 run function time_limit:boss/newstar_king/makeup/countdown

#> 9
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 122 run function time_limit:boss/newstar_king/makeup/countdown

#> 8
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 142 run function time_limit:boss/newstar_king/makeup/countdown

#> 7
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 162 run function time_limit:boss/newstar_king/makeup/countdown

#> 6
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 182 run function time_limit:boss/newstar_king/makeup/countdown

#> 5
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 202 run function time_limit:boss/newstar_king/makeup/countdown

#> 4
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 222 run function time_limit:boss/newstar_king/makeup/countdown

#> 3
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 242 run function time_limit:boss/newstar_king/makeup/countdown

#> 2
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 262 run function time_limit:boss/newstar_king/makeup/countdown

#> 1
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 282 run function time_limit:boss/newstar_king/makeup/countdown

#> 魔法陣出現
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches 302 run function time_limit:boss/newstar_king/makeup/sound2
execute at @e[type=armor_stand,tag=Boss_Marker] positioned ~ ~1 ~ if score Count MakeupTick matches 302..342 run function time_limit:boss/newstar_king/makeup/particle1

#> summon
execute at @e[type=armor_stand,tag=Boss_Marker] positioned ~ ~1 ~ if score Count MakeupTick matches 343.. run function time_limit:boss/newstar_king/makeup/summon
execute at @e[type=armor_stand,tag=Boss_Marker] if score Count MakeupTick matches ..343 run schedule function time_limit:boss/newstar_king/makeup/ 1t
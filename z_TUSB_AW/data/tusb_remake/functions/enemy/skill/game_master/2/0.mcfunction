#> tusb_remake:enemy/skill/game_master/2/0
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/2/

# me
    execute as @e[limit=1,tag=GM] run me §l裏だ、ちくっと来ますよ。
# sound
    execute at @e[limit=1,tag=GM] run playsound entity.wither.spawn master @a[distance=..60]
# damage
    data modify storage score_damage: Argument set value {Damage:1000.00,DamageType:"Projectile"}
    execute at @e[limit=1,tag=GM] as @a[distance=..60,tag=GameMasterBattle] run function score_damage:api/attack
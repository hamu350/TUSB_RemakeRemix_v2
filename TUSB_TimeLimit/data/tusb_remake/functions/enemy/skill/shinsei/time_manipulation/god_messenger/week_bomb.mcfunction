#> tusb_remake:enemy/skill/shinsei/time_manipulation/god_messenger/week_bomb

# 爆発処理
gamerule mobGriefing false
execute at @e[type=skeleton,tag=bomb] run summon creeper ~ ~ ~ {ExplosionRadius:3b,ignited:true,Fuse:0}
kill @e[type=skeleton,tag=bomb]
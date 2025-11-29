#> tusb_remake:skill/archer/ghast_cannon/hit/blast
# ブラストショットが当たった場所で、サバイバルエリアなら爆発

execute if score _ PotentialSkill matches 3250 run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:1,ignited:true,Fuse:0}
execute if score _ PotentialSkill matches 3251..3259 run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:3,ignited:true,Fuse:0}

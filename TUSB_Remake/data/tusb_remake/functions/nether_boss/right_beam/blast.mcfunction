#> tusb_remake:nether_boss/right_beam/blast
# 右目からのビームの爆発
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[tag=RightEyeBlast] at @s positioned ~ ~3.5 ~ run summon minecraft:creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:5b,Invulnerable:true,DeathTime:19s,CustomName:'"ドラゴンゲイズ"'}
gamerule mobGriefing false

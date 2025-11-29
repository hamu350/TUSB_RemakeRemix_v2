#> tusb_remake:skill/summoner/summon_petit_black/black/fall
# ぷちブラックに落ちる処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: ペットを巻き込まないように。プレイヤーは相変わらず巻き込まれます。

### 発動中のサウンド
playsound minecraft:entity.shulker.teleport master @a[distance=..32] ~ ~ ~ 0.2 0.5 0
particle minecraft:portal ~ ~-0.5 ~ 0 0 0 3 20 force

### 吸い込み効果 なんかめっちゃ目が回る感じになる！
execute as @e[distance=..10,type=#tusb_remake:mob,nbt=!{Invulnerable:true},team=!FriendlyTeam] rotated as @s run tp @s ~ ~1 ~ ~6 ~
execute as @a[distance=..10,gamemode=!spectator] rotated as @s run tp @s ~ ~1 ~ ~6 ~

### ダメージ処理
data modify storage score_damage: Argument set value {Damage:20.00}
execute positioned ~-0.5 ~1 ~-0.5 as @e[dy=0,type=#tusb_remake:mob,tag=Enemy,nbt=!{ActiveEffects:[{Id:23}]}] at @s run function tusb_remake:skill/summoner/summon_petit_black/black/hit

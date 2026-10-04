#> skill:trigger/projectile/hit
# 飛んでるのが当たった敵
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

#真空斬りHIT処理
execute if score @s PotentialSkill matches 1220..1229 run function skill:job/knight/shinku_giri/hit
#手裏剣HIT処理
execute if score @s PotentialSkill matches 2200..2209 run function skill:job/ninja/suriken/hit
#居縮HIT処理
execute unless entity @s[team=Boss] if score @s PotentialSkill matches 2230..2239 run function skill:job/ninja/isukumi/hit
#チェインアローHIT処理
execute if score @s PotentialSkill matches 10000..99999 run function skill:job/archer/chain_arrow/hit/
execute if score @s PotentialSkill matches 100000.. run function skill:job/archer/madan/hit/
execute if score @s PotentialSkill matches 3280..3289 run function skill:job/archer/e_su/hit/
#ブラストショットHIT処理
execute if score @s PotentialSkill matches 3230..3239 run function skill:job/archer/blast_shot/hit/
#ガストキャノンHIT処理
execute if score @s PotentialSkill matches 3250..3259 run function skill:job/archer/ghast_cannon/hit/
#フェイタルショットHIT処理
execute if score @s PotentialSkill matches 3260..3269 run function skill:job/archer/fatal_shot/hit/
#ディアHIT処理
execute if score @s PotentialSkill matches 4210..4219 run function skill:job/white_mage/dia/hit
#つんつん雪玉HIT処理
execute if score @s PotentialSkill matches 6240..6249 run function skill:job/summoner/tsuntsun/fungus/attack/snowball/hit

data modify storage tusb_remake: projectile_loop set value true

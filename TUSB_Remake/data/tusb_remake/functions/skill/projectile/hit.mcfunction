#> tusb_remake:skill/projectile/hit
# 飛んでるのが当たった敵
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

#真空斬りHIT処理
execute if score @s PotentialSkill matches 1220..1229 run function tusb_remake:skill/knight/shinku_giri/hit
#手裏剣HIT処理
execute if score @s PotentialSkill matches 2200..2209 run function tusb_remake:skill/ninja/suriken/hit
#居縮HIT処理
execute if score @s PotentialSkill matches 2230..2239 run function tusb_remake:skill/ninja/isukumi/hit
#チェインアローHIT処理
execute if score @s PotentialSkill matches 10000.. run function tusb_remake:skill/archer/chain_arrow/hit/
#ブラストショットHIT処理
execute if score @s PotentialSkill matches 3230..3239 run function tusb_remake:skill/archer/blast_shot/hit/
#ガストキャノンHIT処理
execute if score @s PotentialSkill matches 3250..3259 run function tusb_remake:skill/archer/ghast_cannon/hit/
#フェイタルショットHIT処理
execute if score @s PotentialSkill matches 3260..3269 run function tusb_remake:skill/archer/fatal_shot/hit/
#ディアHIT処理
execute if score @s PotentialSkill matches 4210..4219 run function tusb_remake:skill/white_mage/dia/hit
#つんつん雪玉HIT処理
execute if score @s PotentialSkill matches 6240..6249 run function tusb_remake:skill/summoner/tsuntsun/fungus/attack/snowball/hit

data modify storage tusb_remake: projectile_loop set value true

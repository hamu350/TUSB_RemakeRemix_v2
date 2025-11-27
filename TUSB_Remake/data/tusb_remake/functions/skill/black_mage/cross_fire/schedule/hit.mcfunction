#> tusb_remake:skill/black_mage/cross_fire/schedule/hit
# クロスファイアーが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.zombie.infect master @a[distance=..32] ~ ~ ~ 2 1.4 0
particle minecraft:large_smoke ~ ~1 ~ 0.3 0.5 0.3 0.1 20 force

### マルチヒット防止のエフェクト
effect give @s minecraft:saturation 10 127 true

### クロスファイアーは炎上効果
data modify entity @s Fire set value 40s

### 燃える敵で、火炎耐性がかかっていない場合、ダメージが3倍
data modify storage tusb_remake: cross_fire_damage set from storage score_damage: Argument.Damage
execute if entity @s[type=#tusb_remake:burnable,nbt=!{ActiveEffects:[{Id:12}]}] store result storage score_damage: Argument.Damage double 0.03 run data get storage score_damage: Argument.Damage 100
### ダメージを与える
function score_damage:api/attack
data modify storage score_damage: Argument.Damage set from storage tusb_remake: cross_fire_damage

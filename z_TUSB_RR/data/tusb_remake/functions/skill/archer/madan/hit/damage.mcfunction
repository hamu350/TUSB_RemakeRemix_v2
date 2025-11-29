#> tusb_remake:skill/archer/chain_arrow/hit/damage
# チェインアローが直接当たった時

### 演出する表示するカウントが残っているときだけ表示
execute unless data storage tusb_remake: {chain_arrow_count:0} run playsound entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 1 0 0
execute unless data storage tusb_remake: {chain_arrow_count:0} run particle enchanted_hit ~ ~1 ~ 1 1 1 0.1 120 force
execute unless data storage tusb_remake: {chain_arrow_count:0} run particle sweep_attack ~ ~1 ~ 1 0.5 1 0 30 force

### カウントを減らす
execute store result storage tusb_remake: chain_arrow_count int 0.9999999999 run data get storage tusb_remake: chain_arrow_count

### ダメージを入れる
function score_damage:api/attack

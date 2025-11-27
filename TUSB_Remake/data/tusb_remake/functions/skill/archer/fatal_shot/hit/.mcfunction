#> tusb_remake:skill/archer/fatal_shot/hit/
# フェイタルショットが直接当たった時

### 演出を出すのは10体まで
data modify storage tusb_remake: fatal_shot_count set value 10
### チェインアローのレベルに応じて呼び出し
execute as @e[distance=..10,type=#tusb_remake:mob,tag=Enemy,sort=random] at @s run function tusb_remake:skill/archer/fatal_shot/hit/damage

### バードストライクスケジュールを追加
execute in minecraft:overworld run schedule function tusb_remake:skill/archer/bird_strike/hit/schedule/ 1t

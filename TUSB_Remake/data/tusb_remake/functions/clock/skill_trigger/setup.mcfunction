#> tusb_remake:clock/skill_trigger/setup
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @a[scores={Choyaku=2..,Jump=1..},nbt={ActiveEffects:[{Id:8}]}] at @s run function tusb_remake:skill/ninja/choyaku/jump
scoreboard players reset @a[scores={Jump=1..}] Jump

### 緩衝体力用被ダメージ補正処理
execute as @a[scores={HPChanging=0..},nbt=!{AbsorptionAmount:0f}] run function tusb_remake:clock/skill_trigger/setup2

#### 奈落介錯 y=-130以下
kill @a[predicate=tusb_remake:in_void,scores={HP=1..}]

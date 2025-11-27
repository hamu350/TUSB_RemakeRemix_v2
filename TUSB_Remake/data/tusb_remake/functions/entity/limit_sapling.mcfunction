#> tusb_remake:entity/limit_sapling
# 苗木の取引を制限する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### まだ手に入れてない苗木は販売数が０になる
execute unless data storage tusb_remake: settings.saplings{oak:true} run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:oak_sapling"}}].maxUses set value 0
execute unless data storage tusb_remake: settings.saplings{birch:true} run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:birch_sapling"}}].maxUses set value 0
execute unless data storage tusb_remake: settings.saplings{jungle:true} run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:jungle_sapling"}}].maxUses set value 0
execute unless data storage tusb_remake: settings.saplings{spruce:true} run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:spruce_sapling"}}].maxUses set value 0
execute unless data storage tusb_remake: settings.saplings{acacia:true} run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:acacia_sapling"}}].maxUses set value 0
execute unless data storage tusb_remake: settings.saplings{dark_oak:true} run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:dark_oak_sapling"}}].maxUses set value 0

### ツツジ系は常に０
data modify entity @s Offers.Recipes[{sell:{id:"minecraft:azalea"}}].maxUses set value 0
data modify entity @s Offers.Recipes[{sell:{id:"minecraft:flowering_azalea"}}].maxUses set value 0
data modify entity @s Offers.Recipes[{sell:{id:"minecraft:moss_block"}}].maxUses set value 0

### 売り物が存在しない取引だったら削除
data remove entity @s Offers.Recipes[{sell:{Count:0b}}]

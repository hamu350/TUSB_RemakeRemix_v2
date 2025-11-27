#> tusb_remake:enemy/skill/infinity_boss/neo/under_half/replace_item
#
# かつての英雄にアイテムを渡す
#
# @within function tusb_remake:enemy/skill/infinity_boss/neo/under_half/

# アイテムをもたせる
    loot replace entity @e[tag=PerfectHeroInit] armor.head loot asset:item/armor/head/outer_perfect
    loot replace entity @e[tag=PerfectHeroInit] armor.chest loot asset:item/armor/chestplate/outer_perfect
    loot replace entity @e[tag=PerfectHeroInit] armor.legs loot asset:item/armor/leggings/outer_perfect
    loot replace entity @e[tag=PerfectHeroInit] armor.feet loot asset:item/armor/boots/outer_perfect
    loot replace entity @e[tag=PerfectHeroInit] weapon.offhand loot asset:item/helditem/offhand/calamity_for_forgotted_void

# タグを消す
    tag @e[tag=PerfectHeroInit] remove PerfectHeroInit
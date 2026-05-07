#> mob_manager:gimmic/skill/remix_rider/white_rider_remix/

# 死魔召喚
execute if score @s MobCastTime matches 0..10 run function mob_manager:gimmic/skill/white_rider/summon
# オリュンポス・ギガントマキア
execute if score @s MobCastTime matches 10..19 run function mob_manager:gimmic/skill/remix_rider/white_rider_remix/oryunpos_gigantomakia

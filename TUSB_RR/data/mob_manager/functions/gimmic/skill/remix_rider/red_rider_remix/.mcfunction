#> mob_manager:gimmic/skill/remix_rider/black_rider_remix/

# 死兵召喚
execute if score @s MobCastTime matches 0..10 run function mob_manager:gimmic/skill/red_rider/summon
# オリュンポス・ティタノマキア
execute if score @s MobCastTime matches 10..19 run function mob_manager:gimmic/skill/remix_rider/red_rider_remix/oryunpos_thitanomakia/

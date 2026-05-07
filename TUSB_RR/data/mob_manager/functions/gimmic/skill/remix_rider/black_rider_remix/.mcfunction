#> mob_manager:gimmic/skill/remix_rider/black_rider_remix/

# 死霊召喚
execute if score @s MobCastTime matches 0..10 run function mob_manager:gimmic/skill/black_rider/summon
# オリュンポス・トロイア
execute if score @s MobCastTime matches 10..19 run function mob_manager:gimmic/skill/remix_rider/black_rider_remix/oryunpos_toroia

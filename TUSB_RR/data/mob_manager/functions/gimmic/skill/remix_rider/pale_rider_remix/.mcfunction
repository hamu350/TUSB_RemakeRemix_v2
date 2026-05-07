#> mob_manager:gimmic/skill/remix_rider/black_rider_remix/

# 死魔召喚
execute if score @s MobCastTime matches 0..10 run function mob_manager:gimmic/skill/pale_rider/summon
# ハデーススナイトメア
execute if score @s MobCastTime matches 10..19 run function mob_manager:gimmic/skill/remix_rider/pale_rider_remix/hadesusu_nightmare/

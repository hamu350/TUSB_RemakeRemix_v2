#> mob_manager:gimmic/skill/newstar_king/
# スキル抽選function

# 0~19の中からランダム
# 0~9ならセット1(内容はfunction先で)
execute if score @s MobCastTime matches 0..9 run function mob_manager:gimmic/skill/newstar_king/skill_set1
# 10~19ならセット2
execute if score @s MobCastTime matches 10..19 run function mob_manager:gimmic/skill/newstar_king/skill_set2

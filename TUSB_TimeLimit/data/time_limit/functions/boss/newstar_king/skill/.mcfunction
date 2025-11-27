#> time_limit:boss/newstar_king/skill/
# スキル抽選function

# 0~19の中からランダム
# 0~9ならセット1(内容はfunction先で)
execute if score @s MobCastTime matches 0..9 run function time_limit:boss/newstar_king/skill/skill_set1
# 10~19ならセット2
execute if score @s MobCastTime matches 10..19 run function time_limit:boss/newstar_king/skill/skill_set2
# 5~9 or 15~19ならワープ
execute if score @s MobCastTime matches 5..9 run function time_limit:boss/newstar_king/skill/time_leap/
execute if score @s MobCastTime matches 15..19 run function time_limit:boss/newstar_king/skill/time_leap/
# 眷属召喚
function time_limit:boss/newstar_king/skill/time_manipulation/
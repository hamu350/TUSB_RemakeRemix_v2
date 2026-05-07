#> mob_manager:gimmic/skill/shinsei/
#
#>新星様のスキル
#
#>TP/毒スプ/ペスクロ/新星眷属/深淵眷属/時間加速


execute if score @s MobCastTime matches 0..2 run function mob_manager:gimmic/skill/shinen/teleport
execute if score @s MobCastTime matches 3..6 run function mob_manager:gimmic/skill/shinsei/poison_spread
execute if score @s MobCastTime matches 6..9 run function mob_manager:gimmic/skill/pale_rider/magic/
execute if score @s MobCastTime matches 10..14 run function mob_manager:gimmic/skill/shinsei/time_manipulation/
execute if score @s MobCastTime matches 14..17 run function mob_manager:gimmic/skill/shinen/reincarnate
execute if score @s MobCastTime matches 18..19 run function mob_manager:gimmic/skill/shinsei/acceleration
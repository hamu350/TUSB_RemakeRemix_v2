#> time_limit:boss/newstar_king/skill/summon_blackhole/loop


# 作動した後ループする場所

# schedule joinしてるから色々おかしなってる?

# パーティクル
execute at @e[type=marker,tag=Blackhole] run particle minecraft:dragon_breath ~ ~1 ~ 2.5 1.5 2.5 0.01 10 normal @a
execute at @e[type=marker,tag=Blackhole] run particle minecraft:squid_ink ~ ~1 ~ 1 1 1 0.01 10 normal @a
execute at @e[type=marker,tag=Blackhole] run particle minecraft:smoke ~ ~1 ~ 2.5 1.5 2.5 0.01 50 normal @a
# 実際に効果が現れるのは予備動作3s後
# 音も出したい
# 周囲のプレイヤー引き寄せもあります
execute if score Count Blackhole matches 60.. at @e[type=marker,tag=Blackhole] run function time_limit:boss/newstar_king/skill/summon_blackhole/result

# ループ用スコア増加
scoreboard players add Count Blackhole 1

# schedule loop
# 8秒継続、実質5秒
execute if score Count Blackhole matches ..160 run schedule function time_limit:boss/newstar_king/skill/summon_blackhole/loop 1t
# 終了処理(score reset,entity kill)
execute if score Count Blackhole matches 161.. run function time_limit:boss/newstar_king/skill/summon_blackhole/end_blackhole
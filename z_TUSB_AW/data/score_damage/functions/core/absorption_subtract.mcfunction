#> score_damage:core/absorption_subtract
#
# 緩衝体力を減らす
#
# @within function score_damage:core/attack

#> Temp
# @private
    #declare score_holder $SubtractedAbsorptionAmount

# 緩衝体力を計算
    scoreboard players operation $SubtractedAbsorptionAmount ScoreDamageCore = $AbsorptionAmount ScoreDamageCore
    # ダメージが緩衝体力以下の場合緩衝体力を減らしダメージを0にする
        execute if score $Damage ScoreDamageCore <= $AbsorptionAmount ScoreDamageCore run scoreboard players operation $SubtractedAbsorptionAmount ScoreDamageCore -= $Damage ScoreDamageCore
        execute if score $Damage ScoreDamageCore <= $AbsorptionAmount ScoreDamageCore run scoreboard players set $Damage ScoreDamageCore 0
    # ダメージが緩衝体力を上回っていれば緩衝体力をゼロにしてダメージを減らす
        execute if score $Damage ScoreDamageCore > $AbsorptionAmount ScoreDamageCore run scoreboard players set $SubtractedAbsorptionAmount ScoreDamageCore 0
        execute if score $Damage ScoreDamageCore > $AbsorptionAmount ScoreDamageCore run scoreboard players operation $Damage ScoreDamageCore -= $AbsorptionAmount ScoreDamageCore

# 代入
    execute store result entity @s AbsorptionAmount float 0.0001 run scoreboard players get $SubtractedAbsorptionAmount ScoreDamageCore

# リセット
    scoreboard players reset $SubtractedAbsorptionAmount ScoreDamageCore
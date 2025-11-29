#> tusb_remake:event/roll

# 予感のやつ
# extremeが有効なときだけ時間が違うよ

# extreme以外なら通常
execute if score Difficulty Option matches ..3 run function tusb_remake:event/default
# extreme
execute if score Difficulty Option matches 4.. run function tusb_remake:event/extreme
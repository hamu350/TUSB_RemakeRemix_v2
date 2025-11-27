#> tusb_remake:doom/

# 宣告
# extremeが有効なときだけ時間を変える

# extreme以外なら通常
execute if score Difficulty Option matches ..3 run function tusb_remake:doom/default
# extreme
execute if score Difficulty Option matches 4.. run function tusb_remake:doom/extreme
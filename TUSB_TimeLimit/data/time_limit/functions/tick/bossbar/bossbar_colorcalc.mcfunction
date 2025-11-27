#> time_limit:tick/bossbar/bossbar_colorcalc

# 色が変わる条件を模索します

# フラグを立てる

# 同じ色の範囲で且つ時計島が変化していないなら変化しないフラグを立てる
execute if score BeforeTime Timer matches 18001.. if score Time Timer matches 18001.. unless score Cloak Changed_Form matches 1.. run scoreboard players set BossbarColor TUSB_sub 1
execute if score BeforeTime Timer matches 3601..18000 if score Time Timer matches 3601..18000 unless score Cloak Changed_Form matches 1.. run scoreboard players set BossbarColor TUSB_sub 1
execute if score BeforeTime Timer matches ..3600 if score Time Timer matches ..3600 unless score Cloak Changed_Form matches 1.. run scoreboard players set BossbarColor TUSB_sub 1

# 他に条件等あればここに


# フラグがonになっていないなら色変えるfunctionを実行
execute unless score BossbarColor TUSB_sub matches 1 run function time_limit:tick/bossbar/bossbar_color

# スコアリセット
scoreboard players reset BossbarColor TUSB_sub
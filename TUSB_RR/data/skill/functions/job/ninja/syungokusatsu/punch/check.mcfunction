#> skill:job_skill/ninja/syungokusatsu/punch/check
### 連舞の効果切れチェック

scoreboard players remove @s NinjaTime 1
execute if score @s NinjaTime matches ..-1 run function skill:job_skill/ninja/syungokusatsu/punch/clear

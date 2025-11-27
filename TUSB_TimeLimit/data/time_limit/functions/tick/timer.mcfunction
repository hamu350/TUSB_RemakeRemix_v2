#> time_limit:tick/timer

# 多分減らす前に取得しておけば1tick前の時間が取れる
execute if score Time Timer matches 1.. if score Start Game matches 1 run scoreboard players operation BeforeTime Timer = Time Timer

# tickごとにtimerを減らす
execute if score Time Timer matches 1.. if score Start Game matches 1 run scoreboard players remove Time Timer 1
# tickごとに経過時間を増やす
execute if score Time Timer matches 1.. if score Start Game matches 1 run scoreboard players add Time Spend_Time 1
# 一時的スコア保存
execute if score Time Timer matches 1.. if score Start Game matches 1 run scoreboard players operation $Temp Spend_Time = Time Spend_Time
# max値を直接addできないのでスコアボードにいちいち保存して代入しないといけない
execute store result bossbar time_limit:timer max run scoreboard players get Max_Time Timer
# こっちは別に代入できるけどみやすさのためにスコア使ってる(別だと変だよねうん。)
execute store result bossbar time_limit:timer value run scoreboard players get Time Timer

# h,m,sを代入するゾーン
# hourの代入
scoreboard players operation Time Timer /= $Time_to_Hour Timer
scoreboard players operation Hour Hour = Time Timer
# TimerがHourになっちゃってるんで戻しまーーーーす
execute store result score Time Timer run bossbar get time_limit:timer value
# minの代入
scoreboard players operation Time Timer %= $Time_to_Hour Timer
execute store result score Min Min run scoreboard players operation Time Timer /= $Time_to_Min Timer
# TimerがMinになっちゃってるんで戻しまーーーーす
execute store result score Time Timer run bossbar get time_limit:timer value
# secの代入
scoreboard players operation Time Timer %= $Time_to_Hour Timer
scoreboard players operation Time Timer %= $Time_to_Min Timer
execute store result score Sec Sec run scoreboard players operation Time Timer /= $Time_to_Sec Timer
# TimerがSecになっちゃってるんで戻しまーーーーす
execute store result score Time Timer run bossbar get time_limit:timer value
# これで元通り。


# 経過時間をhになおす
# ここのstoreの形を変えて、hが変わったかどうかを見れるようにする。
scoreboard players operation $Temp Spend_Time /= $Time_to_Hour Timer
# spend time(h)のあとにspend hourを計算することで、ここのタイミングで前のtickと今のtickとの時間の違いを整合させる

# 1tick前と比べて時間(h)が変わってたら時送りの盾のデータを更新部へ
execute if score $Temp Spend_Time > Time Spend_Hour run function time_limit:time_shield/calculate

# スコアリセット
# ここのリセット若干諸説ある。計算先でもスコアを使ってるんで、使っちゃうとあれー？って感じ
# 多分無駄
# scoreboard players reset $Temp Spend_Time


# 10~カウントダウンする
execute if score Start Game matches 1 if score Time Timer matches 0..10 run function time_limit:count_down
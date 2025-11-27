#> time_limit:tick/random_encount_mob


# トカルトランダムスポーンみたいな感じでmobを定期的にわかせるよ

# 初期時にランダムな秒数をセットして
# 湧いたタイミングでまたランダムな秒数をセットするよ

# 問題はマルチのときに何人を対象にするかだね

# 全員対象だとあれだけど、かといって一人だけの対象は違う気がするんだよね
# だったら個人個人にタイマーもたせるか

# 問題は何を出すかなんだよね

# 眷属はあり、ただ序盤がなー
# ステータスを攻略度合いで変えてもいいのかもしれんね
#> 検証用サウンド
# playsound entity.illusioner.prepare_mirror hostile @s ~ ~ ~ 1 1 0


























## 次のエンカウントまでの時間を設定
scoreboard players operation @s RandomEncount = @s RndMWC
function tusb_remake:random/update
## 30 - 90 秒
scoreboard players set _ RandomEncount 30
scoreboard players operation @s RandomEncount %= _ RandomEncount
scoreboard players add @s RandomEncount 60
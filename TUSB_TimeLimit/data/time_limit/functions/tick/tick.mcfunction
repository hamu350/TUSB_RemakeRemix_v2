#> time_limit:tick/tick
# tickで実行するコマンドを全部格納してるmcfunction

# 初joined検知
execute as @a[tag=!Joined] run function time_limit:tick/first_player

# ときが動き出す前に先に時計島のギミックを実行しなさーーーーい(条件指定くっそ多いけど要はタイマー動いてて時計島の形態変化されててオプションonならって感じ)
execute if score Cloak Changed_Form matches 1.. if score Start Game matches 1 if score Clock_Island Option matches 1 run function time_limit:tick/cloak_gimmic
# 時間が動き出す
# 止まってる時に動いてたらしいが、どうなってるんだ
function time_limit:tick/timer

# ランダムなmobに盾を持たせる

# まず盾判定してないmobを探索し、その後にenemyタグがあったら盾を確立で付与
# enemyタグonlyのほうがいい説はある(1tick後じゃないとうまく実行されない可能性がある)
# 取引村人は除外、るなちーみたいな騎乗モブもやりたいけどpassengersだと特殊モブ以外も乗ってたら盾つけれないしなぁ、、
execute as @e[type=#tusb_remake:mob,tag=!ShieldTried,limit=1] if score Time_Shield Option matches 1 run function time_limit:tick/detect_enemy

# ボスバー色チェン
function time_limit:tick/bossbar/bossbar_colorcalc

# ボスバーの名前変えます
function time_limit:tick/bossbar/bossbar_name_change

# 発光させます
function time_limit:tick/glowing_player

# クエスト用スコア検知
function time_limit:tick/quest_advancement

# プレイヤー用tick (すでにあったらそっちに移動しておいてください)
execute as @a at @s run function time_limit:tick/player_tick

# テスト用
# 死んでもなお検知するのかどうか
# inが必須

# 死ぬ前はおばわでも出てなかったのに死んだ後はずっとhiいってる、、、なんでや
# execute as @a in the_nether if predicate time_limit:boss run say hi


# ボス処理
function time_limit:tick/boss_tick

# 本来ならrejoinedしてtimer表示させたいけど現状はボスのHPをボスバーで出さないから毎秒表示でええや
bossbar set time_limit:timer players @a
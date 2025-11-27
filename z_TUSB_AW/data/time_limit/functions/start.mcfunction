#> time_limit:start


# 職業島から通常世界に誰か行ったらタイマースタート
execute if data storage tusb_remake: settings{time_limit:true} if score Start Game matches 0 run scoreboard players set Start Game 1
# startが1ならタイマーが動くようになってる
# スタート時の音
execute if data storage tusb_remake: settings{time_limit:true} run playsound entity.wither.spawn hostile @a ~ ~ ~ 1 1

# 超作業台レシピ変更

# わこからさんの取引内容を変更

# あかさめさんのデータを変える
# すごい釣り竿の入れ食いを5に
# これ初期スポーンの下にいるから多分modifyできるよな、、、?

# ボス強化onならここでエンドの構造を変えておく
# どうするかだけ決めておかないと
# forceload削除
# タイミングずらさないと多分生成されん


### オプション追加できないように
fill -1903 113 -138 -1903 113 -133 minecraft:obsidian replace minecraft:command_block

#> asset:mob/4103.dorasama/data/1.trigger
#↑このパスも変えてね
# 一括編集使うと楽。一回書き換えたらコピーすると更に楽

# asset:context {id:1}の部分を作るmobのidに変える(例(デイドラ):asset:context {id:10})
execute if data storage asset:context {id:4103} run function asset:mob/4103.dorasama/data/2.data_set
# functionの4103.dorasamaを変えたフォルダの名前にする(例:0010.deadra)
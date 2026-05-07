#> asset:mob/2201.donkakubat/data/1.trigger
#↑このパスも変えてね
# 一括編集使うと楽。一回書き換えたらコピーすると更に楽

# asset:context {id:1}の部分を作るmobのidに変える(例(デイドラ):asset:context {id:10})
execute if data storage asset:context {id:2201} run function asset:mob/2201.donkakubat/data/2.data_set
# functionの2001.hugukawaを変えたフォルダの名前にする(例:0010.deadra)
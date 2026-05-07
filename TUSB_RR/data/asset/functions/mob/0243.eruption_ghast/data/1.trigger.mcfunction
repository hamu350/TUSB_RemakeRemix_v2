#> asset:mob/0243.eruption_ghast/data/1.trigger
#↑このパスも変えてね
# 一括編集使うと楽。一回書き換えたらコピーすると更に楽

# asset:context {id:1}の部分を作るmobのidに変える(例(デイドラ):asset:context {id:10})
execute if data storage asset:context {id:243} run function asset:mob/0243.eruption_ghast/data/2.data_set
# functionの0243.eruption_ghastを変えたフォルダの名前にする(例:0010.deadra)
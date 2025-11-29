#> asset:mob/0220.teleport_creeper/data/1.trigger
#↑このパスも変えてね
# 一括編集使うと楽。一回書き換えたらコピーすると更に楽

# asset:context {id:1}の部分を作るmobのidに変える(例(デイドラ):asset:context {id:10})
execute if data storage asset:context {id:220} run function asset:mob/0220.teleport_creeper/data/2.data_set
# functionの0220.teleport_creeperを変えたフォルダの名前にする(例:0010.deadra)
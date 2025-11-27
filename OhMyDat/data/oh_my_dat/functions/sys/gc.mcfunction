### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### ガベージコレクタ

# メモ
# oh_my_dat: id→適当な順番で並んでる割り当て済みid
# oh_my_dat: id[0]→確認中のID
# _ OhMyDat→処理用のscore?
# * OhMyDatID→各entityが持つIDとかIDとして処理するscore

# 前回存在を確認したIDを移動させる
data modify storage oh_my_dat: id append from storage oh_my_dat: id[0]
data remove storage oh_my_dat: id[0]

# 割り当て済みID[0]以下の最大値を取得(_ IDに入る)
## オーバーフローを利用している
# _ OhMyDatに確認中のIDを入れる
execute store result score _ OhMyDat run data get storage oh_my_dat: id[0]
# int最大値を引く
scoreboard players remove _ OhMyDat 2147483647
## この時点では_ OhMyDatは負の値
# _ OhMyDatIDを0にリセットする
scoreboard players set _ OhMyDatID 0
# 全てのentity(と_)からOhMyDat(確認中のID-int最大値)を引く
## entityのOhMyDatIDは増える(ID+int最大値-確認中ID)
scoreboard players operation * OhMyDatID -= _ OhMyDat
## 確認中IDより大きいやつは全て
# 最初のコメントで言っていることをする
scoreboard players operation _ OhMyDatID > * OhMyDatID
# 値を戻す
scoreboard players operation * OhMyDatID += _ OhMyDat
## _ OhMyDatIDは確認中IDを持つentityがいるならint最大値、そうでなければそれ以下

# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
# 一度_ OhMyDatIDと_ OhMyDatを入れ替える
## _ OhMyDatは確認中ID-int最大値
## _ OhMyDatIDはさっき最大値取得したやつ
scoreboard players operation _ OhMyDat >< _ OhMyDatID
# 確認中IDを_ OhMyDatIDに移す
execute store result score _ OhMyDatID run data get storage oh_my_dat: id[0]
# 確認中IDを持ったentityがいないならgc_loop
execute if score _ OhMyDatID > _ OhMyDat run function oh_my_dat:sys/gc_loop
# _ OhMyDatと_ OhMyDatIDを入れ替える
## この時点では_ OhMyDatは最大値取得したやつ、_ OhMyDatIDはid[0]
scoreboard players operation _ OhMyDat >< _ OhMyDatID

# loop while x - next >= 2(prev - x) - 1 (⇔ 3x - 2prev - next + 1 >= 0)
## prev→_ OhMyDatID
## x→_ OhMyDat
# 2prev
execute store result score _ OhMyDat run data get storage oh_my_dat: id[-1]
## _ OhMyDat→id[-1]
## _ OhMyDatID→最大値取得したやつ
# id[-1]がなければ65536にする
execute if score _ OhMyDat matches 0 run scoreboard players add _ OhMyDat 65536
# _ OhMyDatIDが0なら両方に65536を足す
## _ OhMyDatIDが0ってどういう状況？→id[]がない状況=id[-1]もない
execute if score _ OhMyDatID matches 0 run scoreboard players add _ OhMyDat 65536
execute if score _ OhMyDatID matches 0 run scoreboard players add _ OhMyDatID 65536
scoreboard players operation _ OhMyDat += _ OhMyDat
# 2prev - 2x
scoreboard players operation _ OhMyDat -= _ OhMyDatID
scoreboard players operation _ OhMyDat -= _ OhMyDatID
# 3x - 2prev
scoreboard players operation _ OhMyDatID -= _ OhMyDat
# 3x - 2prev - next
execute store result score _ OhMyDat run data get storage oh_my_dat: id[1]
scoreboard players operation _ OhMyDatID -= _ OhMyDat
execute if score _ OhMyDatID matches -1.. run function oh_my_dat:sys/gc

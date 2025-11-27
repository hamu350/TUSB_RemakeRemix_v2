#> tusb_remake:load/update/1.0.3/
#
# v1.0.2(1.0.1)からv1.0.3へのアップデート
#
# @within function tusb_remake:load/update/

# ScoreDamageの読み込み順をTLEの前にする
    datapack disable "file/MCCMD-ScoreDamage"
    datapack enable "file/MCCMD-ScoreDamage" before "file/TUSB_TimeLimit"
# ScoreToHealthをリセット
    scoreboard players reset * ScoreToHealth

# コマンドを実行したい範囲をforceload
    execute in overworld run forceload add -2721 -400 -2752 -353

# forceloadが適応された状態で実行
schedule function tusb_remake:load/update/1.0.3/schedule 1t

# バージョンを設定。通知はschedule
data modify storage tusb_remake: settings.version set value "1.0.3"

# アップデート成功フラグを立てる
data modify storage tusb_remake: settings.update_success set value true
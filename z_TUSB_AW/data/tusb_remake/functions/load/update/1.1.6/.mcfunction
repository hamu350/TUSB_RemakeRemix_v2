#> tusb_remake:load/update/1.1.6/
#

# コマンドを実行したい範囲をforceload


# forceloadが適応された状態で実行
    execute in overworld run forceload add 3 -1842 49 -1801
    schedule function tusb_remake:load/update/1.1.6/schedule 1t

# 超作業台置き換え
    execute in overworld run forceload add -2737 -392 -2721 -353
    schedule function tusb_remake:load/sagyou 1t

# バージョンを設定。通知はschedule
    data modify storage tusb_remake: settings.version set value "1.1.6"

# アップデート成功フラグを立てる
    data modify storage tusb_remake: settings.update_success set value true

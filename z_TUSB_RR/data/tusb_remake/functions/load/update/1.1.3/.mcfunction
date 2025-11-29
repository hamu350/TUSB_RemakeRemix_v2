#> tusb_remake:load/update/1.1.3/
#

# コマンドを実行したい範囲をforceload
    forceload add -2986 -41
    forceload add -2712 -382
# forceloadが適応された状態で実行
    schedule function tusb_remake:load/update/1.1.3/schedule 1t

# バージョンを設定。通知はschedule
    data modify storage tusb_remake: settings.version set value "1.1.3"

# アップデート成功フラグを立てる
    data modify storage tusb_remake: settings.update_success set value true

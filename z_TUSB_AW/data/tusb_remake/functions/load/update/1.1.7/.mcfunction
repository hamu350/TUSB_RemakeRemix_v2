#> tusb_remake:load/update/1.1.6/
#
#
# コマンドを実行したい範囲をforceload


# forceloadが適応された状態で実行
    execute in minecraft:overworld positioned -1896 97 -139 run forceload add ~ ~
    execute in minecraft:overworld positioned -2717 89 -371 run forceload add ~ ~
    schedule function tusb_remake:load/update/1.1.7/schedule 1t

# バージョンを設定。通知はschedule
    data modify storage tusb_remake: settings.version set value "1.1.7"

# アップデート成功フラグを立てる
    data modify storage tusb_remake: settings.update_success set value true

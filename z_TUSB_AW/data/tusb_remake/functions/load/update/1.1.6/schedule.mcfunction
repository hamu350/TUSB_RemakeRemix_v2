#> tusb_remake:load/update/1.1.4/schedule
#
# v1.1.3からv1.1.4へのアップデート

execute in overworld run fill 3 14 -1842 22 26 -1824 minecraft:air replace
execute in overworld run place template time_limit:table_mountain/table 3 14 -1842

# forceloadを消す
    execute in overworld run forceload remove 3 -1842 49 -1801

# 通知
    schedule function tusb_remake:load/update/1.1.6/schedule.5s 5s

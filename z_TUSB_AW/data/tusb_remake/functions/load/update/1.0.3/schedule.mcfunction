#> tusb_remake:load/update/1.0.3/schedule
#
# v1.0.2(1.0.1)からv1.0.3へのアップデート
#
# @within function tusb_remake:load/update/1.0.3/

# 超作業台を更新
    place template time_limit:cloudia/sagyou -2737 70 -392
# 超作業台更新コマブロを設置
    setblock -2742 88 -359 minecraft:command_block{Command: "/place template time_limit:cloudia/sagyou -2737 70 -392", x: -2742, y: 88, z: -359} replace
    setblock -2743 88 -358 oak_sign[rotation=2]{Text1:'"超作業台を更新する"',Text2:'"Adv.ﾎﾞﾀﾝ必須"'}

# forceloadを消す
    execute in overworld run forceload remove -2721 -400 -2752 -353

# 通知
    tellraw @a {"translate": "§f§l[Update-Program]ver1.0.3へのアップデートが完了しました"}
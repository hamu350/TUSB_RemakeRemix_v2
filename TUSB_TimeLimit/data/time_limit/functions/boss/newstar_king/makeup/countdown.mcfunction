#> time_limit:boss/newstar_king/makeup/countdown
#
#> ボスが召喚されるまでのカウントダウン
#> 1になるまで表示する
#> time_limit:boss/newstar_king/makeup/soundが実行されると同時ぐらいに開始

#> 20Tick毎に表示するカウントダウンを作成
    title @a[distance=..15] times 0 20 0
    title @a[distance=..15] title [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].CountDown","color":"#8c01fe","bold":true}]
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CountDown int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CountDown
#> 演出
    playsound minecraft:block.conduit.deactivate hostile @a[distance=..16] ~ ~ ~ 0.5 0.15
    playsound minecraft:entity.elder_guardian.curse hostile @a[distance=..16] ~ ~ ~ 0.25 1.5
    playsound minecraft:item.shield.break hostile @a[distance=..16] ~ ~ ~ 0.25 0
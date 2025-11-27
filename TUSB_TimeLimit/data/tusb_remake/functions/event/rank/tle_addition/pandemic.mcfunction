#> tusb_remake:event/rank/tle_addition/pandemic

# 予感発生者から一定時間AECが生える
# 周囲にする人は感染しデバフを受ける

# AECをだして、AECのdurationが1以上なら該当プレイヤーにtpする、、？
# ただこれ複数体いたときにどうするよ問題がある

me 「このかぜ…まずい！」

#AECを召喚、誰かが引っかかったらRangeが伸びるかなー
# 伝播するだと無限連鎖する可能性があって怖い

summon area_effect_cloud ~ ~ ~ {Particle:"reverse_portal",ReapplicationDelay:40,Radius:7.5f,RadiusOnUse:1f,Duration:400,WaitTime:20,Effects:[{Id:7,Amplifier:2b,Duration:1},{Id:9,Amplifier:4b,Duration:200},{Id:17,Amplifier:4b,Duration:200},{Id:18,Amplifier:9b,Duration:200},{Id:19,Amplifier:4b,Duration:200},{Id:20,Amplifier:4b,Duration:200}]}
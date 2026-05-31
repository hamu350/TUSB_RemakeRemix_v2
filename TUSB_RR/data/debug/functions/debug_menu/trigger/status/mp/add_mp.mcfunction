#> debug:debug_menu/trigger/status/mp/add_mp
#
# 最大MPを増減
#
# @within function debug:debug_menu/page/status/mp

# トリガー時の共通処理
    function debug:debug_menu/trigger/

# マクロから数値を取得
    $scoreboard players set _ TUSB $(Value)
# 計算
    scoreboard players operation @s MPMax += _ TUSB
# 最大値が分かるようにMPを最大にする
    scoreboard players operation @s MP = @s MPMax

### MP回復量 = MPMax / 50 + 3
execute store result storage tusb_remake: _ int 0.02 run scoreboard players get @s MPMax
execute store result score @s MPIncrement run data get storage tusb_remake: _
scoreboard players add @s MPIncrement 3
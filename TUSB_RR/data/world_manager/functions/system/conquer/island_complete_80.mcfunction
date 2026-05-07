#> world_manager:area/conquer/island_complete
#
# 80島目攻略処理
#
# @within function world_manager:area/conquer/

# 500スキル解放
data modify storage tusb_remake: skill_liberation set value 1b

### スキルテーブルを初期化
function skill:init_table/

# 演出
title @s title {"translate": "TUSBを攻略した！","color": "gold"}
title @s subtitle {"translate": "何処かのゲートが開いたようだ...","color": "dark_purple"}

tellraw @s {"translate": "Lv100新スキルが解放された！","color": "yellow"}

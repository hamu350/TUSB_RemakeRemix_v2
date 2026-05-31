#> debug:debug_menu/trigger/status/hp/add_health
#
# 体力を増減する
# 100倍の値で計算
# AttributeModifierで減ったりするから上限下限なし
#
# @within function debug:debug_menu/page/status/hp

# トリガー時の共通処理
    function debug:debug_menu/trigger/

# マクロから数値を取得
    $data modify storage debug: Health set value $(Value)
# 現在の体力attributeを取得
    execute store result score _ TUSB run attribute @s generic.max_health modifier value get 0-0-a1-0-1 100
# 計算
    execute store result score Calc TUSB run data get storage debug: Health 100
    scoreboard players operation Calc TUSB += _ TUSB
# storageに戻す
    execute store result storage debug: Health int 0.01 run scoreboard players get Calc TUSB
# 設定
    function debug:debug_menu/trigger/status/hp/set_health

# リセット
    data remove storage debug: Health
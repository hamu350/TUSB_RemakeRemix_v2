#> debug:debug_menu/trigger/status/hp/set_health
#
# マクロで代入された値を最大体力に突っ込む
# 基礎値分増えるので注意
#
# @within function debug:debug_menu/page/status/hp

# 二重に鳴っちゃうから音を止める
    stopsound @s master minecraft:block.note_block.pling

# トリガー時の共通処理
    function debug:debug_menu/trigger/

# 今のattributeを消す
    attribute @s minecraft:generic.max_health modifier remove 0-0-a1-0-1
# マクロでattributeを追加する
    $attribute @s minecraft:generic.max_health modifier add 0-0-a1-0-1 "HPMaxModifer" $(Health) add

# 回復する
    effect give @s instant_health 1 7 true
#> tusb_remake:player/death/kyoumei
# storageに保存したアイテムを取り出す

tag @s remove KyoumeiDeath

# まず個人ストレージを呼び出します
function oh_my_dat:please
# セッションも開いておきます
function lib:array/session/open

# 共鳴メッセージを出します(うるさいとか言うな)
    data modify storage _: _.KyoumeiItems set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].KyoumeiItems
    data remove storage _: _.KyoumeiItems[].Slot
    function tusb_remake:player/death/kyoumei/messege/
    data remove storage _: _

# lib用に
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].KyoumeiItems
    data remove storage lib: Array[].Slot
# 一回目
    function lib:array/packing_chest
    data modify block 3500 0 3500 Items set from storage lib: Package
    loot give @s mine 3500 0 3500 debug_stick

# 二回目
    data remove storage lib: Package
    function lib:array/packing_chest
    data modify block 3500 0 3500 Items set from storage lib: Package
    loot give @s mine 3500 0 3500 debug_stick

# セッション閉じます
    function lib:array/session/close

# 最後にシュルカーボックスを初期化しちゃう(必要あるのかは知らない)
    data remove block 3500 0 3500 Items

data remove storage _: _
#> tusb_remake:clock/undying/first

# UUIDを設定
data modify storage tusb_remake: SelectedItem.tag.UUID set value [I;0,0,0,0]
function math:random/
data modify storage tusb_remake: SelectedItem.tag.UUID[0] set from storage math: out
function math:random/
data modify storage tusb_remake: SelectedItem.tag.UUID[1] set from storage math: out
function math:random/
data modify storage tusb_remake: SelectedItem.tag.UUID[2] set from storage math: out
function math:random/
data modify storage tusb_remake: SelectedItem.tag.UUID[3] set from storage math: out

# 登録
data modify storage tusb_remake: undying_uuid append from storage tusb_remake: SelectedItem.tag.UUID

# 渡す
data remove block 3500 0 3500 Items
data modify block 3500 0 3500 Items append from storage tusb_remake: SelectedItem
item replace entity @s weapon.mainhand from block 3500 0 3500 container.0
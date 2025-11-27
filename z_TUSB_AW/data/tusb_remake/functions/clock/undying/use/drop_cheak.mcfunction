#> tusb_remake:clock/undying/use/drop_cheak
# アイテムをドロップしていたら保護する
# 実行者はアイテム

data modify storage tusb_remake: test set from entity @p[tag=Undying] UUID
execute store success storage tusb_remake: cheak_owner byte 1 run data modify storage tusb_remake: test set from entity @s Owner
execute if data storage tusb_remake: {cheak_owner:false} run tp @s @p
execute if data storage tusb_remake: {cheak_owner:false} run data modify entity @s {} merge value {Motion:[0.0,0.0,0.0],Fire:1s,Glowing:true,NoGravity:true}
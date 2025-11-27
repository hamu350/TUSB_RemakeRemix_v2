#> time_limit:sign_stand/command/error/shrunk
# 縮んだ印板エラー
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon item ~ ~ ~ {Item:{id:"armor_stand",Count:1b,tag:{display:{Name:'{"text":"縮んだ印板","color":"gray","italic":false}',Lore:['{"text":"狭い場所で使われ縮んでしまった印板。"}','["文字が縮んで読めなくなっているが",{"text":"使えそう","color":"gray"},"だ。"]']}}},Tags:[ReturnedSignStand],Motion:[0d,0.1d,0d]}
data modify entity @e[tag=ReturnedSignStand,distance=0,limit=1] Item.tag.EntityTag.Tags set from entity @s Tags
tag @e[tag=ReturnedSignStand,distance=0] remove ReturnedSignStand

tag @s remove TL_SignStand

# 変更点 tagの名称変更
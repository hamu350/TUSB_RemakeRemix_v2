#> tusb_remake:athletic/pattern6/count_up/1
# パターン６
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute in minecraft:the_nether positioned -469 58 1198 run clone ~ ~ ~ ~19 ~ ~ ~ 66 1202 filtered minecraft:jack_o_lantern
execute in minecraft:the_nether run playsound minecraft:block.note_block.harp master @a[x=-470,y=59,z=1188,dx=21,dy=32,dz=31] -459.0 200 1207.0 0.0 0.7071 0.5

data modify storage tusb_remake: pattern6.time set value 1

execute in minecraft:overworld run schedule function tusb_remake:athletic/pattern6/count_up/2 2s

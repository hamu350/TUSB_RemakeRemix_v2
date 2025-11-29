#> tusb_remake:skill/archer/radar_vision/check2
# レーダーヴィジョン発動(305X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run time query gametime
execute as @a[tag=RadarVision] if score @s RadarVision < _ TUSB at @s run function tusb_remake:skill/archer/radar_vision/end2

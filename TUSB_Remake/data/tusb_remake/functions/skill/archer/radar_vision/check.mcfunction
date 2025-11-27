#> tusb_remake:skill/archer/radar_vision/check
# レーダーヴィジョン発動(305X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run time query gametime
execute if score @s RadarVision <= _ TUSB run function tusb_remake:skill/archer/radar_vision/end

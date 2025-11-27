#> debug:tick/get_oh_my_dat
# DebugIdからoh_my_datを取得しstorageに突っ込む

execute store result score _ DebugId run data get storage debug:get_oh_my_dat DebugId 1

execute as @a if score @s DebugId = _ DebugId run function oh_my_dat:please
data modify storage debug:get_oh_my_dat _ set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]
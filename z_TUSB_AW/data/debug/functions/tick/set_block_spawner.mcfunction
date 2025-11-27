#> debug:tick/set_block_spawner

execute store result score _ DebugId run data get storage debug:set_block_spawner _.DebugId
execute as @a if score @s DebugId = _ DebugId run function oh_my_dat:please
data remove storage debug:set_block_spawner _.DebugId
execute if data storage debug:set_block_spawner {_:{merge:true}} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].set_spawner merge from storage debug:set_block_spawner _.data
execute if data storage debug:set_block_spawner {_:{merge:false}} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].set_spawner set from storage debug:set_block_spawner _.data
data remove storage debug:set_block_spawner merge

execute if data storage debug:set_block_spawner {_:{set:true}} as @a if score @s DebugId = _ DebugId at @s run function debug:set_block_spawner/

data remove storage debug:set_block_spawner DebugId
#> tusb_remake:spawner/set/set_data
# スポナーにデータをセットします

execute if data storage _: _[0] run function oh_my_dat:please
execute if data storage _: _[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].id set from storage _: _
execute if data storage _: _[0] run scoreboard players set @s SpawnerId -1
execute unless data storage _: _[0] store result score @s SpawnerId run data get storage _: _

data modify entity @s {} set from storage asset: set_spawner

tag @s remove SetSpawner
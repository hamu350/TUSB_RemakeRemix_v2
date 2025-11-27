#> debug:set_spawner/spawn_potentials

data modify storage _: ___ set from storage _: __[0]

execute unless data storage _: ___.id run data modify storage _: ___.id set value "pig"

data modify storage _: _.SpawnPotentials append from storage _: ___
data remove storage _: __[0]

execute if data storage _: __[0] run function debug:set_spawner/spawn_potentials
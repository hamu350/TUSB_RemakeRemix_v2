#> debug:tick/

execute if data storage debug:set_spawner _.DebugId run function debug:tick/set_spawner

execute if data storage debug:set_block_spawner _.DebugId run function debug:tick/set_block_spawner

# block_particle
execute as @a[tag=Debug.BlockParticle] at @s align xyz positioned ~ ~-0.5 ~ run function debug:tick/block_particle
execute as @a[tag=Debug.BlockParticle] at @s align xyz positioned ~ ~ ~ run function debug:tick/block_particle
execute as @a[tag=Debug.BlockParticle] at @s align xyz positioned ~ ~0.5 ~ run function debug:tick/block_particle

# get_oh_my_dat
execute if data storage debug:get_oh_my_dat DebugId run function debug:tick/get_oh_my_dat
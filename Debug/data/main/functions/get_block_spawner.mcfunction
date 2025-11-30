function #oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner set from block ~ ~ ~ {}

tellraw @s [{"text":"\nDelay:"},{"nbt":"Delay","block":"~ ~ ~"},{"text":"\nMinDelay:"},{"nbt":"MinSpawnDelay","block":"~ ~ ~"},{"text":"\nMaxDelay:"},{"nbt":"MaxSpawnDelay","block":"~ ~ ~"},{"text":"\nSpawnCount"},{"nbt":"SpawnCount","block":"~ ~ ~"},{"text":"\nSpawnRange:"},{"nbt":"SpawnRange","block":"~ ~ ~"},{"text":"\nRequiredPlayerRenge:"},{"nbt":"RequiredPlayerRange","block":"~ ~ ~"}]

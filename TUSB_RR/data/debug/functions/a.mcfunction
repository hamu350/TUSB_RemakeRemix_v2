#> debug:a
#

execute as @e[type=spawner_minecart,limit=1,sort=nearest] run tellraw @p [{"text":"\nDelay:"},{"nbt":"Delay","entity":"@s"},{"text":"\nMin-Max:"},{"nbt":"MinSpawnDelay","entity":"@s"},{"text":" - "},{"nbt":"MaxSpawnDelay","entity":"@s"},{"text":"\nSpawnCount:"},{"nbt":"SpawnCount","entity":"@s"},{"text":"\nSpawnRange:"},{"nbt":"SpawnRange","entity":"@s"},{"text":"\nRequiredPlayerRenge:"},{"nbt":"RequiredPlayerRange","entity":"@s"}]

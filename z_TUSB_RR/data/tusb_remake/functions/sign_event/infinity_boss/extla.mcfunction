#> tusb_remake:sign_event/infinity_boss/extla
# exドメインに帰還
tag @s remove InfinityBossArea
tag @s remove GameMasterArea
execute if data storage tusb_remake: settings{toculting:1b} run give @s torch 64
tellraw @s {"translate":"%s はエクストラドメインに帰還した！","with":[{"selector":"@s"}]}
clear @s
playsound minecraft:entity.arrow.shoot master @a[distance=..4] ~ ~ ~ 1.0 0.5 0.0
tp -2721 19 101
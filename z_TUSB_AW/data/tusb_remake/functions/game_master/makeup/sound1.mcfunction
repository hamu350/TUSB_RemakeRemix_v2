#> time_limit:boss/newstar_king/makeup/sound
#
#> 音と暗闇付けます
#> 最初の演出
#

#> sound
stopsound @a[distance=..16] hostile minecraft:block.portal.travel
playsound minecraft:block.portal.travel hostile @a[distance=..16] ~ ~ ~ 0.35 0

effect give @a[distance=..16] darkness 10 127 true
effect give @a[distance=..16] blindness 10 127 true
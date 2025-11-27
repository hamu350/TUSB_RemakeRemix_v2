#> time_limit:boss/newstar_king/all_killed

# どっちの王もキルされちゃった；；

# 先にアマスタキルしないとまたワープされちゃう
execute in the_end run kill @e[type=armor_stand,tag=Boss_Enter]
# bossfightingtag剥奪
tag @a remove Boss_Fighting
# ワープ
execute in the_end at @e[type=item,nbt={Item:{id:"minecraft:debug_stick",tag:{Shinen:1b}}}] run execute as @a[distance=..100] run tp @s -1390 200 9 270 ~
# ぱーちくる
# かえてもいいけど
execute in the_end run particle minecraft:glow_squid_ink ~ ~1 ~ 0.5 0.5 0.5 1 200 normal @a
# playsound
execute in the_end run playsound minecraft:block.portal.trigger block @s ~ ~ ~ 1 1.5
# 死んだ時のアイテムをkill
execute in the_end run kill @e[type=item,nbt={Item:{id:"minecraft:debug_stick",tag:{Shinen:1b}}}]

# particleとかいるならあとで追加しようそうしよう

# playsoundの遅延とか
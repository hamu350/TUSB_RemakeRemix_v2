#> time_limit:boss/newstar_king/skill/rollback_trap/trap_result

# kill
kill @s
# トラップ引っかかったやつに制裁
# dmgいるかどうかは要検討、このままでも十分強いと思うんだ。
# デバフ
effect give @a[distance=..0.95] slowness 15 4
effect give @a[distance=..0.95] poison 15 4
effect give @a[distance=..0.95] hunger 15 9
effect give @a[distance=..0.95] wither 15 4
effect give @a[distance=..0.95] instant_damage 1 3
effect give @a[distance=..0.95] weakness 15 4
# バフ解除(全部ではない)
effect clear @a[distance=..0.95] absorption
effect clear @a[distance=..0.95] fire_resistance
effect clear @a[distance=..0.95] haste
effect clear @a[distance=..0.95] regeneration
effect clear @a[distance=..0.95] resistance
effect clear @a[distance=..0.95] speed
effect clear @a[distance=..0.95] strength
# MP減少
scoreboard players remove @a[distance=..0.95] MP 10
# -にならない処理
execute as @a[distance=..0.95,scores={MP=..25}] run scoreboard players set @s MP 0
#> mob_manager:gimmic/skill/newstar_king/rollback_trap/check_trap

# トラップに引っかかったかをチェックする
execute if entity @a[distance=..0.95,gamemode=!spectator] run function mob_manager:gimmic/skill/newstar_king/rollback_trap/trap_result

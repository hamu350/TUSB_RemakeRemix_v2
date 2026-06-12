#> mob_manager:boss/newstar_king/skill/rollback_trap/check_trap

# トラップに引っかかったかをチェックする
execute if entity @a[distance=..0.95,gamemode=!spectator] run function mob_manager:boss/newstar_king/skill/rollback_trap/trap_result

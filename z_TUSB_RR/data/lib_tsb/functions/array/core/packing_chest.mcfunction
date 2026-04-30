#> lib_tsb:array/core/packing_chest
#
#
#
# @within function
#   lib_tsb:array/core/packing_chest
#   lib_tsb:array/packing_chest

# 個人ストレージからの移行
    data modify storage lib: Package append from storage lib: Array[-1]
    data remove storage lib: Array[-1]
# Slotの設定
    tellraw @a {"storage": "lib:","nbt": "Array[0]"}
    execute store result storage lib: Package[-1].Slot byte 1 run scoreboard players get $Index Temporary
# ループ処理
    scoreboard players add $Index Temporary 1
    execute if score $Index Temporary < $27 Const if data storage lib: Array[0] run function lib_tsb:array/core/packing_chest
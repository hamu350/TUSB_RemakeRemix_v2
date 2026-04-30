#> lib_tsb:array/core/reverse
# @within function lib_tsb:array/**

execute store result score $Index Temporary if data storage lib: Array[]
function lib_tsb:array/core/move
data modify storage lib: Array set from storage lib: Cache
data remove storage lib: Cache
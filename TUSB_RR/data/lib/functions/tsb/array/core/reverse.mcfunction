#> lib:tsb/array/core/reverse
# @within function lib:tsb/array/**

execute store result score $Index Temporary if data storage lib: Array[]
function lib:tsb/array/core/move
data modify storage lib: Array set from storage lib: Cache
data remove storage lib: Cache
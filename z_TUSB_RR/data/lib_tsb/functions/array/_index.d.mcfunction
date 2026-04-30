#> lib_tsb:array/_index.d
# @private

#>
# @within function lib_tsb:array/**
    #declare score_holder $Index
    #declare score_holder $ListSize
    #declare score_holder $Argument.Index

#> Picks処理用
# @within function
#   lib_tsb:array/picks
#   lib_tsb:array/core/picks
    #declare score_holder $Prev
    #declare score_holder $Cur

#> Compare処理用
# @within function lib_tsb:array/**compare*
#declare score_holder $Temp

#> Sum処理用
# @within function
#   lib_tsb:array/sum
#   lib_tsb:array/core/sum
    #declare score_holder $Sum
    #declare score_holder $Temp
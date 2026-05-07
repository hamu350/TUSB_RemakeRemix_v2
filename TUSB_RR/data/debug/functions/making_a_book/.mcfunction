#> debug:making_a_book/
# storageの情報通りに本をgiveします

data modify entity @e[limit=1,distance=..5,type=item] {} merge from storage _: _

data remove storage _: _
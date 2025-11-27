#> time_limit:encount/encount
#
#> エンカウント周りの処理
#
#

## 空気じゃないところをカウント
execute store result score @s RandomEncount if blocks ~-1 ~1 ~-1 ~1 ~8 ~1 ~-1 ~1 ~-1 masked
## 全部空気だったらエンカウント処理
execute if entity @s[scores={RandomEncount=..0}] run function time_limit:tick/random_encount_mob
#> time_limit:encount/
#
#> エンカウント周りの処理
#
#

#> 周りが空気ならカウントを1減らし0なら実行
execute if entity @s if block ~ ~8 ~ minecraft:air run scoreboard players remove @s RandomEncount 1
execute if entity @s[scores={RandomEncount=..0}] run function time_limit:encount/encount
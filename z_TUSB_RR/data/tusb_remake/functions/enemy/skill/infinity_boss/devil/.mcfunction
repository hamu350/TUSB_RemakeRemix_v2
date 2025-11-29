#> tusb_remake:enemy/skill/infinity_boss/devil/
#分岐

me は§4§k?§r§4悪魔世界ノ再演§k?§rを唱えた！

# 最大体力と現在体力を取得して体力半分か判定
execute store result score _ TUSB run bossbar get infinity_boss max
execute store result score @s HP run data get entity @s AbsorptionAmount 2
execute unless score _ TUSB >= @s HP run function tusb_remake:enemy/skill/infinity_boss/devil/above_half
execute if score _ TUSB >= @s HP run function tusb_remake:enemy/skill/infinity_boss/devil/under_half

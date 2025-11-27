#> tusb_remake:skill/archer/bird_strike/hit/schedule/
# バードストライク効果判定

data modify storage tusb_remake: _ set value false
execute as @e[tag=FallDown] at @s run function tusb_remake:skill/archer/bird_strike/hit/schedule/fall

execute if data storage tusb_remake: {_:true} in minecraft:overworld run schedule function tusb_remake:skill/archer/bird_strike/hit/schedule/ 1t

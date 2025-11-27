#> asset:villager/0001.hello_work/summon/1.trigger
# ↑ここは一応やって

# このidの部分とfunctionのパスを変えます
execute if data storage asset:context {id:1} run function asset:villager/0001.hello_work/summon/2.summon
# ここ！大事！変える！！絶対変える！！
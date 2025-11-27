#> asset:villager/0016.pickel/trade_info/1.trigger
# ↑ここは一応やって

# このidの部分とfunctionのパスを変えます
execute if data storage asset:context {id:16} run function asset:villager/0016.pickel/trade_info/2.trade_info
# ここ！大事！変える！！絶対変える！！
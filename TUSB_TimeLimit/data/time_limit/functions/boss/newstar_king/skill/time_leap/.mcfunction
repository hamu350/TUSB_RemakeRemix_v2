#> time_limit:boss/newstar_king/skill/time_leap/

# タイムリープ
me はタイムリープを唱えた！
# 深淵ノ王にワープして回復
teleport @e[tag=NewStar_King] @e[tag=Abyss_King,limit=1]
# 回復値どれ位にするよ。1%回復とか?
# 1%体力回復
#scoreboard players operation Health Boss_Health += $1percent Boss_Health
# えー多分沼試合になるのでやめます
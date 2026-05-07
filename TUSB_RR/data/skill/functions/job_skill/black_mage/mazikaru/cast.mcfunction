#> skill:job_skill/black_mage/mazikaru/cast

data modify storage tusb_remake: drain_result set value false
execute as @e[distance=..10,type=#lib:mob,tag=Enemy,limit=8,sort=nearest] run function skill:job_skill/black_mage/mazikaru/apply

### ドレインできなかったらMPを返す
execute if data storage tusb_remake: {drain_result:false} run scoreboard players operation @s MP += @s MPConsumption
### ドレインできていたら回復
execute if data storage tusb_remake: {drain_result:true} run function skill:job_skill/black_mage/mazikaru/player

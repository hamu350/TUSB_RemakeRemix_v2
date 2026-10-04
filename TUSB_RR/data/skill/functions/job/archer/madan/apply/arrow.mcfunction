#> skill:job_skill/archer/madan/apply/arrow

### damage * 100 + 10000
scoreboard players add @s ProjectileSkill 100000
### チェインアローのレベルを追加
scoreboard players set _ TUSB 10
scoreboard players operation _ ActivatedSkill %= _ TUSB
scoreboard players operation @s ProjectileSkill += _ ActivatedSkill

### 
data modify entity @s Tags set value [Arrow,madan,Projectile,FlyingObject,Driftable,TypeChecked]
data modify entity @s damage set value 0d

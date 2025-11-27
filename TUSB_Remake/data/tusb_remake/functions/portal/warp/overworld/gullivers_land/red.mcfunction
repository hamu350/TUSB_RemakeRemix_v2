#> tusb_remake:portal/warp/overworld/gullivers_land/red
## ガリバーランドの解結晶の印板-赤-
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:item ~ ~0.1 ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{EntityTag:{Tags:[SignStand,RedSealBreaker,TypeChecked]},Invisible:true,Invulnerable:true,NoGravity:true,display:{Lore:['"§4ﾚｯﾄﾞｽﾄｰﾝﾌﾞﾛｯｸ§eに貼り付けて起動すると"','"§6§lAdv.ｴﾘｱ§eの§c§l色ガラス§eで覆われている"','"§e封印を解除する事ができる。"'],Name:'"§c§l解結晶の印板"'},CanPlaceOn:["minecraft:redstone_block"],Enchantments:[{}],RepairCost:1000000000}},PickupDelay:10s,Tags:[SealBreakerItem]}
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~3 ~ 10 1.5 1
particle minecraft:block minecraft:red_stained_glass ~ ~4 ~ 1 0.1 1 0.7 300 force @a[distance=..16]

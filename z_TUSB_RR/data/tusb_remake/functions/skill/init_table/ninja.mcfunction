#> tusb_remake:skill/init_table/ninja
## スキルテーブルを設定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 忍者
#ニンジャサポート
data modify storage tusb_remake: _.0 set value {name:["アイサツ"],level:[1],cost:5,description:[["周囲にアイサツする。敵が居た場合、戦闘に備え次のサポートスキルの消費MPを軽減する。"]],range:"15"}
data modify storage tusb_remake: _.1 set value {name:["疾風","疾風Ⅱ","疾風Ⅲ"],level:[8,23,38],cost:10,description:[["自身の移動速度を上昇させる。"]],duration:[60]}
data modify storage tusb_remake: _.2 set value {name:["水遁"],level:[10],cost:15,description:[["自身を潜水に強くする。"]],duration:[60],sneak:{description:[["周囲のプレイヤーを潜水に強くする。"]],range:[15]}}
data modify storage tusb_remake: _.3 set value {name:["呼魂","呼魂Ⅱ"],level:[15,35],cost:50,description:[["周囲のアイテムを引き寄せる。"]],range:"[10,20]"}
data modify storage tusb_remake: _.4 set value {name:["黙想","黙想Ⅱ"],level:[17,43],cost:25,description:[["自身の体力を徐々に回復する。移動すると効果がなくなる。"]]}
data modify storage tusb_remake: _.5 set value {name:["兵糧丸"],level:[20],cost:15,description:[["自身の満腹度・状態異常を回復する。"]]}
data modify storage tusb_remake: _.6 set value {name:["火遁"],level:[30],cost:25,description:[["自身を炎上に強くする。"]],duration:[60],sneak:{description:[["周囲のプレイヤーを炎上に強くする。"]],range:[15]}}
data modify storage tusb_remake: _.7 set value {name:["風切","風切Ⅱ"],level:[37,49],cost:20,description:[["風に乗じて浮遊する。"]],duration:[60]}
data modify storage tusb_remake: _.8 set value {name:["夜駆"],level:[40],cost:20,description:[["時間帯に応じた強化を得る。"]],duration:[60]}

#ニンジャモード
data modify storage tusb_remake: _.20 set value {name:["手裏剣","手裏剣Ⅱ","手裏剣Ⅲ","手裏剣Ⅳ"],level:[3,18,33,48],cost:2,description:[["手裏剣を投げる。"]],condition:"雪玉を投げる"}
data modify storage tusb_remake: _.21 set value {name:["連舞","連舞Ⅱ","連舞Ⅲ"],level:[5,25,45],cost:3,description:[["連続ヒット数に応じて攻撃力が上昇する。"]],condition:"敵を攻撃",duration:[2]}
data modify storage tusb_remake: _.22 set value {name:["跳躍","跳躍Ⅱ","跳躍Ⅲ"],level:[13,26,39],cost:3,description:[["スニーク時間に応じて跳躍力が上昇する。"]],condition:"スニークする",duration:[3]}
data modify storage tusb_remake: _.23 set value {name:["居縮","居縮Ⅱ"],level:[28,46],cost:10,description:[["敵単体をすくみ上がらせ、金縛り状態にする。"]],condition:"雪玉を投げる",duration:[5]}
data modify storage tusb_remake: _.24 set value {name:["サヨナラ"],level:[50],cost:0,description:[["爆発四散し、周囲に残りMPに応じたダメージを与える。","また、残りMPが100以上だった時、レイズの効果を得る。","レイズ：一定時間、（可能であれば、）","リスポーン時に死亡地点へ復帰する。"]],condition:"死亡する"}
data modify storage tusb_remake: _.25 set value {name:["§d太素診要"],level:[100],cost:200,description:[["敵を攻撃し体力を回復させる。"]],condition:"ニンジン付きの棒を持って右クリック"}
data modify storage tusb_remake: _.26 set value {name:["§6靖妖儺舞"],level:[150],cost:40,description:[["自身の体力を消耗し、自身が跳躍する度に広範囲にダメージを与える。"]],condition:"スニークする",range:[45]}

data modify storage tusb_remake: skill_table.ninja set from storage tusb_remake: _
data remove storage tusb_remake: _

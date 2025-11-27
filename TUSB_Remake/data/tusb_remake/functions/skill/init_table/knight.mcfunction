#> tusb_remake:skill/init_table/knight
## スキルテーブルを設定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 剣士
# data modify storage tusb_remake: _.0 set value {name:["ファランクス","ファランクスⅡ","ファランクスⅢ","ファランクスⅣ"],level:[1,15,30,45],cost:20,description:[["自身の防御力を僅かに上昇させる。"]],duration:[60],sneak:{description:[["範囲内のプレイヤーの防御力を僅かに上昇させる。"]],range:[10]}}
# data modify storage tusb_remake: _.1 set value {name:["アイアンウィル","アイアンウィルⅡ"],level:[5,35],cost:20,description:[["てすと"]]}
# data modify storage tusb_remake: _.2 set value {name:["ストライ","ストライⅡ","ストライⅢ"],level:[10,25,40],cost:15,description:[["てすと"]]}
# data modify storage tusb_remake: _.3 set value {name:["デコイ","デコイⅡ"],level:[18,38],cost:10,description:[["てすと"]]}
# data modify storage tusb_remake: _.4 set value {name:["タクティカルヒール"],level:[43],cost:10,description:[["てすと"]]}
#剣士サポート
data modify storage tusb_remake: _.0 set value {name:["ファランクス","ファランクスⅡ","ファランクスⅢ","ファランクスⅣ"],level:[1,15,30,45],cost:20,description:[["自身の防御力を僅かに上昇させる。"]],duration:[60],sneak:{description:[["範囲内のプレイヤーの防御力を僅かに上昇させる。"]],range:[15]}}
data modify storage tusb_remake: _.1 set value {name:["アイアンウィル","アイアンウィルⅡ"],level:[5,35],cost:20,description:[["次のノックバックを軽減する。一定確率で効果が継続する。装備：継続確率にボーナス。"]]}
data modify storage tusb_remake: _.2 set value {name:["ストライ","ストライⅡ","ストライⅢ"],level:[10,25,40],cost:15,description:[["自身の攻撃力を上昇させる。"]],sneak:{description:[["自身の攻撃力を上昇させる。"]],range:[15]}}
data modify storage tusb_remake: _.3 set value {name:["デコイ","デコイⅡ"],level:[18,38],cost:10,description:[["周囲の敵を引き寄せる。"]]}
data modify storage tusb_remake: _.4 set value {name:["タクティカルヒール"],level:[43],cost:10,description:[["次に大ダメージを受けた時、HPを大きく回復する。。"]]}

# data modify storage tusb_remake: _.20 set value {name:["流し斬り","流し斬りⅡ","流し斬りⅢ"],level:[3,20,37],cost:5,description:[["てすと"]]}
# data modify storage tusb_remake: _.21 set value {name:["薙ぎ払い","薙ぎ払いⅡ","薙ぎ払いⅢ"],level:[8,28,48],cost:10,description:[["てすと"]]}
# data modify storage tusb_remake: _.22 set value {name:["真空斬り","真空斬りⅡ","真空斬りⅢ"],level:[13,26,39],cost:5,description:[["てすと"]]}
# data modify storage tusb_remake: _.23 set value {name:["リアクティブヒール","リアクティブヒールⅡ","リアクティブヒールⅢ"],level:[17,33,49],cost:10,description:[["てすと"]]}
# data modify storage tusb_remake: _.24 set value {name:["魔人斬り","魔人斬りⅡ"],level:[23,46],cost:20,description:[["てすと"]]}
# data modify storage tusb_remake: _.25 set value {name:["斬鉄剣"],level:[50],cost:100,description:[["てすと"]]}
#剣士モード
data modify storage tusb_remake: _.20 set value {name:["流し斬り","流し斬りⅡ","流し斬りⅢ"],level:[3,20,37],cost:5,description:[["敵単体の攻撃力を低下させる。"]],condition:"剣で攻撃",duration:[20]}
data modify storage tusb_remake: _.21 set value {name:["薙ぎ払い","薙ぎ払いⅡ","薙ぎ払いⅢ"],level:[8,28,48],cost:10,description:[["周囲の敵を斬り上げる。"]],condition:"剣で攻撃",range:[5]}
data modify storage tusb_remake: _.22 set value {name:["真空斬り","真空斬りⅡ","真空斬りⅢ"],level:[13,26,39],cost:20,description:[["風の刃を発生させる。"]],condition:"剣を持って敵に向かってスニーク"}
data modify storage tusb_remake: _.23 set value {name:["リアクティブヒール","リアクティブヒールⅡ","リアクティブヒールⅢ"],level:[17,33,49],cost:10,description:[["被ダメージ時、HPが回復する。"]],condition:"被ダメージ"}
data modify storage tusb_remake: _.24 set value {name:["魔神斬り","魔神斬りⅡ"],level:[23,46],cost:20,description:[["敵単体に大ダメージ。敵の武器を破壊することがある。","発動の反動で少しの間攻撃できなくなる。"]],condition:"剣で攻撃"}
data modify storage tusb_remake: _.25 set value {name:["斬鉄剣"],level:[50],cost:100,description:[["周囲の敵に大ダメージ。"]],condition:"剣で攻撃",range:[10]}

data modify storage tusb_remake: skill_table.knight set from storage tusb_remake: _
data remove storage tusb_remake: _

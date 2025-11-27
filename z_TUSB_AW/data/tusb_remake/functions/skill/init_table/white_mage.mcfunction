#> tusb_remake:skill/init_table/white_mage
## スキルテーブルを設定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 白魔導士
#白魔導士 - サポート
data modify storage tusb_remake: _.0 set value {name:["キアリク"],level:[5],cost:10,description:[["自身の状態異常を回復する。"]],sneak:{description:[["周囲のプレイヤーの状態異常を回復する。"]],range:[15]}}
data modify storage tusb_remake: _.1 set value {name:["ハートブースト","ハートブーストⅡ","ハートブーストⅢ","ハートブーストⅣ","ハートブーストⅤ"],level:[8,18,28,38,48],cost:40,description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}
data modify storage tusb_remake: _.2 set value {name:["リジェネレーション","リジェネレーションⅡ","リジェネレーションⅢ"],level:[17,37,46],cost:60,description:[["周囲のプレイヤーの体力を徐々に回復する。"]],range:[15],duration:[90]}
data modify storage tusb_remake: _.3 set value {name:["クイック","クイックⅡ"],level:[20,35],cost:40,description:[["周囲のプレイヤーの攻撃速度を上昇させる。"]],range:[15],duration:[30]}
data modify storage tusb_remake: _.4 set value {name:["バオル"],level:[26],cost:50,description:[["周囲のプレイヤーを潜水・炎上に強くする。"]],range:[15],duration:[30]}
data modify storage tusb_remake: _.5 set value {name:["レイズ"],level:[39],cost:80,description:[["周囲の死んでいるプレイヤーにレイズの効果を与える。","また、自身にリレイズの効果を与える。","レイズ：一定時間、（可能であれば、）","リスポーン時に死亡地点へ復帰する。","リレイズ：死亡時にレイズの効果を得る。"]],range:[10],duration:[30]}
data modify storage tusb_remake: _.6 set value {name:["§aララバイ"],level:[150],cost:200,description:[["周囲の味方の移動速度を極端に低下させるが、レイズを除く白魔導士の全てのサポートスキルの効果を付与する。"]],range:[10],duration:[60]}

# data modify storage tusb_remake: _.20 set value {name:["ケアル","ケアルⅡ","ケアルⅢ","ケアルⅣ","ケアルⅤ"],level:[1,10,25,40,49],cost:1,description:[["てすと"]]}
# data modify storage tusb_remake: _.21 set value {name:["ディア","ディアⅡ","ディアⅢ","ディアⅣ","ディアⅤ"],level:[3,13,23,33,43],cost:1,description:[["てすと"]]}
# data modify storage tusb_remake: _.22 set value {name:["フラワーギフト","フラワーギフトⅡ","フラワーギフトⅢ"],level:[15,30,45],cost:1,description:[["てすと"]]}
# data modify storage tusb_remake: _.23 set value {name:["ホーリー"],level:[50],cost:100,description:[["てすと"]]}
#白魔導士モード
data modify storage tusb_remake: _.20 set value {name:["ケアル","ケアルⅡ","ケアルⅢ","ケアルⅣ","ケアルⅤ"],level:[1,10,25,40,49],cost:10,description:[["自身の体力を回復する。"]],condition:"ニンジン付きの棒を持って右クリック",sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}
data modify storage tusb_remake: _.21 set value {name:["ディア","ディアⅡ","ディアⅢ","ディアⅣ","ディアⅤ"],level:[3,13,23,33,43],cost:10,description:[["敵単体を回復する。"]],condition:"雪玉を投げる"}
data modify storage tusb_remake: _.22 set value {name:["フラワーギフト","フラワーギフトⅡ","フラワーギフトⅢ"],level:[15,30,45],cost:20,description:[["周囲の敵の戦意を低下させる魔法を放つ。"]],condition:"雪玉を投げる",range:[5]}
data modify storage tusb_remake: _.23 set value {name:["ホーリー"],level:[50],cost:100,description:[["聖なる力を放ち、周囲の敵にダメージ。","アンデッドには効果が高い。"]],condition:"雪玉を投げる",range:[8]}
data modify storage tusb_remake: _.24 set value {name:["§b天気雨"],level:[51],cost:20,description:[["雨の降る場所の周囲にいる味方の体力を持続的に回復する。"]],condition:"ニンジン付きの棒を持って右クリック",range:[12]}
data modify storage tusb_remake: _.25 set value {name:["§dホーリーシャワー"],level:[100],cost:150,description:[["自身の周囲に聖なる力の雨を降らす。"]],condition:"ニンジン付きの棒を持って右クリック",range:[60]}
data modify storage tusb_remake: _.26 set value {name:["§dセイクリットオーラ"],level:[100],cost:100,description:[["範囲内の敵5体にダメージを与え、味方にバフを付与する"]],condition:"ニンジン付きの棒を持って右クリック",range:[15]}
data modify storage tusb_remake: _.27 set value {name:["§6聖・ソウルイグニッション"],level:[150],cost:500,description:[["聖なる力を放ち、周囲の敵にダメージを与え、周囲の味方を強化する。"]],condition:"雪玉を投げる",range:[10]}

data modify storage tusb_remake: skill_table.white_mage set from storage tusb_remake: _
data remove storage tusb_remake: _

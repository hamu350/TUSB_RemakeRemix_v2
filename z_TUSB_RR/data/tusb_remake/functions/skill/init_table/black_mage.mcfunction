#> tusb_remake:skill/init_table/black_mage
## スキルテーブルを設定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 黒魔導士
#黒魔導士サポート
data modify storage tusb_remake: _.0 set value {name:["スノウ"],level:[3],cost:20,description:[["敵を阻む氷の壁を築く。"]]}
data modify storage tusb_remake: _.1 set value {name:["キャンドル"],level:[8],cost:30,description:[["数秒後に目の前に灯りを設置する。"]]}
data modify storage tusb_remake: _.2 set value {name:["ウェザー"],level:[13],cost:60,description:[["天候を変える。"]]}
data modify storage tusb_remake: _.3 set value {name:["グロウ"],level:[18],cost:60,description:[["周囲の作物を成長させる。"]],range:[2]}
data modify storage tusb_remake: _.4 set value {name:["マナリフレッシュ","マナリフレッシュⅡ"],level:[23,43],cost:40,description:[["自身のMP自然回復量を倍増する。"]],duration:[30],sneak:{description:[["周囲のプレイヤーのMP自然回復量を倍増する。"]],range:[15]}}
data modify storage tusb_remake: _.5 set value {name:["エンアスピル","エンアスピルⅡ"],level:[26,39],cost:5,description:[["次に敵を近接攻撃した時、MPを回復する。"]]}
data modify storage tusb_remake: _.6 set value {name:["マジックシールド"],level:[28],cost:50,description:[["次に受けるダメージを無効化する。"]]}
data modify storage tusb_remake: _.7 set value {name:["ルーラ"],level:[33],cost:90,description:[["周囲のプレイヤーを交易島までワープする。","頭上が遮られていると失敗する。"]],range:"10"}
data modify storage tusb_remake: _.8 set value {name:["ウィンドウォール"],level:[38],cost:40,description:[["自身に一定時間風が纏い、周囲の飛翔物を妨げる。"]],duration:[20],sneak:{description:[["周囲のプレイヤーに一定時間風が纏い、周囲の飛翔物を妨げる。"]],range:[15]}}
data modify storage tusb_remake: _.9 set value {name:["ラナルータ"],level:[40],cost:80,description:[["昼夜を逆転する。"]]}
data modify storage tusb_remake: _.10 set value {name:["§aマジカルエンゲージ"],level:[75],cost:90,description:[["自身にマジックシールド、マナリフ、エナジーセーブの効果を付与する"]]}

# data modify storage tusb_remake: _.20 set value {name:["アイスストーム","アイスストームⅡ","アイスストームⅢ"],level:[1,20,45],cost:5,description:[["てすと"]]}
# data modify storage tusb_remake: _.21 set value {name:["クロスファイアー","クロスファイアーⅡ","クロスファイアーⅢ"],level:[5,25,46],cost:10,description:[["てすと"]]}
# data modify storage tusb_remake: _.22 set value {name:["サンダーボルト","サンダーボルトⅡ","サンダーボルトⅢ"],level:[10,30,48],cost:5,description:[["てすと"]]}
# data modify storage tusb_remake: _.23 set value {name:["ジオクラッシュ","ジオクラッシュⅡ","ジオクラッシュⅢ"],level:[15,35,49],cost:10,description:[["てすと"]]}
# data modify storage tusb_remake: _.24 set value {name:["ドレイン","ドレインⅡ"],level:[17,37],cost:20,description:[["てすと"]]}
# data modify storage tusb_remake: _.25 set value {name:["パルプンテ"],level:[50],cost:100,description:[["てすと"]]}
#黒魔導士モード
data modify storage tusb_remake: _.20 set value {name:["アイスストーム","アイスストームⅡ","アイスストームⅢ"],level:[1,20,45],cost:5,description:[["凍てつく球状の冷気を放つ。"]],condition:"雪玉を投げる",range:[5]}
data modify storage tusb_remake: _.21 set value {name:["クロスファイアー","クロスファイアーⅡ","クロスファイアーⅢ"],level:[5,25,46],cost:10,description:[["燃え盛る十字状の火炎を放つ。"]],condition:"雪玉を投げる",range:[7]}
data modify storage tusb_remake: _.22 set value {name:["サンダーボルト","サンダーボルトⅡ","サンダーボルトⅢ"],level:[10,30,48],cost:20,description:[["付近の敵単体に雷を落とす。"]],condition:"ニンジン付きの棒を持って右クリック",range:[5]}
data modify storage tusb_remake: _.23 set value {name:["ジオクラッシュ","ジオクラッシュⅡ","ジオクラッシュⅢ"],level:[15,35,49],cost:20,description:[["周囲に地響きを起こす。"]],condition:"ニンジン付きの棒を持って右クリック",range:[10]}
data modify storage tusb_remake: _.24 set value {name:["ドレイン","ドレインⅡ"],level:[17,37],cost:25,description:[["付近のアンデッドでない敵単体から体力を吸収する。"]],condition:"ニンジン付きの棒を持って右クリック",range:[10]}
data modify storage tusb_remake: _.25 set value {name:["パルプンテ"],level:[50],cost:100,description:[["何が起こるか分からない。"]],condition:"ニンジン付きの棒を持って右クリック",range:[15]}
data modify storage tusb_remake: _.26 set value {name:["§bマジカルドレイン"],level:[75],cost:80,description:[["付近の敵から体力と魔力を吸い取る。"]],condition:"ニンジン付きの棒を持って右クリック"}
data modify storage tusb_remake: _.27 set value {name:["§dライトニングシャワー"],level:[100],cost:300,description:[["周囲の敵に一定時間雷を落とす。雷の近くにいる味方のデバフを解除し体力と魔力を回復する。"]],duration:[20],condition:"ニンジン付きの棒を持って右クリック",range:[10]}
data modify storage tusb_remake: _.28 set value {name:["§6シャドウボルト"],level:[150],cost:500,description:[["周囲の敵を一点に集め、超特大ダメージを与える雷を落とす"]],condition:"ニンジン付きの棒を持って右クリック",range:[15]}

data modify storage tusb_remake: skill_table.black_mage set from storage tusb_remake: _
data remove storage tusb_remake: _

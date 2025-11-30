スポナーの設置の仕方
ブロックスポナーを出したかったらset_spawner/readme.txtを見てね

debug:set_spawnerというstorageに要素を代用してどうこうします

自分にDebugIdというscoreを設定しておいてください。他の人と被らないように

テンプレ：/data modify storage debug:set_spawner _ set value {DebugId:,merge:false,set:true,data:{SpawnMob:[{AssetId:,weight:1}],Delay:{Delay:1,Min:100,Max:700},Count:1,Range:4,ReqRange:16,Display:""}}

/data modify storage debug:set_spawner _ set value {DebugId:3,merge:false,set:true,data:{SpawnMob:[{AssetId:238,weight:1}],Delay:{Delay:-1,Min:1000,Max:2000},Count:1,Range:4,ReqRange:8,Display:""}}

よくある間違い：AssetId:0800のようにしてしまう。正しくはAssetId:800。0800の場合数値と認識されない

各要素についての説明
DebugId:誰を起点としてスポナーを設置するか
merge:既にあるデータに統合するか上書きするか(trueで統合)。湧くmobだけを変えたい場合などに
set:スポナーを設置するか
data:スポナーのデータ
    SpawnMob:湧くmobをAssetMobのidで指定する。weightも設定してね。1番目が最初に湧くmobになるよ
        AssetIdはTUSB_AW\data\asset\functions\mob\id.txt ここに全て纏めてある
    Delay:最初に湧くまで、次湧くまでの最小、最大時間(tick)
    Count:mobが湧く数
    Range:mobが湧く範囲
    ReqRange:プレイヤーが何m以内に入るとスポナーが動くか
    Display:"boss"と設定すると見た目がレッドストーントーチになる
    Once:trueの場合一回湧きになる
    Aura:trueの場合新世代のスポナーオーラを纏う(10m以内に採掘速度低下Ⅱ(×0.09))

スポナーのCopy方法
/function debug:copy_spawner/
このコマンドを打ってスポナーをコピーできます(ブロック、トロッコ両方)
/function debug:set_spawner/
このコマンドを打ってコピーしたスポナーを設置します

スポナーの消去方法
/function debug:delete_spawner/
このコマンドを打つとボタンが出てくるのでそれを押すと5m以内の最寄りのスポナーを消去します(現状advは未対応)

DebugId:
1:mocope
2:take
3:soba
4:mamorukun
350:hamu
; サンプルキャラクター『カンフーマン』のコマンドファイルです。
; コマンドに関する設定は４部構成になっています。
;==============================================================================
; Win版専用パート
;==============================================================================
;------------------------------------------------------------------------------
; ここはWin版から（正確にはLinux版から）追加された要素の二つ。
; コマンド関連の初期設定を任意に指定出来るようになった(`・ω・´)
;
;『ボタンリマップ』はボタン配置変更用の項目。
; 定義パートでいちいち変更しなくても良いようになっちゃった。
; 面倒臭い人用かな！（ﾏﾃｺﾗ
;
;『デフォルト設定』では各[Command]で省略した場合の
; 入力受付時間と入力記憶時間を予め決めておく項目。
;
;
; この２項目は省略可能。
;------------------------------------------------------------------------------
;-| ボタンリマップ（ボタンコンフィグ）|---------------------------------------- 第１部
[remap]
x=x;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y=y;Ｙボタン　　　　　　　　　〃
z=z;Ｚボタン　　　　　　　　　〃
a=a;Ａボタン　　　　　　　　　〃
b=b;Ｂボタン　　　　　　　　　〃
c=c;Ｃボタン　　　　　　　　　〃
s=s;スタートボタン　　　　　　〃
;------------------------------------------------------------------------------
; 例えば「本来Ｘボタンで出す弱パンチをＢボタンに変えたい場合」なら、
;
; x = b
;
; で簡単に出来る。使わないボタンを使っているボタンに割り当てる事も可能。
;------------------------------------------------------------------------------
;-| デフォルト設定 |----------------------------------------------------------- 第２部
[defaults]
command.time=15;標準のコマンド入力受付時間。
;各コマンドで省略している場合に有効。
;このパラメータを消した場合、デフォルトは１フレームになる。
;（　M.U.G.E.Nでの１フレーム　＝　１／６０秒　）
command.buffer.time=1;標準のコマンド入力記憶時間。
;入力した直後にコマンドを記憶し、
;指を離してもコマンドが成功している状態を
;ここで設定した時間の分維持する。
;１～３０フレームまでの間で設定可能。
;デフォルトは１フレーム。
;============================================================================== 第３部
; コマンド定義パート（入力キーを設定する）
;==============================================================================
;------------------------------------------------------------------------------
; ここがキーとボタンの組み合わせで格闘ゲームにおける
;『入力コマンド』を直接設定・編集するパート。
;
; 一つずつコマンドに名前を付けて入力キーを組み合わせる単純な作業になるけど、
; 組み合わせが独特だから覚えるのは難易度が少し高い。
;
; 下記で「書式の決まり」と「組み合わせに必要なアルファベットと記号」を
; 全て説明しましょう。
;------------------------------------------------------------------------------
;■書式の決まり■
;
; [Command]         ：入力コマンドを１個定義する。
; name = "***"      ：コマンド名を決める。大文字と小文字も区別される。
; command = ###     ：実際に入力するキーを組み合わせる。詳細は後述。
; time = &&&        ：入力受付時間を設定（オプション）。
; buffer.time = @@@ ：入力記憶時間を設定（オプション）。
;
; 小ネタでも説明している通り、登録が可能な数は最大『１２８個』まで。
;
;
;※『必須コマンド名』と書いてるコマンドは、システム側で処理してます。
;　コマンド名を変えたり、消してはいけません。キーの変更は出来ます。
;------------------------------------------------------------------------------
;■必要なアルファベットと記号■
;
; 上記の「command = ###」の『###』に該当する部分で、
; 組み合わせるキーとボタンを設定しなければならない。
;
; ※設定したキーやボタンはM.U.G.E.Nのオプションモードにある
;  「キーコンフィグ」にて設定したキーなどに対応しています。
;
; ★方向キー★（全て必ず大文字で）
;
; 　B 　：「後方」にキーを入れる（ Backward ）
; 　D 　：「下方」にキーを入れる（ Downward ）
; 　F 　：「前方」にキーを入れる（ Forward ）
; 　U 　：「上方」にキーを入れる（ Upward ）
;
; 　DB　：「後ろ斜め下」にキーを入れる（「D」と「B」が同時に入力された事を認識）
; 　UB　：「後ろ斜め上」にキーを入れる（「U」と「B」が同時に入力された事を認識）
; 　DF　：「前斜め下」にキーを入れる（「D」と「F」が同時に入力された事を認識）
; 　UF　：「前斜め上」にキーを入れる（「U」と「F」が同時に入力された事を認識）
;
; ★ボタン★（全て必ず小文字で）
;
; 　a 　：「Ａボタン」を押す
; 　b 　：「Ｂボタン」を押す
; 　c 　：「Ｃボタン」を押す
; 　x 　：「Ｘボタン」を押す
; 　y 　：「Ｙボタン」を押す
; 　z 　：「Ｚボタン」を押す
; 　s 　：「スタートボタン」を押す
;
; ★記号★（入力効果を変化させる命令）
;
; 　/ 　：（スラッシュ）キーやボタンを「押しっぱなし」にしている事を認識する場合に追加する
;
; 　　（例）：　/b       = Ｂボタンを押したままにする
; 　　　　　　　/F       = 前キーを押したままにする
; 　　　　　　　/U,z     = 上キーを押したままＺボタンを入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　~ 　：（チルダ）キーやボタンが「離された時」を認識する場合に追加する
;
; 　　（例）：　~x       = Ｘボタンを離す
; 　　　　　　　~DF      =「前斜め下」のキーを離す
; 　　　　　　　~DB,F,c  =「後ろ斜め下」を離した後に前キー・Ｃボタンの順番に入力する
;
; 　　　　　　※「ボタンを離すまでの時間（溜め時間）」も設定する事が出来る
;
; 　　　　　　　~30x     = Ｘボタンを押したままにして、３０フレーム以上経ったら離す
; 　　　　　　　~50B,F,a = 後ろキーを５０フレームまで溜めて前キー・Ａボタンの順番に入力する
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　$ 　：（ドル）方向キーの「複数の内どれかが入力されている事」を認識する場合に追加する
;
; 　　（例）：　$B       =「後方」「後ろ斜め下」「後ろ斜め上」のどれかが入力されている状態
; 　　　　　　　$UF      =「前」「上」「前斜め上」のどれかが入力されている状態
;
; 　　　　　　※この記号は「方向キー」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　+ 　：（プラス）ボタンを「同時押し」している事を認識する場合に追加する
;
; 　　（例）：　x+y      = ＸボタンとＹボタンを同時押しする
; 　　　　　　　a+b+c    = ＡボタンとＢボタンとＣボタンを同時押しする
;
; 　　　　　　※この記号は「ボタン」でしか使えません。
;
;　　━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
; 　> 　：（グレーターザン）大なり（Win版で追加された記号）
; 　　　　　　　　　　　　「他のキーが入力されていない事を確認して、そのキーを押す」場合
;
; 　　（例）：　a,>~a    = Ａボタン以外が入力されていない状態でＡボタンを離す
; 　　　　　　　F,>~F,>F = 前キー以外が入力されていない状態で前キーを離し、
;　　　　　　　　　　　　　もう一度前キーを入力する
;
;-------------------------------------------------------------------------------
; ●これらの記号は全て組み合わせて使う事が出来る●
;
; 　　（例）：　~80$DB,DF,F,/a+y+c
; 　　　　　　　
; 　　　　　　「後方」「下」「後ろ斜め下」のどれかを８０フレームまで溜めて
; 　　　　　　「前斜め下」→「前」を入力した後、ＡとＹとＣを同時押ししたままにする
;
;------------------------------------------------------------------------------
;---------------------------------------------[方向キー操作]
[command]
name="半回前"
command=~B,$D,F
time=8
buffer.time=15
[command]
name="半回後"
command=~F,$D,B
time=8
buffer.time=15
[command]
name="波動"
command=~D,DF,F
time=8
buffer.time=15
[command]
name="逆波動"
command=~D,DB,B
time=8
buffer.time=15
[command]
name="昇竜"
command=~F,D,DF
time=8
buffer.time=15
;---------------------------------------------[2回入力操作]
[command]
name="FF";必須コマンド名
command=F,F
time=15
[command]
name="BB";必須コマンド名
command=B,B
time=15
;---------------------------------------------[同時押し操作]
[command]
name="recovery";必須コマンド名
command=x+y
time=5
[command]
name="recovery"
command=/x,y
time=5
[command]
name="recovery"
command=/y,x
time=5
[command]
name="a+b"
command=a+b
time=5
[command]
name="a+b"
command=/a,b
time=5
[command]
name="a+b"
command=/b,a
time=5
[command]
name="弱"
command=a+x
time=5
[command]
name="弱"
command=/a,x
time=5
[command]
name="弱"
command=/x,a
time=5
[command]
name="強"
command=y+b
time=5
[command]
name="強"
command=/y,b
time=5
[command]
name="強"
command=/b,y
time=5
[command]
name="根性C"
command=c+z
time=5
buffer.time=15
[command]
name="根性C"
command=/c,z
time=5
buffer.time=15
[command]
name="根性C"
command=/z,c
time=5
buffer.time=15
[command]
name="斜め前"
command=U+F
time=3
[command]
name="斜め後ろ"
command=U+B
time=3
;---------------------------------------------[ボタン単発]
[command]
name="a"
command=a
time=1
buffer.time=3
[command]
name="b"
command=b
time=1
buffer.time=5
[command]
name="c"
command=c
time=1
buffer.time=5
[command]
name="x"
command=x
time=1
buffer.time=3
[command]
name="y"
command=y
time=1
buffer.time=5
[command]
name="z"
command=z
time=1
[command]
name="start"
command=s
time=1
[command]
name="U"
command=U
time=1
[command]
name="F"
command=F
buffer.time=3
[command]
name="B"
command=B
buffer.time=3
[command]
name="D";必須コマンド名
command=/D
;---------------------------------------------[単ボタン保持]
[command]
name="hold_a"
command=/a
[command]
name="hold_b"
command=/b
[command]
name="hold_c"
command=/c
[command]
name="hold_x"
command=/x
[command]
name="hold_y"
command=/y
[command]
name="hold_z"
command=/z
;---------------------------------------------[方向キー]
[command]
name="holdfwd";必須コマンド名
command=/$F
time=1
[command]
name="holdback";必須コマンド名
command=/$B
time=1
[command]
name="holdup";必須コマンド名
command=/$U
time=1
[command]
name="holddown";必須コマンド名
command=/$D
time=1
;AI判定用[Command]
[command]
name="F"
command=F
buffer.time=3
[command]
name="B"
command=B
buffer.time=3
[command]
name="U"
command=U
time=1
[command]
name="D"
command=/D
;人操作フラグ用[Command]：ラベルは同一で問題ない。
[command]
name="AI"
command=a
time=1
buffer.time=3
[command]
name="AI"
command=b
time=1
buffer.time=5
[command]
name="AI"
command=c
time=1
buffer.time=5
[command]
name="AI"
command=x
time=1
buffer.time=3
[command]
name="AI"
command=y
time=1
buffer.time=5
[command]
name="AI"
command=z
time=1
[command]
name="AI"
command=s
time=1
[command]
name="AI"
command=F
buffer.time=3
[command]
name="AI"
command=B
buffer.time=3
[command]
name="AI"
command=U
time=1
[command]
name="AI"
command=/D
;AI判定用[Command]：ラベルは同一で問題ない。
[command]
name="/command"
command=/a
time=1
[command]
name="/command"
command=/b
time=1
[command]
name="/command"
command=/c
time=1
[command]
name="/command"
command=/x
time=1
[command]
name="/command"
command=/y
time=1
[command]
name="/command"
command=/z
time=1
[command]
name="/command"
command=/s
time=1
[command]
name="/command"
command=/$F
time=1
[command]
name="/command"
command=/$B
time=1
[command]
name="/command"
command=/$U
time=1
[command]
name="/command"
command=/$D
time=1
[command]
name="a2"
command=a
time=1
buffer.time=3
[command]
name="b2"
command=b
time=1
buffer.time=5
[command]
name="c2"
command=c
time=1
buffer.time=5
[command]
name="x2"
command=x
time=1
buffer.time=3
[command]
name="y2"
command=y
time=1
buffer.time=5
[command]
name="z2"
command=z
time=1
[command]
name="start2"
command=s
time=1
[command]
name="holdfwd2"
command=/$F
time=1
[command]
name="holdback2"
command=/$B
time=1
[command]
name="holdup2"
command=/$U
time=1
[command]
name="holddown2"
command=/$D
time=1
;AI用コマンド
[command]
name="AI0"
command=a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time=0
[command]
name="AI1"
command=b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time=0
[command]
name="AI2"
command=c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time=0
[command]
name="AI3"
command=x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time=0
[command]
name="AI4"
command=y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time=0
[command]
name="AI5"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI6"
command=s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time=0
[command]
name="AI7"
command=F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time=0
[command]
name="AI8"
command=D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time=0
[command]
name="AI9"
command=B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time=0
[command]
name="AI10"
command=U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time=0
[command]
name="AI11"
command=a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time=0
[command]
name="AI12"
command=c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time=0
[command]
name="AI13"
command=x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time=0
[command]
name="AI14"
command=y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time=0
[command]
name="AI15"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI16"
command=s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time=0
[command]
name="AI17"
command=a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time=0
[command]
name="AI18"
command=a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time=0
[command]
name="AI19"
command=b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time=0
[command]
name="AI20"
command=c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time=0
[command]
name="AI21"
command=x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time=0
[command]
name="AI22"
command=y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time=0
[command]
name="AI23"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI24"
command=s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time=0
[command]
name="AI25"
command=F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time=0
[command]
name="AI26"
command=D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time=0
[command]
name="AI27"
command=B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time=0
[command]
name="AI28"
command=U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time=0
[command]
name="AI29"
command=a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time=0
[command]
name="AI30"
command=c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time=0
[command]
name="AI31"
command=x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time=0
[command]
name="AI32"
command=y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time=0
[command]
name="AI33"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI34"
command=s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time=0
[command]
name="AI35"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI36"
command=z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI37"
command=z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time=0
[command]
name="AI38"
command=z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time=0
[command]
name="AI39"
command=z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time=0
[command]
name="AI40"
command=z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time=0
[command]
name="AI41"
command=z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time=0
[command]
name="AI42"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI43"
command=z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time=0
[command]
name="AI44"
command=z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time=0
[command]
name="AI45"
command=z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time=0
[command]
name="AI46"
command=z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time=0
[command]
name="AI47"
command=z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time=0
[command]
name="AI48"
command=z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time=0
[command]
name="AI49"
command=z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time=0
[command]
name="AI50"
command=z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time=0
;============================================================================== 第４部
; ステートエントリーパート（技などを出せるようにするための条件を設定）
;==============================================================================
;------------------------------------------------------------------------------
; コマンド名と入力するコマンドを設定しただけじゃ意味が無いので、ここから
;「実際に入力したコマンドでどの番号のステートをどういう条件で出せるか」
; を決めなければならない。
;
; ステートコントローラ「ChangeState」しか使わないけど、
; そんなに難しくないのでトリガーを覚えてたらすぐ出来る。
;
; ここさえ押さえておけば簡単なトリガー設定の流れは覚えられるかと。
;
; エントリーの順番にはある程度の法則があるけど、
; おまけフォルダの「小ネタ.txt」を参照。（波動拳が暴発ﾅﾝﾀﾗｶﾝﾀﾗ）
;
; ChangeStateなどステートコントローラの基本的な設置例は
; おまけフォルダの「テンプレート.txt」を参照。
;------------------------------------------------------------------------------
; ■準常時監視ステート（－１）■
; コマンドファイル（のステートエントリーパート）に必要な項目です。
; 絶対に消してはいけないので要注意。
;
; 通常の食らい状態以外の「P2StateNo」や「TargetState」等で制御された、
; 作成者が任意に指定した相手側の食らいステートに限り、
; 登録したステートコントローラが有効にはなりません。
;------------------------------------------------------------------------------
[statedef -1];←この行は絶対に消さないでね。必須項目です。
;==============================================================================
; 超必殺技
;==============================================================================
;------------------------------------------------------------------------------
;
; まず特定のコマンドを入力したいならば、
; 必ず『呼び出すコマンドのトリガー』は設定しましょう。
; 特殊な条件でない限り、コマンドは通常「triggerall」の方で設定した方が良い。
;
;「triggerall」とは『有効になる状況を限定するための条件』を指定する。
; triggerallの条件が有効にならない限り、trigger1以降の条件も有効にはならない。
; 何個でも増やせる。ステート作成の基本テクニックの一つなので覚えておいてね。
; しかしtriggerallはtrigger1以降が無いと「単体では」使えないので注意。
;（trigger1以降を全てコメント化してM.U.G.E.Nでそのキャラを選んで試してみよう）
;
;
; ※『パワーゲージ』は「スーパーコンボゲージ」や「超必殺技ゲージ」などで
; 　呼ばれてる部分のゲージです。
; 　ゲージが「１０００ポイント」なら『レベル１』と同じ意味になります。
;
; 　まぁパッと見、M.U.G.E.Nのパワーゲージって仕組みが
; 　ストＺＥＲＯシリーズの「スーパーコンボレベルゲージ」まんまだよね（苦笑
;-----------------------------------------------[AI記述テスト用操作エリア]
[state ];helper(12345)
type=selfstate
triggerall=numhelper(12345)
triggerall=ishelper(12345)
trigger1=1
value=10000
ignorehitpause=1
;------------------------------------------------------------------------------
[state -1,超ラッシュ　根性フルカウント3ゲージ技]
type=changestate
value=3600
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回後")
triggerall=(command="強")
triggerall=power>=3000;ゲージレベル3
triggerall=(var(40)>=10)&&(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超ッ・・・すごいパァァンチ!　通常3ゲージ技]
type=changestate
value=3500
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回後")
triggerall=(command="弱")
triggerall=power>=3000;ゲージレベル3
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超・電光石火　2ゲージ技]
type=changestate
value=3300
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回後")
triggerall=(command="a+b")
triggerall=power>=2000;ゲージレベル2
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,んんぅぉおおおお!　2ゲージ技]
type=changestate
value=3100
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回前")
triggerall=(command="recovery")
triggerall=power>=2000;ゲージレベル2
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,たいらんれいぶ！　2ゲージ技]
type=changestate
value=4000;3000
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="波動")
triggerall=(command="recovery")
triggerall=power>=2000;ゲージレベル2
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超・ライダーキック強弱兼用]
type=changestate
value=2800
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=command="波動"
triggerall=(command="a")||(command="b")
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=(stateno=1600)
trigger7=(movecontact>=1)||(animelemtime(10)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger8=(stateno=1620)
trigger8=(animelemtime(13)>=0)||(numprojid(1620)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超すごいげんこつ強弱兼用]
type=changestate
value=2900
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=command="波動"
triggerall=(command="x")||(command="y")
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=(stateno=1600)
trigger7=(movecontact>=1)||(animelemtime(10)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger8=(stateno=1620)
trigger8=(animelemtime(13)>=0)||(numprojid(1620)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超すごいパンチ(物理)ゲージ版]
type=changestate
value=2000
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=command="波動"
triggerall=command="x"
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超すごいパンチ(特殊)ゲージ版]
type=changestate
value=2050
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=command="波動"
triggerall=command="y"
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超マッハ投げ(地上)ゲージ版]
type=changestate
value=2100
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=command="逆波動"
triggerall=command="x"
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超マッハ投げ(対空)ゲージ版]
type=changestate
value=2150
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=command="逆波動"
triggerall=command="y"
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超すごいキック]
type=changestate
value=2400
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=command="波動"
triggerall=command="b"
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超すごい蹴り上げ]
type=changestate
value=2300
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=command="波動"
triggerall=command="a"
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,ぶちかまし強]
type=changestate
value=2450
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回前")
triggerall=(command="強")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
;------------------------------------------------------------------------------
[state -1,ぶちかまし弱]
type=changestate
value=1850
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回前")
triggerall=(command="弱")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
;------------------------------------------------------------------------------
[state -1,瞬極的な]
type=changestate
value=2500
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=command="逆波動"
triggerall=command="b"
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,マッハ壁バン]
type=changestate
value=2600
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=command="逆波動"
triggerall=command="a"
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,噴火];キャンセル条件修正する
type=changestate
value=2700
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回前")
triggerall=(command="y")
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,根性MAX　3ゲージ技]
type=changestate
value=3400
triggerall=var(59)=0;★AIスイッチ
triggerall=command="hold_c"
triggerall=(command="強")
triggerall=var(40)<10;▲根性カウント10未満
triggerall=power>=3000;ゲージレベル2
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
;------------------------------------------------------------------------------
[state -1,根性LV5　2ゲージ技]
type=changestate
value=3200
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="強")
triggerall=var(40)<10;▲根性カウント10未満
triggerall=power>=2000;ゲージレベル2
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
;------------------------------------------------------------------------------
[state -1,根性注入]
type=changestate
value=2250
triggerall=var(59)=0;★AIスイッチ
triggerall=command="弱"
triggerall=(fvar(0)<fvar(3))
triggerall=power>=1000;ゲージレベル1
triggerall=var(40)>0;▲根性カウント消費
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger9=(stateno=1000)||(stateno=2000)
trigger9=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger10=(stateno=1100)||(stateno=2050)
trigger10=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,根性キャンセル]
type=changestate
value=2200
triggerall=var(59)=0;★AIスイッチ
triggerall=command="根性C"
triggerall=var(40)>0;▲根性カウント消費
triggerall=stateno!=2200
triggerall=stateno!=900
;--------------------------------------[投げバグ防止]
triggerall=stateno!=[3310,3330]
triggerall=stateno!=[2610,2620]
triggerall=stateno!=[1515,1520]
triggerall=stateno!=1535
triggerall=stateno!=810
triggerall=stateno!=305
;--------------------------------------
trigger1=ctrl=0
trigger1=(movetype!=h)&&(statetype!=l)&&(pos y>=0)
trigger1=roundstate=2
trigger1=!(stateno=0&&ctrl=0)
;==============================================================================
; 必殺技
;==============================================================================
[state -1,空中すごパ(弱)];ランク5
type=changestate
value=1600
triggerall=var(59)=0;★AIスイッチ
triggerall=command="波動"
triggerall=command="x"
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,空中すごパ(強)];ランク5
type=changestate
value=1620
triggerall=var(59)=0;★AIスイッチ
triggerall=command="波動"
triggerall=command="y"
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,降雷];ランク5
type=changestate
value=1780
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="holddown")
triggerall=(command="recovery")
triggerall=(fvar(0)>0)
triggerall=(numprojid(1643)=0)&&(numprojid(1773)=0)
triggerall=statetype=a
trigger1=vel y>=-3
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,空中電光石火・直];ランク5
type=changestate
value=1755
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回後")
triggerall=(command="a")
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,空中電光石火・斜];ランク5
type=changestate
value=1765
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回後")
triggerall=(command="b")
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,すごいキック(攻)];ランク5
type=changestate
value=1220
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="昇竜")
triggerall=(command="a")
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,すごいキック(奇)空中用];ランク5
type=changestate
value=1231
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="昇竜")
triggerall=(command="b")
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,空中投げ];ランク4
type=changestate
value=1650
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="逆波動")
triggerall=(command="y")
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)

;------------------------------------------------------------------------------
[state -1,ライダーキック];ランク5
type=changestate
value=1700
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="holddown")
triggerall=(command="a+b")
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,近距離空中マッハ正面];ランク4
type=changestate
value=1355
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="波動")
triggerall=(command="a")
triggerall=(fvar(0)>0)
triggerall=p2dist x<100
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger4=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger5=(stateno=1400)&&(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,すごパ連打(物理)];ランク5
type=changestate
value=1030
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回後")
triggerall=(command="x")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,すごパ連打(特殊)];ランク5
type=changestate
value=1130
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回後")
triggerall=(command="y")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,電光石火・直];ランク5
type=changestate
value=1750
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回後")
triggerall=(command="a")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,電光石火・斜];ランク5
type=changestate
value=1760
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回後")
triggerall=(command="b")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,あさるとばいぱー];ランク5
type=changestate
value=1470
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回前")
triggerall=(command="b")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,ぐらんどばいぱー];ランク5
type=changestate
value=1450
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回前")
triggerall=(command="a")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,昇雷];ランク5
type=changestate
value=1770
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="holddown")
triggerall=(command="recovery")
triggerall=(fvar(0)>0)
triggerall=(numprojid(1643)=0)&&(numprojid(1773)=0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,ちょっとすごい対空パンチ];ランク5
type=changestate
value=1670
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="昇竜")
triggerall=(command="x")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,すごい対空パンチ];ランク5
type=changestate
value=1680
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="昇竜")
triggerall=(command="y")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,旋風];ランク5
type=changestate
value=1800
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回前")
triggerall=(command="x")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,すごパ(特殊)];ランク5
type=changestate
value=1100
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="波動")
triggerall=(command="y")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,すごパ(物理)];ランク5
type=changestate
value=1000
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="波動")
triggerall=(command="x")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,マッハ投げ];ランク4
type=changestate
value=1500
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="逆波動")
triggerall=(command="y")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
;------------------------------------------------------------------------------
[state -1,叩き落とし];ランク4
type=changestate
value=1400
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="逆波動")
triggerall=(command="x")
triggerall=(fvar(0)>0)
trigger1=ctrl
trigger2=(stateno=200)||(stateno=400)||(stateno=600)
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])||(stateno=[600,670])
trigger3=(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
;------------------------------------------------------------------------------
[state -1,すごいキック(奇)];ランク5
type=changestate
value=1230
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="昇竜")
triggerall=(command="b")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,すごいキック(攻)];ランク5
type=changestate
value=1200
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="昇竜")
triggerall=(command="a")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,すごい震脚];ランク5
type=changestate
value=1900
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="holddown")
triggerall=(command="a+b")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
triggerall=(numprojid(1900)=0)&&(numprojid(1950)=0)
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
;------------------------------------------------------------------------------
[state -1,マッハで駆け抜け(背面)];ランク4
type=changestate
value=1330
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="逆波動")
triggerall=(command="b")
triggerall=(fvar(0)>0)
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])||(stateno=[600,670])
trigger3=(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
;------------------------------------------------------------------------------
[state -1,マッハで駆け抜け(正面)];ランク4
type=changestate
value=1340
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="波動")
triggerall=(command="b")
triggerall=(fvar(0)>0)
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])||(stateno=[600,670])
trigger3=(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
;------------------------------------------------------------------------------
[state -1,マッハで来た(正面)];ランク4
type=changestate
value=1300
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="波動")
triggerall=(command="a")
triggerall=(fvar(0)>0)
triggerall=p2dist x>=100
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])||(stateno=[600,670])
trigger3=(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
;------------------------------------------------------------------------------
[state -1,マッハで来た(背面)];ランク4
type=changestate
value=1320
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="逆波動")
triggerall=(command="a")
triggerall=(fvar(0)>0)
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])||(stateno=[600,670])
trigger3=(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
;-------------------------------------------[マッハ移動から追加攻撃へ移行]
[state 1300,追加攻撃ステートへ移行]
type=changestate
triggerall=var(59)=0;★AIスイッチ
triggerall=statetype=s
triggerall=command="hold_c"
triggerall=(animelemtime(5)>=0)&&(animelemtime(17)<0)
trigger1=(stateno=1300)
trigger2=(stateno=1320)
value=1310
ctrl=0
;------------------------------------------------------------------------------
[state -1,コマ投げ];ランク4
type=changestate
value=1350
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="波動")
triggerall=(command="a")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
triggerall=p2dist x<100
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger6=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
;==============================================================================
; 地上特殊攻撃
;==============================================================================
[state -1,カンフースルー];投げ技
type=changestate
value=800
triggerall=var(59)=0;★AIスイッチ
triggerall=command="y"
triggerall=statetype!=a
triggerall=ctrl
triggerall=stateno!=100
trigger1=command="holdfwd"
trigger1=p2bodydist x<10
trigger1=(p2statetype=s)||(p2statetype=c)
trigger1=p2movetype!=h
trigger2=command="holdback"
trigger2=p2bodydist x<10
trigger2=(p2statetype=s)||(p2statetype=c)
trigger2=p2movetype!=h
;------------------------------------------------------------------------------
[state -1,直突き];ランク3
type=changestate
value=220
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="holdfwd"
triggerall=command="y"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=statetype=s
trigger1=ctrl
trigger2=(stateno=[200,440])&&(movecontact>=1)
trigger2=(stateno!=220)&&(stateno!=250)
trigger3=(stateno=850)||(stateno=1310)
trigger3=(movecontact>=1)
[state -1,蹴り上げ];ランク3
type=changestate
value=250
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="holdfwd"
triggerall=command="b"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=statetype=s
trigger1=ctrl
trigger2=(stateno=[200,440])&&(movecontact>=1)
trigger2=(stateno!=220)&&(stateno!=250)
trigger3=(stateno=850)||(stateno=1310)
trigger3=(movecontact>=1)
[state -1,ちょっとすごいパンチ];ランク0
type=changestate
value=225
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="holdback"
triggerall=command="y"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
[state -1,すごいかかと落とし];ランク0
type=changestate
value=260
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="holdback"
triggerall=command="b"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
;------------------------------------------------------------------------------
[state -1,空中極パンチ];ランク3
type=changestate
value=620
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="holdfwd"
triggerall=command="y"
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=[600,670])&&(movecontact>=1)
trigger2=(stateno!=620)&&(stateno!=650)
[state -1,空中極キック];ランク3
type=changestate
value=650
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="holdfwd"
triggerall=command="b"
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=vel y>=-3
trigger1=ctrl
trigger2=(stateno=[600,670])&&(movecontact>=1)
trigger2=(stateno!=620)&&(stateno!=650)
[state -1,殴り飛ばし];ランク0
type=changestate
value=670
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="holdback"
triggerall=command="y"
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
[state -1,空中かかと];ランク0
type=changestate
value=660
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="holdback"
triggerall=command="b"
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
;==============================================================================
; 移動関連
;==============================================================================
;------------------------------------------------------------------------------
[state -1,走る]
type=changestate
value=100
triggerall=var(59)=0
triggerall=command="FF"
trigger1=statetype=s
trigger1=ctrl
[state -1,バックステップ]
type=changestate
value=105
triggerall=var(59)=0
trigger1=command="BB"
trigger1=statetype=s
trigger1=ctrl
[state -1,二段ジャンプ用]
type=changestate
value=42
triggerall=var(59)=0;★AIスイッチ
triggerall=command="斜め前"
triggerall=ctrl=1
trigger1=stateno=50
trigger1=anim=[44,46]
trigger1=pos y<=-50;■暴発するので高さ制限
trigger2=stateno!=50
trigger2=stateno!=[41,43]
trigger2=statetype=a
[state -1,二段ジャンプ用]
type=changestate
value=43
triggerall=var(59)=0;★AIスイッチ
triggerall=command="斜め後ろ"
triggerall=ctrl=1
trigger1=stateno=50
trigger1=anim=[44,46]
trigger1=pos y<=-50;■暴発するので高さ制限
trigger2=stateno!=50
trigger2=stateno!=[41,43]
trigger2=statetype=a
[state -1,二段ジャンプ用]
type=changestate
value=41
triggerall=var(59)=0;★AIスイッチ
triggerall=command="U"
triggerall=ctrl=1
trigger1=stateno=50
trigger1=anim=[44,46]
trigger1=pos y<=-50;■暴発するので高さ制限
trigger2=stateno!=50
trigger2=stateno!=[41,43]
trigger2=statetype=a
[state -1,ジャンプキャンセル]
type=changestate
value=42
triggerall=var(59)=0;★AIスイッチ
trigger1=command="holdup"
trigger1=command="holdfwd"
trigger1=movecontact
trigger1=(stateno=[200,450])
[state -1,ジャンプキャンセル]
type=changestate
value=43
triggerall=var(59)=0;★AIスイッチ
trigger1=command="holdup"
trigger1=command="holdback"
trigger1=movecontact
trigger1=(stateno=[200,450])
[state -1,ジャンプキャンセル]
type=changestate
value=41
triggerall=var(59)=0;★AIスイッチ
trigger1=command="holdup"
trigger1=movecontact
trigger1=(stateno=[200,450])
;==============================================================================
; 特殊技
;==============================================================================
;------------------------------------------------------------------------------
[state -1,すごいガード]
type=changestate
value=900
triggerall=var(59)=0;★AIスイッチ
triggerall=(fvar(0)>10);■発動コスト・最低限必要な固定値
triggerall=numexplod(5)=0
triggerall=command="z"
trigger1=ctrl
;------------------------------------------------------------------------------
[state -1,ゲージ溜め]
type=changestate
value=700
triggerall=var(59)=0;★AIスイッチ
triggerall=numexplod(5)=0
triggerall=command="D"
triggerall=command="hold_c"
triggerall=statetype!=a
trigger1=(stateno!=52)
trigger1=ctrl
;------------------------------------------------------------------------------
[state -1,ガーキャン]
type=changestate
value=500
triggerall=var(59)=0;★AIスイッチ
triggerall=command="根性C"
triggerall=statetype!=a
triggerall=power>=500;ゲージ消費
triggerall=fvar(0)>=(fvar(3)/2)
trigger1=(stateno=151)||(stateno=153)
;------------------------------------------------------------------------------
[state -1,挑発]
type=changestate
value=195
triggerall=var(59)=0;★AIスイッチ
triggerall=command="start"
triggerall=stateno!=[3600,3699]
triggerall=stateno!=2200
triggerall=stateno!=195
;--------------------------------------[投げバグ防止]
triggerall=stateno!=[3310,3330]
triggerall=stateno!=[2610,2620]
triggerall=stateno!=[1515,1520]
triggerall=stateno!=1535
triggerall=stateno!=810
triggerall=stateno!=305
;--------------------------------------
trigger1=ctrl=1
trigger1=statetype!=a
trigger2=ctrl=0
trigger2=(movetype!=h)&&(statetype!=l)&&(pos y>=0)
trigger2=roundstate=2
trigger2=!(stateno=0&&ctrl=0)
;------------------------------------------------------------------------------
;特殊ゲージ切れ時限定対打撃当身
[state -1,正拳]
type=changestate
value=320
triggerall=var(59)=0;★AIスイッチ
triggerall=(fvar(1)<0)||(fvar(0)<0)
triggerall=ctrl
triggerall=statetype!=a
trigger1=command="a+b"
trigger2=command="recovery"
[state -1,前進]
type=changestate
value=310
triggerall=var(59)=0;★AIスイッチ
triggerall=(fvar(1)<0)||(fvar(0)<0)
triggerall=ctrl
triggerall=statetype!=a
trigger1=command="b"
trigger2=command="y"
[state -1,後退]
type=changestate
value=300
triggerall=var(59)=0;★AIスイッチ
triggerall=(fvar(1)<0)||(fvar(0)<0)
triggerall=ctrl
triggerall=statetype!=a
trigger1=command="a"
trigger2=command="x"
;==============================================================================
; 通常攻撃技 
;==============================================================================
;弱攻撃-行動ランク1
;強攻撃-行動ランク2
;極攻撃-行動ランク3
;------------------------------------------------------------------------------
[state -1,しゃがみ弱パンチ]
type=changestate
value=400
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="x"
triggerall=command="holddown"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=statetype=c
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)||(animelemtime(5)>0))
trigger3=(stateno=225)&&(movecontact>=1)
trigger4=(stateno=260)&&(movecontact>=1)
trigger5=(stateno=850)||(stateno=1310)
trigger5=(movecontact>=1)
[state -1,しゃがみ弱キック]
type=changestate
value=430
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="a"
triggerall=command="holddown"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=statetype=c
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)||(animelemtime(5)>0))
trigger3=(stateno=225)&&(movecontact>=1)
trigger4=(stateno=260)&&(movecontact>=1)
trigger5=(stateno=850)||(stateno=1310)
trigger5=(movecontact>=1)
[state -1,しゃがみ強パンチ]
type=changestate
value=410
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="y"
triggerall=command="holddown"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=statetype=c
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)||(animelemtime(5)>0))
trigger3=((stateno=230)||(stateno=430))&&(movecontact>=1)
trigger4=(stateno=225)&&(movecontact>=1)
trigger5=(stateno=260)&&(movecontact>=1)
trigger6=(stateno=850)||(stateno=1310)
trigger6=(movecontact>=1)
[state -1,しゃがみ強キック]
type=changestate
value=440
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="b"
triggerall=command="holddown"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=statetype=c
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)||(animelemtime(5)>0))
trigger3=((stateno=230)||(stateno=430))&&(movecontact>=1)
trigger4=(stateno=225)&&(movecontact>=1)
trigger5=(stateno=260)&&(movecontact>=1)
trigger6=(stateno=850)||(stateno=1310)
trigger6=(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,立ち弱パンチ]
type=changestate
value=200
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="x"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=statetype=s
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)||(animelemtime(5)>0))
trigger3=(stateno=225)&&(movecontact>=1)
trigger4=(stateno=260)&&(movecontact>=1)
trigger5=(stateno=850)||(stateno=1310)
trigger5=(movecontact>=1)
[state -1,立ち弱キック]
type=changestate
value=230
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="a"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=statetype=s
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)||(animelemtime(5)>0))
trigger3=(stateno=225)&&(movecontact>=1)
trigger4=(stateno=260)&&(movecontact>=1)
trigger5=(stateno=850)||(stateno=1310)
trigger5=(movecontact>=1)
[state -1,立ち強パンチ]
type=changestate
value=210
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="y"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=statetype=s
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)||(animelemtime(5)>0))
trigger3=((stateno=230)||(stateno=430))&&(movecontact>=1)
trigger4=(stateno=225)&&(movecontact>=1)
trigger5=(stateno=260)&&(movecontact>=1)
trigger6=(stateno=850)||(stateno=1310)
trigger6=(movecontact>=1)
[state -1,立ち強キック]
type=changestate
value=240
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="b"
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=statetype=s
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)||(animelemtime(5)>0))
trigger3=((stateno=230)||(stateno=430))&&(movecontact>=1)
trigger4=(stateno=225)&&(movecontact>=1)
trigger5=(stateno=260)&&(movecontact>=1)
trigger6=(stateno=850)||(stateno=1310)
trigger6=(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,ジャンプ弱パンチ]
type=changestate
value=600
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="x"
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&((movecontact>=1)||(animelemtime(5)>0))
trigger3=(stateno=[660,670])&&(movecontact>=1)
[state -1,ジャンプ弱キック]
type=changestate
value=630
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="a"
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&((movecontact>=1)||(animelemtime(5)>0))
trigger3=(stateno=[660,670])&&(movecontact>=1)
[state -1,ジャンプ強パンチ]
type=changestate
value=610
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="y"
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&((movecontact>=1)||(animelemtime(5)>0))
trigger3=(stateno=630)&&(movecontact>=1)
trigger4=(stateno=[660,670])&&(movecontact>=1)
[state -1,ジャンプ強キック]
type=changestate
value=640
triggerall=var(59)=0;★AIスイッチ
;triggerall = 1;☆後で何か条件入れるかも
triggerall=command="b"
triggerall=(fvar(0)>0)
triggerall=statetype=a
trigger1=ctrl
trigger2=(stateno=600)&&((movecontact>=1)||(animelemtime(5)>0))
trigger3=(stateno=630)&&(movecontact>=1)
trigger4=(stateno=[660,670])&&(movecontact>=1)
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------ 
;AI
[state -1,SETAI]
type=varset
triggerall=!ishelper
triggerall=var(59)=0
triggerall=alive
trigger1=numhelper(12345)
trigger1=helper(12345),var(59)=1
trigger2=command="AI0"||command="AI1"||command="AI2"||command="AI3"||command="AI4"||command="AI5"
trigger3=command="AI6"||command="AI7"||command="AI8"||command="AI9"||command="AI10"||command="AI11"
trigger4=command="AI12"||command="AI13"||command="AI14"||command="AI15"||command="AI16"||command="AI17"
trigger5=command="AI18"||command="AI19"||command="AI20"||command="AI21"||command="AI22"||command="AI23"
trigger6=command="AI24"||command="AI25"||command="AI26"||command="AI27"||command="AI28"||command="AI29"
trigger7=command="AI30"||command="AI31"||command="AI32"||command="AI33"||command="AI34"||command="AI35"
trigger8=command="AI36"||command="AI37"||command="AI38"||command="AI39"||command="AI40"||command="AI41"
trigger9=command="AI42"||command="AI43"||command="AI44"||command="AI45"||command="AI46"||command="AI47"
trigger10=command="AI48"||command="AI49"||command="AI50"
trigger11=(command="a"^^command="a2")||(command="b"^^command="b2")||(command="c"^^command="c2")
trigger12=(command="x"^^command="x2")||(command="y"^^command="y2")||(command="z"^^command="z2")
trigger13=(command="start"^^command="start2")||(command="holdfwd"^^command="holdfwd2")
trigger14=(command="holdback"^^command="holdback2")||(command="holdup"^^command="holdup2")||(command="holddown"^^command="holddown2")
trigger15=0;AI常時起動用(Always ON)(0=>1)
var(59)=5
;AI LEVEL 1<--Low～High-->5
;初期値5
;AI CTRL
[state -1,　当身待ちリセット];反応記述
type=varset
var(58)=0
triggerall=!ishelper
triggerall=numhelper(21000);ヘルパー確認
triggerall=roundstate=2
trigger1=var(58)
ignorehitpause=1
[state -1,　当身待ち];反応記述
type=varset
var(58)=5
triggerall=!ishelper
triggerall=numhelper(21000);ヘルパー確認
triggerall=enemy(var(0)),stateno!=0
trigger1=helper(21000),var(42)=enemy(var(0)),stateno
trigger2=helper(21000),var(43)=enemy(var(0)),stateno
trigger3=helper(21000),var(44)=enemy(var(0)),stateno
trigger4=helper(21000),var(45)=enemy(var(0)),stateno
trigger5=fvar(38)=5
ignorehitpause=1
[state -1,　当身待ちリセット];反応記述
type=varset
var(58)=0
triggerall=!ishelper
triggerall=numhelper(21000);ヘルパー確認
trigger1=roundstate<2
ignorehitpause=1
[state -1,airjump]
type=varset
trigger1=!ishelper
trigger1=var(54)>0
trigger1=statetype!=a&&pos y<=0
var(54)=0
ignorehitpause=1
[state -1,学習var持ち越し用];var(39)～var(29)
type=null
triggerall=!ishelper
triggerall=var(59)
triggerall=numhelper(21000)
triggerall=roundstate=3
trigger1=1||var(39):=helper(21000),var(58)
trigger1=1||var(38):=helper(21000),var(57)
trigger1=1||var(37):=helper(21000),var(56)
trigger1=1||var(36):=helper(21000),var(55)
trigger1=1||var(35):=helper(21000),var(54)
trigger1=1||var(34):=helper(21000),var(53)
trigger1=1||var(33):=helper(21000),var(52)
trigger1=1||var(32):=helper(21000),var(45)
trigger1=1||var(31):=helper(21000),var(44)
trigger1=1||var(30):=helper(21000),var(43)
trigger1=1||var(29):=helper(21000),var(42)
ignorehitpause=1
[state -1,学習var持ち越し用Round2reset]
type=null
triggerall=!ishelper
triggerall=var(59)
triggerall=numhelper(21000)
triggerall=roundstate=2&&(sysvar(4)=[1,10])
trigger1=1||var(39):=0;helper(21000),var(58)
trigger1=1||var(38):=0;helper(21000),var(57)
trigger1=1||var(37):=0;helper(21000),var(56)
trigger1=1||var(36):=0;helper(21000),var(55)
trigger1=1||var(35):=0;helper(21000),var(54)
trigger1=1||var(34):=0;helper(21000),var(53)
trigger1=1||var(33):=0;helper(21000),var(52)
trigger1=1||var(32):=0;helper(21000),var(45)
trigger1=1||var(31):=0;helper(21000),var(44)
trigger1=1||var(30):=0;helper(21000),var(43)
trigger1=1||var(29):=0;helper(21000),var(42)
ignorehitpause=1
[state ];無闇に技ふらない
type=null
triggerall=!ishelper
triggerall=var(59)
triggerall=roundstate=2
trigger1=1||var(48):=0
trigger1=1||var(48):=var(48)+(enemy(var(0)),ctrl||(enemy(var(0)),ctrl=0&&p2movetype=i)||(p2movetype=a&&enemy(var(0)),time<abs(enemy(var(0)),animtime*1.0/2))||(enemy(var(0)),ctrl=0&&(p2stateno=100||(p2stateno=[0,22]))))*2
trigger1=1||var(48):=var(48)+(p2stateno>200&&p2movetype!=h)
trigger1=1||var(48):=var(48)+(enemy(var(0)),vel x>=enemy(var(0)),const(velocity.walk.back.x)&&(p2movetype!=h||p2movetype=i||enemy(var(0)),ctrl))
ignorehitpause=1
[state ];無闇に技ふらない低レベル用リセット
type=varset
triggerall=!ishelper
triggerall=var(59)<=3
triggerall=roundstate=2
trigger1=var(48)
trigger1=ctrl||stateno=100
trigger1=enemy(var(0)),ctrl||(!enemy(var(0)),ctrl&&enemy(var(0)),time<=4-var(59))||(p2movetype!=a&&!inguarddist&&(p2stateno!=[100,101]))
trigger1=p2bodydist x-var(47)*(4+var(59))*var(55)>(21+(gametime%120=[0,21])*2+(gametime%120=[40,80])*4)
trigger1=var(59)=1||life>=140+var(59)*14||random<70
trigger1=(random<=1000-var(59)*var(59)*140&&var(59)<3)||(var(59)=3&&random<49)
var(48)=0
ignorehitpause=1
[state ];無闇に技ふらない根性アーマー時リセット
type=varset
triggerall=!ishelper
triggerall=var(2)>0
triggerall=roundstate=2
trigger1=var(48)
trigger1=ctrl||stateno=100||var(40)>=5
var(48)=0
ignorehitpause=1
[state ];test用
type=null;varset
triggerall=!ishelper
triggerall=var(59)
triggerall=roundstate=2
trigger1=1
var(48)=0
ignorehitpause=1
[state ];enemy(var(0)),vel x
type=varset
trigger1=!ishelper
trigger1=var(59)
trigger1=roundstate=2
var(47)=ceil(enemy(var(0)),vel x*(enemy(var(0)),gethitvar(hitshaketime)=0||p2movetype!=h)+enemy(var(0)),gethitvar(xvel)*(enemy(var(0)),facing)*(enemy(var(0)),gethitvar(hitshaketime)>0&&p2movetype=h))
ignorehitpause=1
[state ];var(42)
type=varset
trigger1=!ishelper
trigger1=var(59)
var(42)=0
ignorehitpause=1
[state ];var(42)
type=varset
trigger1=!ishelper
trigger1=var(59)
trigger1=p2movetype=a
var(42)=-10000
ignorehitpause=1
[state ];var(42)
type=varset
triggerall=!ishelper
triggerall=numhelper(21000)
triggerall=var(59)
triggerall=var(42)=-10000
trigger1=var(0)=0
trigger1=p2stateno=(helper(21000),var(18)%10000)||p2stateno=(helper(21000),var(19)%10000)||p2stateno=(helper(21000),var(20)%10000)||p2stateno=(helper(21000),var(21)%10000)||p2stateno=(helper(21000),var(22)%10000)
trigger2=var(0)=0
trigger2=p2stateno=(helper(21000),var(23)%10000)||p2stateno=(helper(21000),var(24)%10000)||p2stateno=(helper(21000),var(25)%10000)||p2stateno=(helper(21000),var(26)%10000)||p2stateno=(helper(21000),var(27)%10000)
trigger3=var(0)=1
trigger3=p2stateno=(helper(21000),var(18+10)%10000)||p2stateno=(helper(21000),var(19+10)%10000)||p2stateno=(helper(21000),var(20+10)%10000)||p2stateno=(helper(21000),var(21+10)%10000)||p2stateno=(helper(21000),var(22+10)%10000)
trigger4=var(0)=1
trigger4=p2stateno=(helper(21000),var(23+10)%10000)||p2stateno=(helper(21000),var(24+10)%10000)||p2stateno=(helper(21000),var(25+10)%10000)||p2stateno=(helper(21000),var(26+10)%10000)||p2stateno=(helper(21000),var(27+10)%10000)
var(42)=1
ignorehitpause=1
[state ];var(42)
type=null;varset
triggerall=!ishelper
triggerall=numhelper(21000)
triggerall=var(59)
triggerall=var(0)=0||var(0)=1
triggerall=var(42)=1
trigger1=p2stateno=(helper(21000),var(18+10*(var(0)=1))%10000)
trigger1=var(42):=((helper(21000),var((var(0)=1)*10+18)-helper(21000),var((var(0)=1)*10+18)%10000)/10000)-enemy(var(0)),animelemtime(1)
trigger2=p2stateno=(helper(21000),var((var(0)=1)*10+19)%10000)
trigger2=var(42):=((helper(21000),var((var(0)=1)*10+19)-helper(21000),var((var(0)=1)*10+19)%10000)/10000)-enemy(var(0)),animelemtime(1)
trigger3=p2stateno=(helper(21000),var((var(0)=1)*10+20)%10000)
trigger3=var(42):=((helper(21000),var((var(0)=1)*10+20)-helper(21000),var((var(0)=1)*10+20)%10000)/10000)-enemy(var(0)),animelemtime(1)
trigger4=p2stateno=(helper(21000),var((var(0)=1)*10+21)%10000)
trigger4=var(42):=((helper(21000),var((var(0)=1)*10+21)-helper(21000),var((var(0)=1)*10+21)%10000)/10000)-enemy(var(0)),animelemtime(1)
trigger5=p2stateno=(helper(21000),var((var(0)=1)*10+22)%10000)
trigger5=var(42):=((helper(21000),var((var(0)=1)*10+22)-helper(21000),var((var(0)=1)*10+22)%10000)/10000)-enemy(var(0)),animelemtime(1)
trigger6=p2stateno=(helper(21000),var((var(0)=1)*10+23)%10000)
trigger6=var(42):=((helper(21000),var((var(0)=1)*10+23)-helper(21000),var((var(0)=1)*10+23)%10000)/10000)-enemy(var(0)),animelemtime(1)
trigger7=p2stateno=(helper(21000),var((var(0)=1)*10+24)%10000)
trigger7=var(42):=((helper(21000),var((var(0)=1)*10+24)-helper(21000),var((var(0)=1)*10+24)%10000)/10000)-enemy(var(0)),animelemtime(1)
trigger8=p2stateno=(helper(21000),var((var(0)=1)*10+25)%10000)
trigger8=var(42):=((helper(21000),var((var(0)=1)*10+25)-helper(21000),var((var(0)=1)*10+25)%10000)/10000)-enemy(var(0)),animelemtime(1)
trigger9=p2stateno=(helper(21000),var((var(0)=1)*10+26)%10000)
trigger9=var(42):=((helper(21000),var((var(0)=1)*10+26)-helper(21000),var((var(0)=1)*10+26)%10000)/10000)-enemy(var(0)),animelemtime(1)
trigger10=p2stateno=(helper(21000),var((var(0)=1)*10+27)%10000)
trigger10=var(42):=((helper(21000),var((var(0)=1)*10+27)-helper(21000),var((var(0)=1)*10+27)%10000)/10000)-enemy(var(0)),animelemtime(1)
ignorehitpause=1
[state ];var(42)
type=varset
trigger1=!ishelper
trigger1=var(59)
trigger1=p2movetype=a
trigger1=var(42)=-10000
var(42)=4649
ignorehitpause=1
[state ];var(42)
type=varset
trigger1=!ishelper
trigger1=var(59)
trigger1=p2movetype!=a
trigger1=var(42)!=0
var(42)=0
ignorehitpause=1
[state ]
type=varset
trigger1=!ishelper
trigger1=var(59)
trigger1=var(53)%10=1
trigger1=ctrl||stateno=1050||movecontact||movetype=h||roundstate!=2||stateno!=1000
var(53)=var(53)-1
ignorehitpause=1
;AI
;------------------------------------------------------------------------------
;特殊ゲージ切れ時限定対打撃当身
[state ]
type=changestate
value=320
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)<0)
triggerall=ctrl||stateno=100
triggerall=statetype!=a
triggerall=random<var(59)*300
triggerall=enemy(var(0)),time<9
triggerall=enemy(var(0)),hitdefattr=SCA,AA
trigger1=p2movetype=a
trigger1=(p2bodydist x-var(47)*(6-helper(21000),var(59))*var(55)=[0,40])
trigger1=p2bodydist y>-100
trigger2=(p2bodydist x-var(47)*(6-helper(21000),var(59))*var(55)=[0,40])
trigger2=p2bodydist y>-100
trigger2=inguarddist
trigger3=prevstateno=310
trigger3=p2movetype=a||inguarddist
[state -1,後退]
type=changestate
value=300
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)<0)
triggerall=ctrl||stateno=100
triggerall=statetype!=a
triggerall=enemy(var(0)),time<10
trigger1=p2movetype=a
trigger1=(p2bodydist x-var(47)*(6-helper(21000),var(59))*var(55)=[0,40])
trigger2=(p2bodydist x-var(47)*(6-helper(21000),var(59))*var(55)=[0,40])
trigger2=inguarddist||p2movetype=a
trigger3=prevstateno=310
trigger3=p2movetype=a||inguarddist
[state -1,前進]
type=changestate
value=310
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)<0)
triggerall=ctrl||stateno=100
triggerall=statetype!=a
trigger1=enemy(var(0)),time<10
trigger1=p2movetype=a
trigger1=!(p2bodydist x-var(47)*(6-helper(21000),var(59))*var(55)=[0,40])
trigger2=!(p2bodydist x-var(47)*(6-helper(21000),var(59))*var(55)=[0,40])
trigger2=inguarddist
trigger2=enemy(var(0)),time<4
trigger3=enemy(var(0)),numproj>0||(helper(30000),sysvar(4)!=0&&(var(51)=[0,90])&&(var(52)=[-100,60]))
;---------------------------------------------------------------------------
[state -1,ﾊﾞｸｽﾃ]
type=changestate
value=105
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=backedgebodydist>=40
triggerall=enemy(var(0)),hitdefattr=sca,at
triggerall=enemy(var(0)),time*(time+1)>=30||((time>1)&&var(59)>=3)||var(59)>4||(enemy(var(0)),hitdefattr=sca,at&&enemy(var(0)),time<2&&random<var(59)*150+(lifemax-life))
triggerall=ctrl||stateno=100||stateno=21||((stateno=[120,159])&&(movetype!=h||ctrl))||stateno=106&&time>0
triggerall=random<=var(59)*var(59)*60||var(59)>=3||(enemy(var(0)),hitdefattr=sca,at&&enemy(var(0)),time<2&&random<var(59)*150+(lifemax-life))
triggerall=enemy(var(0)),vel x<=abs(const(velocity.run.back.x))*0.93*0.93*0.93
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
trigger1=((time+1)*(enemy(var(0)),time+1))>=35||var(59)>3||(enemy(var(0)),hitdefattr=sca,at&&enemy(var(0)),time<2&&random<var(59)*150+(lifemax-life))
trigger2=(prevstateno=[5000,5270])
trigger3=(prevstateno=[120,159])
;AI12Pカラー(ゲージMAX根性MAX)用--------------------------------------------
[state -1,超すごいラッシュ　根性フルカウント3ゲージ技11-12P]
type=changestate
value=3600
triggerall=var(59)
triggerall=palno=12||palno=11
triggerall=roundstate=2&&alive
triggerall=p2life>0&&enemy(var(0)),alive
triggerall=fvar(0)>0
triggerall=statetype!=a
triggerall=power>=3000;ゲージレベル3
triggerall=var(40)>=10
triggerall=fvar(0)>((fvar(3)/100)*(50))||p2life*1.0/enemy(var(0)),lifemax<(0.5*fvar(1))
triggerall=(p2dist x>0)
triggerall=(p2bodydist x-enemy(var(0)),vel x*2*var(55)=[0,60])||(p2bodydist x<100)
triggerall=(p2life*1.0/enemy(var(0)),lifemax<(0.5*fvar(1)))||(random<var(59)*100+500*(p2bodydist x<60))
triggerall=p2statetype!=l
triggerall=(p2bodydist y+helper(21000),fvar(2)=[-70,-20])||((p2bodydist y+helper(21000),fvar(2)>-70)&&!(p2movetype=h&&enemy(var(0)),hitfall))||!p2bodydist y
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=var(58)!=5
trigger1=(movecontact)&&(numtarget!=0)
trigger1=(stateno=[200,460])||(stateno=850)
trigger2=(movecontact)&&(numtarget!=0)
trigger2=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger3=(frontedgebodydist<80)&&(numtarget!=0)
trigger3=(target,statetype=a)&&(target,vel y>0)
trigger3=ctrl
trigger4=ctrl
;------------------------------------------------------------------------------
[state -1,超ッ・・・すごいパァァンチ!　通常3ゲージ技10-12P]
type=changestate
value=3500
triggerall=var(59)
triggerall=palno=12||palno=11||palno=10
triggerall=roundstate=2&&alive
triggerall=fvar(0)>0
triggerall=power>=3000;ゲージレベル3
triggerall=p2life>0&&enemy(var(0)),alive
triggerall=(fvar(0)>(fvar(3)/100)*(50))||(p2life*1.0/enemy(var(0)),lifemax<0.3&&fvar(0)>1)
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2bodydist x-var(47)*(12-helper(21000),var(59))*var(55)>=0
triggerall=!enemy(var(0)),hitfall||((p2bodydist y+helper(21000),fvar(12)<-10)&&(p2movetype=h&&enemy(var(0)),hitfall))||!p2bodydist y
triggerall=((p2bodydist y+helper(21000),fvar(12)>-170)&&p2dist x<100)||((p2bodydist y+helper(21000),fvar(12)>-190)&&(p2dist x=[100,180]))||((p2bodydist y+helper(21000),fvar(12)>-220)&&p2dist x>180)
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=var(58)!=5
trigger1=ctrl||stateno=100||(stateno=52&&animtime=0)
[state -1,すごいガードアーマー用10P12P]
type=changestate
value=900
triggerall=!ishelper
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=palno=10||palno=12
triggerall=var(40)
triggerall=(fvar(0)>12)
triggerall=numexplod(5)=0
triggerall=roundstate=2
triggerall=ctrl||(stateno=52&&animtime=0)||stateno=100
trigger1=palno=10||palno=12
trigger1=(var(59)&&(numenemy=1&&p2life>=30||(numenemy>1&&((enemy(0),life!=[29,1])&&(enemy(numenemy>1),life!=[29,1])))))
trigger1=(var(59)>=2&&time)||random<21*(time>0)
trigger1=random<var(59)*40+50
trigger1=p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)>140+40*(enemy(var(0)),ctrl||(!enemy(var(0)),ctrl&&(p2stateno=[0,159])))-70*(p2statetype=l&&p2stateno!=5120&&time>0)
trigger1=((p2stateno!=[1000,4999])||(p2movetype=h))
trigger1=!inguarddist
trigger1=statetype!=a
;AIガードより上---------------------------------------------------------------
[state -1,超ラッシュ　根性フルカウント3ゲージ技]
type=changestate
value=3600-100*(p2life*1.0/enemy(var(0)),lifemax<0.28)*(random<970)*(var(44)=0)
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=p2life>0&&enemy(var(0)),alive
triggerall=fvar(0)>0
triggerall=statetype!=a
triggerall=power>=3000;ゲージレベル3
triggerall=var(40)>=10
triggerall=fvar(0)>((fvar(3)/100)*(50))||p2life*1.0/enemy(var(0)),lifemax<(0.5*fvar(1))
triggerall=p2bodydist x-enemy(var(0)),vel x*(2+9*(p2life*1.0/enemy(var(0)),lifemax<0.28&&!var(44)))*var(55)>0
triggerall=(p2bodydist x-enemy(var(0)),vel x*(2+9*(p2life*1.0/enemy(var(0)),lifemax<0.28&&!var(44)))*var(55)=[0,60])||((p2bodydist x-enemy(var(0)),vel x*(2+9*(p2life*1.0/enemy(var(0)),lifemax<0.28&&!var(44)))*var(55)=[0,100])&&life<200)
triggerall=(p2life*1.0/enemy(var(0)),lifemax<(0.5*fvar(1)))||(random<var(59)*100+500*(p2bodydist x<60))
triggerall=p2statetype!=l
triggerall=p2stateno<1100||p2movetype=h
triggerall=(p2bodydist y+helper(21000),fvar(2+9*(p2life*1.0/enemy(var(0)),lifemax<0.28&&!var(44)))=[-70,-20])||((p2bodydist y+helper(21000),fvar(2)>-70)&&!(p2movetype=h&&enemy(var(0)),hitfall))||!p2bodydist y
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=!((numtarget(1750)||numtarget(1755)||numtarget(1760))&&enemy(var(0)),vel y=0)
triggerall=var(58)!=5
triggerall=var(2)=0
trigger1=ctrl||stateno=100||(stateno=52&&animtime=0)||((stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310))
trigger1=p2movetype=a||((p2stateno=[120,155])&&helper(21000),var(11)>1)
[state -1,超すごいラッシュ　根性フルカウント3ゲージ技]
type=changestate
value=3600-100*(p2life*1.0/enemy(var(0)),lifemax<0.28)*(random<970)*(var(44)=0)
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=p2life>0&&enemy(var(0)),alive
triggerall=statetype!=a
triggerall=fvar(0)>0
triggerall=power>=3000;ゲージレベル3
triggerall=var(40)>=10
triggerall=fvar(0)>((fvar(3)/100)*(50))||p2life*1.0/enemy(var(0)),lifemax<(0.5*fvar(1))
triggerall=p2bodydist x-enemy(var(0)),vel x*(2+9*(p2life*1.0/enemy(var(0)),lifemax<0.28&&!var(44)))*var(55)>0
triggerall=(p2bodydist x-enemy(var(0)),vel x*(2+9*(p2life*1.0/enemy(var(0)),lifemax<0.28&&!var(44)))*var(55)=[0,60])||((p2bodydist x-enemy(var(0)),vel x*(2+9*(p2life*1.0/enemy(var(0)),lifemax<0.28&&!var(44)))*var(55)=[0,100])&&life<200)
triggerall=(p2life*1.0/enemy(var(0)),lifemax<(0.5*fvar(1)))||(random<var(59)*100+500*(p2bodydist x<60))
triggerall=p2statetype!=l
triggerall=p2stateno<1100||p2movetype=h
triggerall=(p2bodydist y+helper(21000),fvar(2+9*(p2life*1.0/enemy(var(0)),lifemax<0.28&&!var(44)))=[-70,-20])||((p2bodydist y+helper(21000),fvar(2)>-70)&&!(p2movetype=h&&enemy(var(0)),hitfall))||!p2bodydist y
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=!((numtarget(1750)||numtarget(1755)||numtarget(1760))&&enemy(var(0)),vel y=0)
triggerall=var(58)!=5
triggerall=var(2)=0
trigger1=(movecontact)&&(numtarget!=0)
trigger1=(stateno=[200,460])||(stateno=850)
trigger2=(movecontact)&&(numtarget!=0)
trigger2=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger3=(frontedgebodydist<80)&&(numtarget!=0)
trigger3=(target,statetype=a)&&(target,vel y>0)
trigger3=ctrl
;------------------------------------------------------------------------------
[state -1,超ッ・・・すごいパァァンチ!　通常3ゲージ技]
type=changestate
value=3500
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=power>=3000;ゲージレベル3
triggerall=p2life>0&&enemy(var(0)),alive
triggerall=fvar(0)>0
triggerall=(fvar(0)>(fvar(3)/100)*(50))||(p2life*1.0/enemy(var(0)),lifemax<=(0.3*fvar(1))&&fvar(0)>1)
triggerall=var(40)<10||p2life*1.0/enemy(var(0)),lifemax<=(0.3*fvar(1))||(random<200&&life<400)
triggerall=((var(40)=[8,9])&&(random<150&&gametime%25=random%25))||(var(40)<=7&&random<740-var(40)*100)||((p2life*1.0/enemy(var(0)),lifemax<=(0.3*fvar(1)))&&random<var(59)*100+200)
triggerall=statetype!=a
triggerall=(gametime%600=[0,60])||(gametime%600=[120,160])||(gametime%600=[200,210])||(gametime%600=[280,350])||(gametime%600=[490,560])||(gametime%600=[(570+random%20),599])||(p2life*1.0/enemy(var(0)),lifemax<=(0.3*fvar(1)))||(life<400)
triggerall=(p2life*1.0/enemy(var(0)),lifemax<=(0.3*fvar(1)))||(random<=25+(numtarget!=0)*25)||(p2movetype=a&&random<var(59)*100&&p2stateno<1000)
triggerall=p2statetype!=l
triggerall=p2stateno<2000||p2movetype=h
triggerall=p2bodydist x-var(47)*(12-helper(21000),var(59))*var(55)>=0
triggerall=!enemy(var(0)),hitfall||((p2bodydist y+helper(21000),fvar(12)<-10)&&(p2movetype=h&&enemy(var(0)),hitfall))||!p2bodydist y
triggerall=((p2bodydist y+helper(21000),fvar(12)>-170)&&p2dist x<100)||((p2bodydist y+helper(21000),fvar(12)>-190)&&(p2dist x=[100,180]))||((p2bodydist y+helper(21000),fvar(12)>-220)&&p2dist x>180)
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=!((numtarget(1750)||numtarget(1755)||numtarget(1760))&&enemy(var(0)),vel y=0)
triggerall=var(58)!=5
trigger1=ctrl||stateno=100||(stateno=52&&animtime=0)
trigger1=p2movetype=a||p2movetype=h
trigger2=stateno=[200,460]
trigger2=movecontact&&p2movetype=h
trigger3=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger3=movecontact&&p2movetype=h
[state -1,超・電光石火　2ゲージ技]
type=changestate
value=3300
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=power>=2000;ゲージレベル2
triggerall=fvar(0)>0
triggerall=(fvar(0)>(fvar(3)/100)*(45))||(p2life*1.0/enemy(var(0)),lifemax<(0.15*fvar(1))&&fvar(0)>1)
triggerall=!(var(40)>=10&&power>2350)||p2life*1.0/enemy(var(0)),lifemax<(0.15*fvar(1))||random<21||life<200||(power>2350&&var(40)>=10&&((p2life*1.0/enemy(var(0)),lifemax*1.0)>0.8)&&random<((p2life*1.0/enemy(var(0)),lifemax*1.0)*350))
triggerall=!(var(40)<5&&(power=[2000,2120]))||p2life<(150*fvar(1))||life<200
triggerall=!(var(40)=9&&power>2900)||p2life<(150*fvar(1))||life<200
triggerall=random<var(40)*50||p2life<(150*fvar(1))||(power>2900&&var(40)=9&&((p2life*1.0/enemy(var(0)),lifemax*1.0)>0.8)&&random<((p2life*1.0/enemy(var(0)),lifemax*1.0)*350))||(numexplod(7777)!=0)
triggerall=power>=2000;ゲージレベル2
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(8-helper(21000),var(59))*var(55)>=10
triggerall=p2statetype!=a||(((-atan((p2dist y+helper(21000),fvar(8))/(p2dist x-var(47)*(8-helper(21000),var(59))*var(55)))*180/pi-ifelse(p2dist x>0,0,180))=[26.8,62.5])&&p2statetype=a)
triggerall=p2statetype!=l
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=numtarget(210)=0||numtarget(210)&&enemy(var(0)),movetype=h&&(enemy(var(0)),stateno!=[960,970])
triggerall=p2bodydist x<200
triggerall=var(58)!=5
trigger1=ctrl||stateno=100
trigger1=p2movetype=a
trigger1=var(59)>1
trigger1=(random<var(59)*50+500*(p2bodydist x<80))||p2life<150
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger3=((random<var(59)*20)&&p2stateno<1000)||p2life<150
trigger4=(stateno=1260)&&(animelemtime(5)>0)
trigger4=(p2stateno=[120,155])
trigger4=(random<var(59)*20)||p2life<150
trigger5=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger5=p2bodydist x=[0,60]
trigger5=p2movetype=a||p2stateno=[120,155]
trigger5=(random<var(59)*20)
[state -1,瞬極的な]
type=changestate
value=2500
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=power>=1000;ゲージレベル１
triggerall=fvar(0)>0
triggerall=fvar(0)>((fvar(3)/100)*(40))
triggerall=!(var(40)>=10&&power>2400)||(p2life<250*(fvar(1)/(1+var(10))))||(power>2400&&var(40)>=10&&((p2life*1.0/enemy(var(0)),lifemax*1.0)>0.63)&&random<((p2life*1.0/enemy(var(0)),lifemax*1.0)*350))
triggerall=random<var(40)*20+400+var(59)*10||(random<var(59)*40+50&&(numexplod(7777)!=0))
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)||(p2life<250*(fvar(1)/(1+var(10))))
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2movetype!=h
triggerall=p2stateno!=[5000,5999]
triggerall=(enemy(var(0)),ctrl&&p2movetype=i&&random<50)||(p2movetype=a&&enemy(var(0)),time<5&&p2stateno<2000)
triggerall=inguarddist
triggerall=p2bodydist x=[0,30]
triggerall=(p2statetype=a&&enemy(var(0)),vel y>0&&p2dist y+helper(21000),fvar(10)>0)||p2statetype!=a
triggerall=var(58)!=5
triggerall=var(2)<=0
triggerall=(gametime%30=[4,17])||(gametime%30=[21,28])
trigger1=ctrl||stateno=100
trigger1=p2movetype=a&&((var(42)=[1,29])||var(42)=4649)
trigger1=random<var(59)*100+350
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>1)
trigger2=p2movetype=a&&random<var(59)*70&&((var(42)=[1,29])||var(42)=4649)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger3=p2movetype=a&&random<var(59)*70&&((var(42)=[1,29])||var(42)=4649)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger4=p2movetype=a&&random<var(59)*70&&((var(42)=[1,29])||var(42)=4649)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger5=p2movetype=a&&random<var(59)*70&&((var(42)=[1,29])||var(42)=4649)
trigger6=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger6=p2movetype=a&&random<var(59)*70&&((var(42)=[1,29])||var(42)=4649)
trigger7=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger7=p2movetype=a&&random<var(59)*70&&((var(42)=[1,29])||var(42)=4649)
trigger8=(stateno=1000)||(stateno=2000)
trigger8=!movecontact&&(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger8=p2movetype=a&&random<var(59)*40&&((var(42)=[1,29])||var(42)=4649)
trigger9=(stateno=1100)||(stateno=2050)
trigger9=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
trigger9=p2movetype=a&&random<var(59)*40&&!numtarget&&((var(42)=[1,29])||var(42)=4649)
[state -1,コマ投げ];ランク4
type=changestate
value=1350
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(8))
triggerall=(fvar(0)/fvar(3))>0.4||random<200*(fvar(0)/fvar(3))
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2dist x<100
triggerall=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)=[0,49]
triggerall=p2statetype!=a||p2bodydist y+helper(21000),fvar(7)=[-80,-15]
triggerall=var(58)!=5
triggerall=p2movetype!=a
triggerall=var(40)<10||(p2life<=(ceil(60*fvar(1)*0.5)))||(fvar(1)<=0.2)
triggerall=random<30*(10-var(40))||(p2life<=(ceil(60*fvar(1)*0.5))&&random<var(59)*25)||(fvar(1)<=0.1)
triggerall=p2stateno!=[120,155]
triggerall=p2statetype!=l
triggerall=gametime<helper(21000),var(3)+10
triggerall=numtarget(210)=0||numtarget(210)&&enemy(var(0)),movetype=h&&(enemy(var(0)),stateno!=[960,970])
trigger1=ctrl
trigger1=p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)=[0,49-var(26+var(0))*5]
trigger1=enemy(var(0)),ctrl=0&&(p2stateno!=100&&p2stateno!=105&&p2stateno!=110&&(p2stateno!=[0,52])&&(p2stateno!=[700,800])&&(enemy(var(0)),vel x*var(55)<enemy(var(0)),const(velocity.walk.fwd.x)))&&enemy(var(0)),animtime<-2
trigger2=(stateno=[200,460])&&(movecontact>=1)
trigger2=((stateno=210||stateno=240||stateno=440)&&movecontact>1-1*(var(40)<3))||(movehit&&p2movetype!=h&&random<var(59)*70)
trigger3=(stateno=850)||(stateno=1310)
trigger3=(movehit>=1)&&(p2movetype!=h||(var(40)<5&&random<var(59)*70))
trigger4=(stateno=1260)&&(animelemtime(5)>0)
trigger4=fvar(1)<=0.2
[state -1,すごい震脚];ランク5
type=changestate
value=1900+0*(var(54):=0)
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(16))
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=(numprojid(1900)=0)&&(numprojid(1950)=0)
triggerall=(gametime%50=[10,28])||(gametime%50=[35,49])
triggerall=p2bodydist x=[-10,60]
triggerall=p2bodydist y+(enemy(var(0)),vel y*54+helper(21000),fvar(0)*(54-1)*54/2)>=-70
triggerall=p2dist x>0
triggerall=fvar(38)!=5
triggerall=(var(59)<3&&(time+1)*enemy(var(0)),time>30)||time>3&&var(59)>=3||var(59)>=5
triggerall=random<var(59)*90+200
triggerall=var(2)=0
triggerall=stateno!=1256&&prevstateno!=1256
triggerall=facing!=enemy(var(0)),facing
triggerall=!numtarget(2600)
triggerall=!(enemy(var(0)),hitdefattr=sca,nt,st,ht)
triggerall=enemy(var(0)),p2bodydist x>10||enemy(var(0)),hitdefattr=sca,aa,ap
trigger1=ctrl
trigger1=enemy(var(0)),hitdefattr=sca,aa,ap
trigger1=p2bodydist x-var(47)*(54-helper(21000),var(59))*var(55)=[-10,50]
trigger1=p2movetype=a&&((var(42)=[1,25])||var(42)=4649)
trigger1=(enemy(var(0)),animtime/2.0)<-30||random<50
trigger1=enemy(var(0)),time<(helper(21000),var(5)/3.0)
trigger1=enemy(var(0)),time>0
trigger2=(stateno=[200,460])
trigger2=moveguarded||(movehit&&p2movetype!=h)
trigger2=p2statetype!=a||(p2statetype=a&&(p2bodydist x=[0,40]))&&((var(42)=[1,25])||var(42)=4649)
trigger2=1||var(54):=0
trigger2=1||var(54):=var(54)+(p2statetype=s&&(helper(21000),var(11)>62&&!enemy(var(0)),ctrl||random<=(11-var(59))*10)&&!enemy(var(0)),ctrl||p2statetype=a)
trigger2=1||var(54):=var(54)+(p2statetype=c&&(helper(21000),var(11)=[29,49])&&!enemy(var(0)),ctrl||(p2movetype=a&&(enemy(var(0)),time<4||enemy(var(0)),hitdefattr=sca,aa,ap)))
trigger2=var(54)!=0
trigger3=(stateno=1310)
trigger3=moveguarded||(movehit&&p2movetype!=h)
trigger3=p2statetype!=a||(p2statetype=a&&(p2bodydist x=[0,40]))
trigger3=1||var(54):=0
trigger3=1||var(54):=var(54)+(p2statetype=s&&(helper(21000),var(11)>62&&!enemy(var(0)),ctrl||random<=(11-var(59))*10)&&!enemy(var(0)),ctrl||p2statetype=a)
trigger3=1||var(54):=var(54)+(p2statetype=c&&(helper(21000),var(11)=[29,49])&&!enemy(var(0)),ctrl||(p2movetype=a&&(enemy(var(0)),time<4||enemy(var(0)),hitdefattr=sca,aa,ap)))
trigger3=var(54)!=0
trigger4=(stateno=1260)&&(animelemtime(5)>0)
trigger4=var(56)&&var(57)
trigger4=!enemy(var(0)),ctrl
trigger5=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger5=inguarddist&&enemy(var(0)),hitdefattr=sca,aa,ap
trigger5=animelemtime(32)<-5&&stateno=1300||animtime<-5&&stateno!=1300
[state -1,叩き落とし];ランク4
type=changestate
value=1400
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(20))
triggerall=roundstate=2&&alive
triggerall=var(59)>1
triggerall=p2bodydist x-enemy(var(0)),vel x*2*var(55)<=45
triggerall=p2dist x>0
triggerall=p2bodydist y+helper(21000),fvar(2)+vel y*2=[-90,70]
triggerall=random<var(59)*100+200
triggerall=p2movetype!=h
triggerall=p2statetype!=l
triggerall=(enemy(var(0)),time<4&&p2movetype=a&&(var(42)=[2,9]))||p2movetype!=a
triggerall=var(58)!=5
triggerall=enemy(var(0)),prevstateno!=5120&&helper(21000),var(10)<=0
trigger1=ctrl||stateno=100||(stateno=52&&animtime=0)
trigger1=(enemy(var(0)),ctrl&&(!inguarddist&&random<10))||enemy(var(0)),movetype=a
trigger1=1;!inguarddist
trigger1=prevstateno!=[1400,1445]
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>1)
trigger2=p2movetype=a
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger3=p2movetype=a
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger4=p2movetype=a
[state -1,AIちょスゴ昇竜]
type=changestate
value=1670
triggerall=!ishelper
triggerall=var(59)
triggerall=var(59)>3
triggerall=fvar(0)>(fvar(3)/100*14)
triggerall=roundstate=2&&alive
triggerall=((p2bodydist y+helper(21000),fvar(3)>=0)&&!(p2movetype=h&&enemy(var(0)),hitfall))||p2statetype!=a
triggerall=statetype!=a
triggerall=var(58)!=5;
triggerall=p2statetype!=l
triggerall=p2stateno!=[120,155]
triggerall=var(58)!=5
trigger1=ctrl||stateno=100
trigger1=p2movetype=a&&(enemy(var(0)),animtime=[-6,-3])&&enemy(var(0)),hitdefattr=SCA,SA,NA
trigger1=(p2statetype=s&&random<400)||(p2statetype=c&&random<330)||p2statetype=a
trigger1=p2bodydist x-var(47)*(4-helper(21000),var(59))*var(55)=[-10,55]
trigger1=p2bodydist y=[-49,0]
trigger1=(p2stateno=[180,1999])||random>700||(enemy(var(0)),animtime=[-11,-7])&&p2stateno>=180
trigger1=(enemy(var(0)),time!=[2,10])
trigger2=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger2=p2movetype=a&&enemy(var(0)),time>1&&((enemy(var(0)),time<abs(enemy(var(0)),animtime))||enemy(var(0)),hitdefattr=sca,aa,at,ap)
trigger2=p2bodydist x-var(47)*(4-helper(21000),var(59))*var(55)=[-10-50*(p2dist y<70&&enemy(var(0)),vel x!=0),55]
trigger2=random<var(59)*40+40+200*(stateno=1320&&(p2stateno!=2406||p2movetype!=h))
[state -1,叩き落とし];ランク4
type=changestate
value=1400
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(20))
triggerall=roundstate=2&&alive
triggerall=var(59)>=2||random<50+var(59)*70
triggerall=gametime<=helper(21000),var(3)+10
triggerall=(backedgebodydist<15&&enemy(var(0)),backedgebodydist<35)||p2bodydist x>250||(gametime%10<=7&&p2bodydist x>110&&(var(56)&&var(57)))||(!enemy(var(0)),hitdefattr=sca,aa,at)||helper(30000),sysvar(3)=1
triggerall=var(58)!=5
triggerall=enemy(var(0)),prevstateno!=5120&&helper(21000),var(10)<=0
triggerall=numhelper(30000)
triggerall=helper(30000),sysvar(3)!=[2,3]
;triggerall=enemy(var(0)),numproj>=1||helper(30000),sysvar(3)=0&&random<700||helper(30000),sysvar(3)=1||helper(30000),sysvar(3)=4&&random<700||enemy(var(0)),hitdefattr=sca,ap
;triggerall=enemy(var(0)),numproj>=1||helper(30000),sysvar(3)=1||helper(30000),sysvar(4)=0&&(enemy(var(0)),numhelper>helper(21000),var(2))
triggerall=helper(30000),sysvar(3)=0&&random<700||helper(30000),sysvar(3)=1||helper(30000),sysvar(3)=4&&random<700||enemy(var(0)),hitdefattr=sca,ap
triggerall=helper(30000),sysvar(3)=1||helper(30000),sysvar(4)=0&&(enemy(var(0)),numhelper>helper(21000),var(2))
trigger1=0;ctrl||((stateno=[120,155])&&movetype!=h)
trigger1=p2statetype!=a&&p2movetype=a&&enemy(var(0)),animtime>-4
trigger1=numhelper(21000)
trigger1=(enemy(var(0)),numproj=[1,2])||(((enemy(var(0)),numhelper-helper(21000),var(2))=[1,2])&&var(59)<=3)||enemy(var(0)),hitdefattr=sca,ap
trigger1=var(56)&&helper(21000),var(1)
trigger1=helper(21000),var(4)=0
trigger1=random<var(59)*100+50
trigger1=(var(59)=[2,3])||var(59)=4&&random<100||(var(59)=[4,5])&&helper(30000),sysvar(4)=0&&((enemy(var(0)),numproj=[1,2])||enemy(var(0)),hitdefattr=sca,ap)
trigger2=0;ctrl||((stateno=[120,155])&&movetype!=h)
trigger2=numhelper(21000)
trigger2=(enemy(var(0)),numproj=[1,2])||(((enemy(var(0)),numhelper-helper(21000),var(2))=[1,2])&&var(59)<=3)||enemy(var(0)),hitdefattr=sca,ap
trigger2=var(56)&&helper(21000),var(1)
trigger2=helper(21000),var(4)=0
trigger2=random<var(59)*50+100
trigger2=(var(59)=[2,3])||var(59)=4&&random<100||(var(59)=[4,5])&&helper(30000),sysvar(4)=0&&((enemy(var(0)),numproj=[1,2])||enemy(var(0)),hitdefattr=sca,ap)
trigger3=ctrl||((stateno=[120,155])&&movetype!=h)
trigger3=helper(30000),sysvar(3)=1
trigger3=var(51)=[2,70];敵helper x距離
trigger3=var(52)=[-70,35];敵helper y距離
trigger3=!(p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)=[-10,55])||!enemy(var(0)),hitdefattr=sca,aa,at,ap||enemy(var(0)),ctrl=0&&p2movetype!=a
trigger3=random<var(59)*100+50
trigger3=var(59)>=4
[state -1,叩き落とし];ランク4
type=changestate
value=1400
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(20))
triggerall=roundstate=2&&alive
triggerall=var(59)>=3
triggerall=!enemy(var(0)),hitdefattr=sca,aa,at
triggerall=p2stateno<2000
triggerall=backedgebodydist<20
triggerall=p2statetype!=l
triggerall=p2bodydist x-enemy(var(0)),vel x*2*var(55)<=35
triggerall=p2bodydist y+helper(21000),fvar(2)+vel y*2=[-90,70]
triggerall=var(58)!=5
triggerall=p2movetype!=h
triggerall=gametime%3<2
triggerall=enemy(var(0)),prevstateno!=5120&&helper(21000),var(10)<=0
trigger1=ctrl||(stateno=52&&animtime=0)
trigger1=random<var(59)*50+100
trigger1=statetype=a||p2movetype=a&&p2stateno<=800
;--------------------------------------------------------------------------------
;-----------------------------------------------------------------
[state -1,マッハで駆け抜け(背面)];ランク4
type=changestate
value=1330
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(16))
triggerall=roundstate=2&&alive
triggerall=(stateno!=[120,155])||((stateno=[120,155])&&enemy(var(0)),time>(helper(21000),var(5)*1.0/3)&&(ctrl||movetype!=h))
triggerall=facing!=enemy(var(0)),facing||(facing=enemy(var(0)),facing&&p2dist x<0)
triggerall=var(58)!=5
triggerall=p2statetype!=l
triggerall=numenemy=1||(numenemy=2&&(enemy(0),alive+enemy(numenemy>1),alive)=1)||(numenemy=2&&(enemy,movetype=h||enemy(numenemy>1),movetype=h))
trigger1=ctrl
trigger1=enemy(var(0)),pos y+helper(21000),fvar(22)<(-50-55*(p2movetype=a))
trigger1=facing=enemy(var(0)),facing
trigger1=(p2movetype=a&&(enemy(var(0)),time=[1,3])&&enemy(var(0)),ctrl=0&&enemy(var(0)),animtime<=-10)||((p2stateno!=[120,155])&&p2movetype=h&&p2bodydist x<-50)
trigger1=random<var(59)*100
trigger1=enemy(var(0)),backedgebodydist=[0,30]
trigger1=!(p2name="Kung Fu Man"&&p2stateno=400)
;------------------------------------------------------------------------------
[state -1,マッハで駆け抜け(正面)];ランク4
type=changestate
value=1340
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(16))
triggerall=roundstate=2&&alive
triggerall=prevstateno!=1340
triggerall=(stateno!=[120,155])||((stateno=[120,155])&&enemy(var(0)),time>(helper(21000),var(5)*1.0/3)&&(ctrl||movetype!=h))
triggerall=var(58)!=5
triggerall=facing!=enemy(var(0)),facing||(facing=enemy(var(0)),facing&&p2dist x<0)
triggerall=p2statetype!=l
triggerall=numenemy=1||(numenemy=2&&(enemy(0),alive+enemy(numenemy>1),alive)=1)||(numenemy=2&&(enemy,movetype=h||enemy(numenemy>1),movetype=h))
trigger1=ctrl
trigger1=facing!=enemy(var(0)),facing
trigger1=enemy(var(0)),pos y+helper(21000),fvar(22)<(-50-55*(p2movetype=a))
trigger1=(p2movetype=a&&(enemy(var(0)),time=[1,3])&&enemy(var(0)),ctrl=0&&enemy(var(0)),animtime<=-10)||((p2stateno!=[120,155])&&p2movetype=h&&p2bodydist x>80)
trigger1=random<var(59)*100
trigger1=enemy(var(0)),backedgebodydist=[0,30]
trigger1=!(p2name="Kung Fu Man"&&p2stateno=400)
;------------------------------------------------------------------------------
[state -1,マッハで来た(背面)];ランク4
type=changestate
value=1320
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(16+8*(p2movetype=h)))
triggerall=roundstate=2&&alive
triggerall=p2statetype!=l
triggerall=enemy(var(0)),backedgebodydist>=0
triggerall=enemy(var(0)),ctrl=0
triggerall=(stateno!=[120,155])||((stateno=[120,155])&&enemy(var(0)),time>(helper(21000),var(5)*1.0/3)&&(ctrl||movetype!=h))
triggerall=enemy(var(0)),facing!=facing
triggerall=var(58)!=5
triggerall=enemy(var(0)),vel x*var(55)>=0||p2movetype=h
triggerall=numenemy=1||(numenemy=2&&(enemy(0),alive+enemy(numenemy>1),alive)=1)||(numenemy=2&&(enemy,movetype=h||enemy(numenemy>1),movetype=h))
trigger1=ctrl||stateno=100
trigger1=random<var(59)*30
trigger1=gametime%10=[0,4]
trigger1=p2movetype=a&&(enemy(var(0)),time=[1,4])&&enemy(var(0)),ctrl=0&&enemy(var(0)),animtime<=-10
trigger1=numhelper(21000)
trigger1=gametime<helper(21000),var(3)+4
trigger1=p2bodydist x>90
trigger1=enemy(var(0)),vel x*var(55)>=0
trigger1=p2stateno<1800
trigger1=!(p2name="Kung Fu Man"&&p2stateno=400)
trigger1=enemy(var(0)),numproj<=1&&(helper(21000),var(2)+1>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger2=!movecontact
trigger2=p2movetype=a
trigger2=enemy(var(0)),hitdefattr=sca,aa,at,ap
trigger2=p2bodydist x-var(44)*1*var(55)=[-14,70]
trigger2=(p2bodydist y=[-80,10])||!p2statetype=a
trigger2=enemy(var(0)),time>20-var(59)*2||var(59)>3&&enemy(var(0)),time>2||var(59)>4||random<2
trigger2=random<var(59)*40+50*(enemy(var(0)),time)
trigger2=p2stateno<1800
trigger3=(stateno=[200,460])&&(moveguarded>=1)
trigger3=p2movetype=a&&random<var(59)*100||(p2movetype=h&&enemy(var(0)),numproj=0&&(enemy(var(0)),numhelper<=helper(21000),var(2)||helper(30000),sysvar(4)=0)&&helper(21000),var(11)>30)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(moveguarded>=1)
trigger4=(p2movetype=a&&random<var(59)*100)||(p2movetype=h&&enemy(var(0)),numproj=0&&(enemy(var(0)),numhelper<=helper(21000),var(2)||helper(30000),sysvar(4)=0)&&helper(21000),var(11)>30)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger5=(!enemy(var(0)),ctrl=1&&p2movetype=a&&(enemy(var(0)),time=[1,4])&&enemy(var(0)),animtime<=-10)||(p2movetype=h&&enemy(var(0)),numproj=0&&(enemy(var(0)),numhelper<=helper(21000),var(2)||helper(30000),sysvar(4)=0)&&helper(21000),var(11)>27)
trigger5=prevstateno!=[1670,1680]
trigger5=enemy(var(0)),pos y+helper(21000),fvar(20)<-40
trigger6=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger6=random<30
trigger6=!enemy(var(0)),ctrl=1&&p2movetype=a&&(enemy(var(0)),time=[1,4])&&enemy(var(0)),animtime<=-10
trigger7=ctrl||stateno=100
trigger7=random<var(59)*50
trigger7=numhelper(21000)
trigger7=enemy(var(0)),numproj||enemy(var(0)),numhelper>helper(21000),var(2)||helper(30000),sysvar(4)!=0
trigger7=var(56)&&var(57)
trigger7=!enemy(var(0)),ctrl=1&&enemy(var(0)),animtime<=-10&&p2movetype!=i
trigger8=enemy(var(0)),hitdefattr=sca,aa,at&&enemy(var(0)),animtime<=-16&&p2movetype=a
trigger8=p2statetype!=a||enemy(var(0)),pos y+helper(21000),fvar(5)=[-50,10]
trigger8=p2stateno!=200&&p2stateno!=400
trigger8=random<var(59)*var(59)*30
trigger8=ctrl||((stateno=200)||(stateno=400))&&(animelemtime(5)>0)
[state -1,マッハで来た(背面)]
type=changestate
value=1320
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(16))
triggerall=roundstate=2&&alive
triggerall=p2statetype!=l
triggerall=enemy(var(0)),ctrl=0
triggerall=(stateno!=[120,155])||((stateno=[120,155])&&(ctrl||movetype!=h))
triggerall=enemy(var(0)),facing!=facing
triggerall=ctrl||stateno=100
triggerall=random<var(59)*var(59)*50
triggerall=gametime%10=[0,4+var(59)]
triggerall=enemy(var(0)),numproj<=3&&(helper(21000),var(2)+3>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0||(helper(30000),sysvar(4)!=0&&((var(51)!=[-90,140])||(var(52)!=[-140,70]))))||enemy(var(0)),time>30
trigger1=enemy(var(0)),name="Asagiri_Asagi"&&enemy(var(0)),authorname="stupa"
trigger1=enemy(var(0)),stateno=3200&&enemy(var(0)),time>0
trigger2=0&&p2name="Kakine_Tetoku"&&enemy(var(0)),authorname="Thermidor"
trigger2=((p2stateno=1111&&enemy(var(0)),time<3&&(enemy(var(0)),pos y>-49||enemy(var(0)),pos y+helper(21000),fvar(7)<-84))||p2stateno=1050||p2stateno=1103)&&enemy(var(0)),time<=7
trigger2=enemy(var(0)),time>0
trigger3=numhelper(21000)
trigger3=playeridexist(helper(21000),var(58))
trigger3=(helper(21000),var(52+gametime%3)!=0&&helper(21000),var(52+gametime%3)=playerid(helper(21000),var(58)),stateno)
trigger3=(helper(21000),var(52+gametime%3)=helper(21000),var(55))||(helper(21000),var(52+gametime%3)=helper(21000),var(56))||(helper(21000),var(52+gametime%3)=helper(21000),var(57))
[state -1,マッハで駆け抜け(背面)];ランク4
type=changestate
value=1330
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(16))
triggerall=roundstate=2&&alive
triggerall=enemy(var(0)),frontedgebodydist>60
triggerall=(stateno!=[120,155])||((stateno=[120,155])&&enemy(var(0)),time>(helper(21000),var(5)*1.0/3)&&(ctrl||movetype!=h))
triggerall=facing!=enemy(var(0)),facing||(facing=enemy(var(0)),facing&&p2dist x<0)
triggerall=p2statetype!=l
triggerall=numenemy=1||(numenemy=2&&(enemy(0),alive+enemy(numenemy>1),alive)=1)||(numenemy=2&&(enemy,movetype=h||enemy(numenemy>1),movetype=h))
triggerall=var(2)=0
trigger1=ctrl
trigger1=p2bodydist x=[-50,0]
trigger1=frontedgebodydist<20
trigger1=p2movetype=a&&(enemy(var(0)),time=[1,3])&&enemy(var(0)),ctrl=0&&enemy(var(0)),animtime<=-10
trigger1=random<var(59)*50
trigger1=!(enemy(var(0)),vel x*var(55)>4)&&backedgebodydist>129
trigger2=(stateno=1260)&&(animelemtime(5)>0)
trigger2=backedgebodydist>140
trigger2=inguarddist
trigger3=ctrl||stateno=100
trigger3=p2movetype=a
trigger3=enemy(var(0)),hitdefattr=sca,aa,at,ap||p2stateno>=1800||gametime>helper(21000),var(3)+15
trigger3=helper(21000),var(1)||helper(21000),var(0)
trigger3=random<var(59)*40+50*(enemy(var(0)),time)
trigger3=backedgebodydist>120
trigger3=p2bodydist x=[0,100]
trigger4=((stateno=200)||(stateno=400))&&(animelemtime(5)>1)
trigger4=!movecontact
trigger4=p2movetype=a
trigger4=enemy(var(0)),hitdefattr=sca,aa,at,ap||p2stateno>=1800||gametime>helper(21000),var(3)+15
trigger4=helper(21000),var(1)||helper(21000),var(0)
trigger4=random<var(59)*40+50*(enemy(var(0)),time)
trigger4=backedgebodydist>100
trigger4=p2bodydist x=[-20,100]
trigger5=(stateno=[200,460])&&(movecontact>=1)
trigger5=p2movetype=a
trigger5=helper(21000),var(1)||helper(21000),var(0)
trigger5=random<var(59)*40+50*(enemy(var(0)),time)
trigger5=backedgebodydist>100
trigger5=p2bodydist x=[-20,100]
[state -1,すごいキック奇ミス]
type=changestate
value=1330+10*((facing!=enemy(var(0)),facing&&enemy(var(0)),frontedgebodydist<enemy(var(0)),backedgebodydist)||(facing=enemy(var(0)),facing&&enemy(var(0)),frontedgebodydist>enemy(var(0)),backedgebodydist))
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(12))
triggerall=roundstate=2&&alive
triggerall=(numtarget(1240)=0)
triggerall=statetype!=a
triggerall=(gametime%6=[0,4])
triggerall=(stateno=1260)&&(prevstateno=1240)
triggerall=(animelemtime(5)>0)
triggerall=random<var(59)*100
triggerall=p2movetype!=h
triggerall=p2statetype!=a&&(p2bodydist x=[-100,100])||(p2bodydist x=[-99,99])&&(p2dist y>-21)||enemy(var(0)),time<5&&(p2bodydist x=[-80,80])||enemy(var(0)),ctrl
triggerall=inguarddist||p2movetype=a
triggerall=!ctrl
trigger1=enemy(var(0)),time<4&&enemy(var(0)),ctrl=0;enemy(var(0)),ctrl || enemy(var(0)),animtime>=-1
trigger2=enemy(var(0)),pos y+(vel y*(abs(enemy(var(0)),animtime))+const(movement.yaccel)*(abs(enemy(var(0)),animtime)-1)*(abs(enemy(var(0)),animtime))/2)>0
trigger3=enemy(var(0)),time<5&&(p2bodydist x=[-80,80])&&p2movetype=a
trigger4=(p2bodydist x=[-70,70])&&p2dist y>=0
trigger5=animelemtime(22)<enemy(var(0)),animtime
;------------------------------------------------------------------------------
[state -1,マッハで駆け抜け(正面)];ランク4
type=changestate
value=1340
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(16))
triggerall=roundstate=2&&alive
triggerall=prevstateno!=1340
triggerall=enemy(var(0)),backedgebodydist>60
triggerall=(stateno!=[120,155])||((stateno=[120,155])&&enemy(var(0)),time>(helper(21000),var(5)*1.0/3)&&(ctrl||movetype!=h))
triggerall=facing!=enemy(var(0)),facing||(facing=enemy(var(0)),facing&&p2dist x<0)
triggerall=numenemy=1||(numenemy=2&&(enemy(0),alive+enemy(numenemy>1),alive)=1)||(numenemy=2&&(enemy,movetype=h||enemy(numenemy>1),movetype=h))
triggerall=var(2)=0
trigger1=p2statetype!=l
trigger1=ctrl
trigger1=p2bodydist x!=[0,75]
trigger1=backedgebodydist<20
trigger1=p2movetype=h&&numtarget&&enemy(var(0)),ctrl=0&&enemy(var(0)),animtime<=-10
trigger1=random<var(59)*14
trigger1=p2movetype!=a
trigger2=(stateno=1260)&&(animelemtime(5)>0)
trigger2=(enemy(var(0)),backedgebodydist>140)
trigger2=inguarddist
trigger2=p2statetype!=l
trigger2=p2movetype!=a
trigger3=backedgebodydist<40
trigger3=p2statetype=l&&(p2bodydist x=[0,50])&&(p2bodydist y=0)
trigger3=ctrl
trigger3=p2movetype!=a
trigger4=ctrl||stateno=100
trigger4=p2movetype=a
trigger4=enemy(var(0)),hitdefattr=sca,aa,at,ap||p2stateno>=1800||gametime>helper(21000),var(3)+15
trigger4=helper(21000),var(1)||helper(21000),var(0)
trigger4=random<var(59)*40+50*(enemy(var(0)),time)
trigger4=enemy(var(0)),backedgebodydist>120
trigger4=p2bodydist x=[0,100]
trigger5=((stateno=200)||(stateno=400))&&(animelemtime(5)>1)
trigger5=!movecontact
trigger5=p2movetype=a
trigger5=enemy(var(0)),hitdefattr=sca,aa,at,ap||p2stateno>=1800||gametime>helper(21000),var(3)+15
trigger5=helper(21000),var(1)||helper(21000),var(0)
trigger5=random<var(59)*40+50*(enemy(var(0)),time)
trigger5=enemy(var(0)),backedgebodydist>100
trigger5=p2bodydist x=[-20,100]
trigger6=(stateno=[200,460])&&(movecontact>=1)
trigger6=p2movetype=a
trigger6=helper(21000),var(1)||helper(21000),var(0)
trigger6=random<var(59)*40+50*(enemy(var(0)),time)
trigger6=enemy(var(0)),backedgebodydist>100
trigger6=p2bodydist x=[-20,100]
trigger7=ctrl||stateno=100
trigger7=random<var(59)*40+50*(enemy(var(0)),time)
trigger7=numhelper(21000)
trigger7=enemy(var(0)),numproj||(enemy(var(0)),numhelper>helper(21000),var(2)||helper(30000),sysvar(4)!=0)
trigger7=var(56)&&var(57)
trigger7=(!enemy(var(0)),ctrl=1&&enemy(var(0)),animtime<=-10&&enemy(var(0)),backedgebodydist+var(47)*5*var(55)>100)||(enemy(var(0)),backedgebodydist+var(47)*5*var(55)>145)
;------------------------------------------------------------------------------
[state -1,マッハで来た(正面)];ランク4
type=changestate
value=1300
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(16))
triggerall=roundstate=2&&alive
triggerall=p2dist x>=100
triggerall=ctrl
triggerall=p2statetype!=l
triggerall=(stateno!=[120,155])||((stateno=[120,155])&&enemy(var(0)),time>(helper(21000),var(5)*1.0/3)&&(ctrl||movetype!=h))
triggerall=helper(30000),sysvar(4)=0;enemy(var(0)),numproj<=0&&helper(21000),var(2)>=enemy(var(0)),numhelper
triggerall=var(58)!=5
triggerall=numenemy=1||(numenemy=2&&(enemy(0),alive+enemy(numenemy>1),alive)=1)
triggerall=!(p2name="Kung Fu Man"&&p2stateno=400)
trigger1=statetype!=a
trigger1=enemy(var(0)),ctrl=0&&enemy(var(0)),time>7&&p2movetype=h&&enemy(var(0)),animtime<-10
trigger1=var(40)>3
trigger1=enemy(var(0)),vel x*var(55)<-3
trigger1=random<var(59)*25
trigger1=p2bodydist x>150
trigger1=p2bodydist y+helper(21000),fvar(8)<-70
;trigger2 = p2bodydist x > 110
;trigger2 = random<100-95*(statetype=A)
;trigger2 = (fvar(0) > (fvar(3)/100)*(40))
;trigger2 = p2movetype=I&&p2statetype!=A&&enemy(var(0)),ctrl=0&&(enemy(var(0)),animtime=[-10,-5])&&p2stateno!=[0,102]
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[state -1,空中投げ];ランク4
type=changestate
value=1650
triggerall=var(59)
triggerall=(fvar(0)>fvar(3)/5)
triggerall=roundstate=2&&alive
triggerall=statetype=a
triggerall=!inguarddist
triggerall=p2statetype=a
triggerall=p2movetype!=h
triggerall=p2dist x>=0
triggerall=p2bodydist x<10
triggerall=p2bodydist y=[-50,40]
triggerall=fvar(38)!=5
trigger1=ctrl
trigger1=random<10+50*var(59)*(p2stateno=[120,155])
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger2=(p2stateno=[120,155])||((fvar(1)/(1+var(10)))<0.2)
trigger2=random<var(59)*(40+40*((fvar(1)/(1+var(10)))<0.2))
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger3=(p2stateno=[120,155])||((fvar(1)/(1+var(10)))<0.2)
trigger3=random<var(59)*(40+40*((fvar(1)/(1+var(10)))<0.2))
trigger4=(stateno=1355)&&(movecontact>=1)
trigger4=(p2stateno=[120,155])||((fvar(1)/(1+var(10)))<0.2)
trigger4=random<var(59)*(40+40*((fvar(1)/(1+var(10)))<0.2))
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger5=(p2stateno=[120,155])||((fvar(1)/(1+var(10)))<0.2)
trigger5=random<var(59)*(40+40*((fvar(1)/(1+var(10)))<0.2))
trigger6=(stateno=1400)&&(movecontact>=1)
trigger6=(p2stateno=[120,155])||((fvar(1)/(1+var(10)))<0.2)
trigger6=random<var(59)*(40+40*((fvar(1)/(1+var(10)))<0.2))
[state -1,カンフースルー];投げ技
type=changestate
value=800
triggerall=var(59)
triggerall=(fvar(0)>0)
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2statetype!=a
triggerall=p2stateno!=[5000,5210]
triggerall=var(58)!=5;
triggerall=!enemy(var(0)),hitdefattr=SCA,AA,AT,AP
triggerall=!inguarddist
triggerall=p2dist x>=0
triggerall=power<2500||p2life<100||random<10
triggerall=ctrl||stateno=100&&time<10
triggerall=stateno!=100||stateno=100&&time<10
triggerall=!(enemy(var(0)),ctrl&&var(26+var(0))*5>7)
triggerall=enemy(var(0)),vel y=0 && enemy(var(0)),pos y=0
trigger1=random<var(59)*50+100+200*(p2stateno=[120,155])+100*(p2statetype=c)
trigger1=p2bodydist x=[0,7]
trigger1=p2bodydist x-var(47)*(1-helper(21000),var(59))*var(55)=[0,7]
trigger1=(p2statetype=s)||(p2statetype=c)
trigger1=p2movetype!=h
trigger2=p2bodydist x=[0,10]
trigger2=p2bodydist x-var(47)*(1-helper(21000),var(59))*var(55)=[0,10]
trigger2=(p2statetype=s)||(p2statetype=c)
trigger2=numtarget
trigger2=enemy(var(0)),ctrl!=1
trigger2=enemy(var(0)),hitover
trigger2=((fvar(1)/(1+var(10)))<0.2)||p2stateno=[120,159]
trigger2=random<var(59)*50
;AIガード関連----------------------------------------------------------------
[state -1,すごいガード]
type=changestate
value=900
triggerall=!ishelper
triggerall=roundstate=2&&alive
triggerall=var(59)
triggerall=(fvar(0)>12)
triggerall=numexplod(5)=0
triggerall=roundstate=2
triggerall=ctrl||(stateno=52&&animtime=0)||stateno=100
;triggerall=enemy(var(0)),numproj<=1||(helper(21000),var(2)+1>=enemy(var(0)),numhelper||helper(30000),sysvar(4)!=0&&(var(51)=[-40,60])&&(var(52)=[-80,60]))
triggerall=helper(30000),sysvar(4)!=0&&(var(51)=[-40,60])&&(var(52)=[-80,60])
trigger1=numhelper(21000)
trigger1=gametime>=(helper(21000),var(3)+30)
trigger1=fvar(0)>(50-var(40)*5)
trigger1=random<var(59)*100+100
trigger1=inguarddist||p2movetype=a
trigger2=var(56)&&helper(21000),var(1)
trigger2=(life*1.0/lifemax)*1000<random
trigger2=random<var(59)*50-40
trigger2=fvar(0)>(fvar(3)*15/100)
trigger2=enemy(var(0)),hitdefattr=sca,aa
trigger3=numhelper(21000)
trigger3=helper(21000),var(1)
trigger3=fvar(0)>(fvar(3)*80/100)
trigger3=(life*1.0)/(lifemax*1.0)<(p2life*1.2)/(enemy(var(0)),lifemax*1.3)
trigger3=random<var(59)*50-((1.0-fvar(0)/fvar(3))*100)
trigger3=var(40)>1
trigger3=var(56)&&helper(21000),var(1)
trigger3=enemy(var(0)),hitdefattr=sca,aa
trigger4=fvar(0)>(50-var(40)*5)
trigger4=random<300+var(59)*20
trigger4=numhelper(21000)
trigger4=playeridexist(helper(21000),var(58))
trigger4=(helper(21000),var(52+gametime%3)!=0&&helper(21000),var(52+gametime%3)=playerid(helper(21000),var(58)),stateno)
trigger4=(helper(21000),var(52+gametime%3)=helper(21000),var(55))||(helper(21000),var(52+gametime%3)=helper(21000),var(56))||(helper(21000),var(52+gametime%3)=helper(21000),var(57))
[state -1,ガーキャン]
type=changestate
value=500
triggerall=var(59)
triggerall=statetype!=a
triggerall=power>=500;ゲージ消費
triggerall=fvar(0)>=(fvar(3)/2)
triggerall=(stateno=151)||(stateno=153)
triggerall=p2stateno<1540
triggerall=p2bodydist x=[-40,40]
triggerall=p2bodydist y>-100
triggerall=roundstate=2&&alive
;triggerall=enemy(var(0)),numproj<=1&&helper(21000),var(2)+1+(random<10)>=enemy(var(0)),numhelper
triggerall=helper(30000),sysvar(4)=0||helper(30000),sysvar(4)!=0&&!((var(51)=[-85,85])&&(var(52)=[-100,70]))
triggerall=fvar(38)!=5
triggerall=enemy(var(0)),hitdefattr=sca,aa,ap||(enemy(var(0)),animtime>-2&&(gethitvar(ctrltime)-time)>2)
triggerall=(statetype=s&&p2statetype=c)||(statetype=c&&p2statetype=a)||random<500
trigger1=var(40)=[4,9]
trigger1=fvar(0)>(fvar(3)/2+fvar(3)/9)
trigger1=random<var(59)*60-(4-var(40))*70
trigger2=var(40)=[1,3]
trigger2=fvar(0)>((fvar(3)*3)/4)
trigger2=(life*1.0)/(lifemax*1.0)<0.33
trigger2=random<var(59)*70
trigger3=var(40)>=10
trigger3=fvar(0)>((fvar(3)*2)/3)
trigger3=((p2life*1.0)/(enemy(var(0)),lifemax*1.0)<0.25)&&((life*1.0)/(lifemax*1.0)<0.33)
trigger3=random<var(59)*60
trigger4=backedgebodydist<30+80*((life*1.0/lifemax*1.0)<0.3)
trigger4=var(40)>=3
trigger4=random<var(59)*35
trigger4=fvar(0)>((fvar(3)*3)/8)
;===========================================================================
[state -1,ガード]
type=changestate
value=120
triggerall=!ishelper
triggerall=roundstate=2
triggerall=var(59)&&roundstate=2&&alive&&!ishelper&&playeridexist(helper(21000),var(58))
triggerall=2**9!=4096||!helper(200200200),sysvar(0)
triggerall=ctrl||(stateno=52&&animtime=0)||stateno=100
triggerall=fvar(0)>0
triggerall=!(enemy(var(0)),hitdefattr=sca,nt,st,ht)
triggerall=var(2)=0
triggerall=(stateno!=[120,140])||(stateno=140&&helper(21000),var(0)=1)||(stateno=140&&time=1)
trigger1=prevstateno=[120,140]
trigger1=helper(21000),var(1)||(helper(21000),var(0)=1&&p2movetype=a&&!inguarddist)
trigger1=stateno!=[120,140]
trigger2=inguarddist
trigger2=random<var(59)*var(59)*111+300||(p2movetype=a&&enemy(var(0)),time>8+(random%4)-(random%4))
trigger3=numhelper(21000)
trigger3=helper(21000),var(0)=1&&(random<(350+(var(59)*100)))
trigger3=!inguarddist&&p2movetype=a
trigger4=prevstateno=[5000,5270]
trigger5=1;(enemy(var(0)),numproj>=1&&(var(56)=1&&var(57)=1))||(((enemy(var(0)),numhelper>helper(21000),var(2))&&(var(56)=1&&var(57)=1)&&var(59)<2)||helper(30000),sysvar(4)!=0&&(var(51)=[-85,85])&&(var(52)=[-100,70]))
trigger5=helper(30000),sysvar(4)!=0&&(var(51)=[-85,85])&&(var(52)=[-100,70])
trigger6=numhelper(21000)
trigger6=helper(21000),var(4)&&helper(21000),var(1)
;---------------------------------------------------------------------------
[state -1,突進系対策ガード]
type=changestate
value=120
triggerall=!ishelper
triggerall=roundstate=2
triggerall=var(59)&&roundstate=2&&alive&&!ishelper&&playeridexist(helper(21000),var(58))
triggerall=2**9!=4096||!helper(200200200),sysvar(0)
triggerall=ctrl||(stateno=52&&animtime=0)||stateno=100
triggerall=!inguarddist
triggerall=(stateno!=[120,140])||stateno=140&&time=1
triggerall=random<var(59)*150||(p2movetype=a&&enemy(var(0)),time>8+(random%4)-(random%4))
triggerall=fvar(0)>0
triggerall=!(enemy(var(0)),hitdefattr=sca,nt,st,ht)
triggerall=var(2)=0
trigger1=(playerid(helper(21000),var(58)),vel x>1)||(playerid(helper(21000),var(58)),vel y>3)
trigger1=playerid(helper(21000),var(58)),hitdefattr=sc,aa
[state -1,p2nameガード]
type=changestate
value=120
triggerall=!ishelper
triggerall=roundstate=2
triggerall=var(59)&&roundstate=2&&alive&&!ishelper&&playeridexist(helper(21000),var(58))
triggerall=ctrl||(stateno=52&&animtime=0)||stateno=100
triggerall=(stateno!=[120,140])||stateno=140&&time=1
triggerall=random<var(59)*150
triggerall=fvar(0)>0
trigger1=enemy(0),name="raigu's Alucard"&&enemy(0),stateno=1800
trigger1=(enemy(0),animelem>=1)&&(enemy(0),animtime<-2)
trigger2=numenemy>1
trigger2=enemy(1),name="raigu's Alucard"&&enemy(1),stateno=1800
trigger2=(enemy(1),animelem>=1)&&(enemy(1),animtime<-2)
;------------------------------------------------------------------------------
[state -1,ゲージ溜め]
type=changestate
value=700-((10-var(40))*10>random)*505*(p2bodydist x>140)
triggerall=(roundstate=2)&&(var(59)!=0)&&(alive=1)
triggerall=!(inguarddist)
triggerall=(abs(fvar(0))<(fvar(3)/(3-((fvar(1)/(1+var(10)))<0.05))))||(abs(fvar(0))<(fvar(3)/(3-(fvar(0)<0))))||(p2bodydist x>=random+100)
triggerall=((fvar(0)<fvar(3)/2)||(((p2movetype=h)||(var(40)>=10))&&(power*1.0/powermax*1.0<1)))
triggerall=gametime%3=random%3
triggerall=ctrl&&statetype!=a
triggerall=(numtarget!=0)
triggerall=(p2bodydist x>150)||(target,statetype=a)||((target,movetype=h)&&(target,stateno=[200,4999]))
triggerall=power<powermax||fvar(0)<((fvar(3)/100)*85)||((power<powermax||fvar(0)<fvar(3))&&random<20)
triggerall=p2stateno!=5120
triggerall=numexplod(5)=0
triggerall=stateno!=52
triggerall=!(abs(p2bodydist x)<50&&p2bodydist y>-40)
trigger1=(p2dist x-(150+(enemy(var(0)),vel x)*36))*10>=random
trigger1=(fvar(1)/fvar(3)*1000)<=random
trigger2=(p2dist x-(150+(enemy(var(0)),vel x)*36))*10>=random
trigger2=(fvar(0)/fvar(3)*1000)<=random
trigger3=(numtarget(1640)!=0)||((fvar(1)/(1+var(10)))<0.05)||(fvar(0)<0)
trigger4=(numtarget(2800)!=0)||((fvar(1)/(1+var(10)))<0.05)||(fvar(0)<0)
trigger5=(numtarget(2900)!=0)||((fvar(1)/(1+var(10)))<0.05)||(fvar(0)<0)
trigger6=(numtarget(2700)!=0)||((fvar(1)/(1+var(10)))<0.05)||(fvar(0)<0)
trigger7=numtarget!=0
trigger7=(target,stateno<5000)&&(target,movetype=h)
trigger8=numtarget(500)!=0||((fvar(1)/(1+var(10)))<0.05)||(fvar(0)<0)
trigger9=numtarget(620)!=0||((fvar(1)/(1+var(10)))<0.05)||(fvar(0)<0)
trigger10=numtarget(1800)!=0||((fvar(1)/(1+var(10)))<0.05)||(fvar(0)<0)
trigger11=numtarget!=0
trigger11=target,stateno=[1381,1382]
trigger11=target,time<=30
;------------------------------------------------------------------------------
[state -1,]
type=changestate
value=45
triggerall=!ishelper
triggerall=var(59)
triggerall=fvar(0)>0
triggerall=statetype=a
triggerall=ctrl
triggerall=roundstate=2
triggerall=alive
triggerall=!inguarddist
triggerall=var(49)<1
triggerall=random<var(59)*40
triggerall=pos y<-1*const(movement.airjump.height)
triggerall=p2statetype!=l
trigger1=stateno=50
trigger1=anim=[44,46]
trigger1=p2dist y+enemy(var(0)),vel y<=-30
trigger1=p2movetype=h
trigger1=vel y>=0
trigger1=pos y<=-50
trigger2=stateno!=50
trigger2=vel y>=0
trigger2=stateno!=[41,43]
trigger2=p2dist y+enemy(var(0)),vel y<=-30+(-40*(stateno=1610))
;trigger1 = stateno = 50
;trigger1 = anim = [44,46]
;trigger1 = pos Y <= -50 ;■暴発するので高さ制限
;trigger2 = stateno != 50
;trigger2 = stateno != [41,43]
;trigger2 = statetype = A
[state ]
type=changestate
value=40+0*(var(46):=1)
triggerall=var(59)&&roundstate=2&&alive
triggerall=statetype!=a
triggerall=fvar(0)>0||var(59)=1
trigger1=enemy(var(0)),statetype=l
trigger1=p2bodydist x=[-7,40]
trigger1=!inguarddist
trigger1=random<=var(59)*40
trigger1=prevstateno!=52
trigger1=ctrl||stateno=100||stateno=106&&time>0
trigger1=time>0
trigger1=p2stateno!=5120
trigger1=backedgebodydist<40
[state ]
type=changestate
value=40+1*(movecontact>0)+1*(movecontact>0&&p2bodydist x-var(47)*5*var(55)>35)
triggerall=var(59)&&roundstate=2&&alive
triggerall=statetype!=a
triggerall=fvar(0)>0||var(59)=1
trigger1=enemy(var(0)),statetype!=l
trigger1=enemy(var(0)),movetype=i
trigger1=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)>=240-10*(gametime%20=random%20)
trigger1=!inguarddist
trigger1=random<=120-var(59)*20
trigger1=prevstateno!=52
trigger1=ctrl||stateno=100||stateno=106&&time>0
trigger2=prevstateno!=52
trigger2=p2statetype=a||(p2stateno=40&&random<170&&enemy(var(0)),time<=1)
trigger2=p2stateno<1000
trigger2=p2bodydist x-enemy(var(0)),vel x=[97,190]
trigger2=random>700
trigger2=enemy(var(0)),numproj=0
trigger2=numhelper(21000)
trigger2=helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0
trigger2=(p2dist y+helper(21000),fvar(7)*(p2movetype=h)=[-120,-42])||(p2stateno=40&&random<170&&enemy(var(0)),time<=1)
trigger2=enemy(var(0)),vel y=[-4,4-3*(enemy(var(0)),ctrl)]
trigger2=ctrl||stateno=100||stateno=106&&time>0
trigger2=!inguarddist
trigger3=enemy(var(0)),hitdefattr=sca,nt,st,ht
trigger3=backedgebodydist<30
trigger3=ctrl||stateno=100||stateno=106&&time>0
trigger4=p2bodydist x-(var(47)+const(velocity.jump.fwd.x))*(7-helper(21000),var(59))*var(55)<=49
trigger4=p2stateno=5061
trigger4=p2movetype!=a
trigger4=ctrl||stateno=100||stateno=106&&time>0
trigger5=(stateno=410&&p2statetype=a)||stateno=250
trigger5=movehit
trigger5=p2movetype=h&&p2stateno!=[120,159]
trigger5=random<var(59)*50
trigger6=stateno=220&&0
trigger6=movehit
trigger6=p2stateno!=[120,155]
trigger6=p2movetype=h
trigger6=random<var(59)*50+200
trigger7=p2movetype=h&&p2stateno!=[120,155]
trigger7=numhelper(21000)
trigger7=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
trigger7=(p2bodydist y=[-100,-70])&&enemy(var(0)),vel y<=-1
trigger7=ctrl||stateno=100||stateno=106&&time>0
trigger7=p2bodydist x=[-10,90]
trigger7=!enemy(var(0)),canrecover
trigger7=random<var(59)*10
;------------------------------------------------------------------------------
;AI ゲージ技
;------------------------------------------------------------------------------
[state -1,根性MAX　3ゲージ技根性LV5　2ゲージ技]
type=changestate
value=3200+200*(var(40)<5&&power>=3000)
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=var(40)<10;▲根性カウント10未満
triggerall=numexplod(7777)=0
triggerall=power>=2000;ゲージレベル2
triggerall=(fvar(0)>0)
triggerall=var(40)<7||(var(40)<=8&&random<20&&(gametime%120=random%120))||(var(40)=9&&power<=2100&&random<20&&(gametime%120=random%120))||(palno=10||palno=11||palno=12)
triggerall=power%1000<random||var(40)<3||((var(40)=[4,5])&&random<300)||(palno=10||palno=11||palno=12)
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)>150+200*enemy(var(0)),ctrl-370*(p2movetype=h&&enemy(var(0)),hitfall&&enemy(var(0)),canrecover=0)
triggerall=((p2stateno!=[1000,4999])||(p2movetype=h))
triggerall=!inguarddist
trigger1=ctrl
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[state -1,んんぅぉおおおお!　2ゲージ技]
type=changestate
value=3100
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=power>=2000;ゲージレベル2
triggerall=(fvar(0)>(fvar(3)/100)*(45))
triggerall=!(var(40)>=10&&power>2350)
triggerall=!(var(40)<5&&(power=[2000,2120]))
triggerall=!(var(40)=9&&power>2800)
triggerall=random<var(40)*50+var(40)*20*(ctrl=1)||(random<var(59)*30&&(numexplod(7777)!=0))
triggerall=p2statetype!=l
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)=[-50,54]
triggerall=p2bodydist y+helper(21000),fvar(8)=[-70,-30]
triggerall=!moveguarded
triggerall=!inguarddist
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15-6)
triggerall=var(58)!=5
triggerall=!((numtarget(1750)||numtarget(1755)||numtarget(1760))&&enemy(var(0)),vel y=0)
trigger1=stateno=[200,460]
trigger1=movecontact>=3
trigger1=(p2stateno!=[120,155])||p2statetype=a
trigger1=p2movetype=h
trigger1=var(59)>1
trigger1=random<var(59)*70
trigger2=stateno=2620&&(animelemtime(21)>=0);ctrl
trigger2=numtarget
trigger2=p2movetype=h
trigger2=random<var(59)*100
trigger3=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger3=p2statetype=a
trigger3=random<var(59)*80
trigger3=gametime%30=random%30
trigger3=p2bodydist y+helper(21000),fvar(8)<0
trigger4=ctrl
trigger4=enemy(var(0)),ctrl=0
trigger4=p2movetype=a&&(enemy(var(0)),animtime=[-9,-7])||p2movetype=h&&enemy(var(0)),canrecover=0||((p2stateno=[5200,5210])&&enemy(var(0)),time>15-6)
trigger4=random<var(59)*107
;------------------------------------------------------------------------------
[state -1,たいらんれいぶ！　2ゲージ技]
type=changestate
value=3000
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=power>=2000;ゲージレベル2
triggerall=fvar(0)>0
triggerall=(fvar(0)>(fvar(3)/100)*(45))||p2life<350*(fvar(1)/(1+var(10)))
triggerall=!(var(40)>=10&&power>2550)||p2life<350*(fvar(1)/(1+var(10)))||(((p2life*1.0/enemy(var(0)),lifemax*1.0)>0.55)&&random<var(59)*90)
triggerall=!(var(40)<5&&(power=[2000,2120]))||p2life<350*(fvar(1)/(1+var(10)))||random<50
triggerall=!(var(40)=9&&power>2900)||p2life<350*(fvar(1)/(1+var(10)))||(((p2life*1.0/enemy(var(0)),lifemax*1.0)>0.55)&&random<var(59)*90)
triggerall=random<var(40)*70||(numexplod(7777)!=0&&random<350)
triggerall=random<var(59)*170
triggerall=p2statetype!=l
triggerall=statetype!=a
triggerall=!inguarddist
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=var(58)!=5
triggerall=p2bodydist x>=0
triggerall=!numtarget(1750)||numtarget(1750)&&enemy(var(0)),vel y<0
trigger1=stateno=2620&&(animelemtime(21)>=0);ctrl
trigger1=numtarget
trigger1=p2movetype=h
trigger1=p2bodydist x-var(47)*(20-helper(21000),var(59))*var(55)=[0,140]
trigger1=p2dist x>=0
trigger1=!p2bodydist y||enemy(var(0)),pos y=[-70,-30]
trigger2=ctrl||stateno=100
trigger2=p2movetype=h&&numtarget(2600)
trigger2=p2bodydist x<100
trigger2=enemy(var(0)),pos y+helper(21000),fvar(5)=[-70,-20]
trigger3=stateno=210||stateno=240||stateno=410||stateno=440||stateno=225||stateno=220||stateno=850||stateno=250||stateno=260
trigger3=p2bodydist x-var(47)*(20-helper(21000),var(59))*var(55)=[0,100]
trigger3=p2statetype!=a||(p2bodydist y+helper(21000),fvar(20)=[-60,-30])
trigger3=movecontact
trigger3=p2statetype!=a&&p2movetype=h&&(p2stateno!=[120,159])||p2statetype=a&&p2movetype=h&&(enemy(var(0)),canrecover=0||(p2stateno=[120,159]))
trigger4=ctrl||stateno=100
trigger4=p2movetype=h&&helper(21000),var(11)>23||(p2statetype=a&&p2movetype=h&&enemy(var(0)),canrecover=0)
trigger4=p2bodydist x-var(47)*(20-helper(21000),var(59))*var(55)=[0,100]
trigger4=random<var(59)*50
trigger4=p2statetype!=a||(p2bodydist y+helper(21000),fvar(20)=[-60,-30+29*(enemy(var(0)),hitfall=0)])
trigger5=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger5=facing=enemy(var(0)),facing
trigger5=random<var(59)*50
trigger5=p2movetype=a&&p2stateno<500&&(enemy(var(0)),time=[0,2])&&enemy(var(0)),animtime<-23||p2movetype=h&&helper(21000),var(11)>23||(p2statetype=a&&p2movetype=h&&enemy(var(0)),canrecover=0)
trigger5=p2bodydist x-var(47)*(20-helper(21000),var(59))*var(55)=[0,100]
trigger5=p2statetype!=a||(p2bodydist y+helper(21000),fvar(20)=[-60,-30+29*(enemy(var(0)),hitfall=0)])
;------------------------------------------------------------------------------
[state -1,超・ライダーキック強弱兼用]
type=changestate
value=2800
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>=(fvar(3)/4))
triggerall=!(var(40)>=10&&power>=2210)||(random<50&&(life>(p2life+200)))||(power>2209&&var(40)>=10&&((p2life*1.0/enemy(var(0)),lifemax*1.0)>0.8)&&random<((p2life*1.0/enemy(var(0)),lifemax*1.0)*350))
triggerall=random<var(40)*50
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)
triggerall=statetype=a
triggerall=(-atan((p2dist y+helper(21000),fvar(16))/p2dist x-enemy(var(0)),vel x*16*var(55))*180/pi-ifelse(p2dist x-enemy(var(0)),vel x*16*var(55)>0,0,180))=[-50.1,-39.7]
triggerall=p2bodydist y+helper(21000),fvar(16)>=0
triggerall=p2bodydist x-var(47)*(16-helper(21000),var(59))*var(55)=[40,220]
triggerall=p2statetype!=l
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=var(58)!=5
trigger1=ctrl
trigger1=(enemy(var(0)),pos y+helper(21000),fvar(16)=[5,55])
trigger1=pos y<-30
trigger1=random<var(59)*38+25+((helper(21000),var(11)>24&&(p2stateno!=[120,159]))*var(59)*50)
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger2=!movecontact
trigger2=inguarddist
trigger2=p2movetype=a&&enemy(var(0)),hitdefattr=sca,aa
trigger2=p2bodydist x=[0,40]
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger3=p2movetype=a&&enemy(var(0)),hitdefattr=sca,aa
trigger4=(stateno=1355)&&(movecontact>=1)&&0
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)&&0
trigger6=(stateno=1400)&&(movecontact>=1)&&0
trigger7=ctrl
trigger7=numtarget(1470)
trigger7=random<var(59)*30+20
trigger8=anim=1245
trigger8=(animelemtime(15)<5)
trigger8=(prevstateno=1230)
trigger8=stateno=1240
trigger8=numtarget||(p2movetype=i&&enemy(var(0)),ctrl&&facing!=enemy(var(0)),facing&&random<40&&(p2stateno!=[120,159])||enemy(var(0)),hitdefattr=sca,aa,at,ap&&random<var(59)*77)
trigger8=numhelper(21000)
trigger8=helper(21000),var(11)>16
trigger8=backedgebodydist+vel x*5<=5||p2bodydist x=[0,50]
trigger8=random<var(59)*35+25+100*(helper(21000),var(11)>24)
;------------------------------------------------------------------------------
[state -1,超すごいげんこつ強弱兼用]
type=changestate
value=2900+0*(var(54):=0)
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>(fvar(3)/100)*(35))
triggerall=roundstate=2&&alive
triggerall=!(var(40)>=10&&power>=2100)||(p2life<=100)||random<=35
triggerall=random<var(40)*50
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)||(p2life<=100)
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=p2bodydist x-enemy(var(0)),vel x*var(55)<17
triggerall=1||var(54):=0
triggerall=1||var(54):=var(54)+((p2dist x>=0&&facing!=enemy(var(0)),facing||p2dist x<0&&facing=enemy(var(0)),facing)&&abs(p2dist x-enemy(var(0)),const(size.air.front))<=35)
triggerall=1||var(54):=var(54)+((p2dist x<0&&facing!=enemy(var(0)),facing||p2dist x>=0&&facing=enemy(var(0)),facing)&&abs(p2dist x-enemy(var(0)),const(size.air.back))<=35)
triggerall=var(54)
triggerall=p2bodydist y>0
triggerall=p2stateno!=[120,155]
triggerall=random<var(59)*60
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=gametime%10=random%10
triggerall=var(58)!=5
trigger1=ctrl
trigger1=p2movetype!=h||(p2life<=210)
trigger1=random<var(59)*50+150*(p2movetype=a)
trigger2=stateno=1600&&(movehit||animelemtime(10)>=0)&&p2movetype=h
trigger2=random<var(59)*50+25+100*(p2life<=210)
;------------------------------------------------------------------------------
[state -1,超すごいパンチ(物理)ゲージ版]
type=changestate
value=2000
triggerall=var(59)
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>(fvar(3)/100)*(35))
triggerall=roundstate=2&&alive
triggerall=!(var(40)>=10&&power>=2210)||(random<50&&(life>(p2life+200)))||(power>2209&&var(40)>=10&&((p2life*1.0/enemy(var(0)),lifemax*1.0)>0.8)&&random<((p2life*1.0/enemy(var(0)),lifemax*1.0)*350))
triggerall=random<var(40)*50
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)
triggerall=statetype!=a
triggerall=p2bodydist x=[0,140]
triggerall=p2statetype!=l
triggerall=(gametime%120=[0,20])||(gametime%120=[80,110])||(gametime%120=[40,45])
triggerall=(p2bodydist y+helper(21000),fvar(5)=[-70,-20])||p2statetype!=a
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=!(var(56)&&var(57))
triggerall=helper(21000),var(11)>2
triggerall=var(58)!=5
trigger1=ctrl||stateno=100
trigger1=enemy(var(0)),movetype=h
trigger1=p2statetype!=a||p2statetype=a&&enemy(var(0)),canrecover=0
trigger1=random<var(59)*30-10
trigger1=p2bodydist x=[110,140]
trigger1=random<5||(numtarget(2600))
trigger2=(stateno=[200,460])
trigger2=(moveguarded)||(movecontact&&p2movetype!=h)
trigger2=random<var(59)*70+50*(enemy(var(0)),time)
trigger3=(stateno=210||stateno=440||stateno=240)&&(movecontact>=2)
trigger3=random<var(59)*30+50*(movecontact)+300*(p2movetype!=h)
trigger4=(stateno=850)||(stateno=1310&&moveguarded)
trigger4=(movecontact>=1)
trigger4=random<var(59)*30+150*(p2stateno=[120,159])
trigger4=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)=[0,100]
trigger5=0;(stateno = 1260)&&(AnimElemTime(5) > 0)
trigger6=0;((stateno = 1420)||(stateno = 1440))&&(AnimElemTime(5) > 0)
trigger7=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger7=inguarddist&&p2movetype=a&&enemy(var(0)),time<5
trigger7=random<var(59)*80
trigger8=0;(stateno = 1000)||(stateno = 2000)
trigger8=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger9=0;(stateno = 1100)||(stateno = 2050)
trigger9=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超すごいパンチ(特殊)ゲージ版]
type=changestate
value=2050
triggerall=var(59)
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>(fvar(3)/100)*(35))
triggerall=roundstate=2&&alive
triggerall=!(var(40)>=10&&power>=2000)||(power>1999&&var(40)>=10&&((p2life*1.0/enemy(var(0)),lifemax*1.0)>0.8)&&random<((p2life*1.0/enemy(var(0)),lifemax*1.0)*350))
triggerall=random<var(40)*50
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)
triggerall=(random<1000-((power-1000)*2))||random<=2
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=(p2bodydist y+helper(21000),fvar(5)>-100&&(enemy(var(0)),hitfall=0||p2movetype!=h))||((p2bodydist y+helper(21000),fvar(5)=[-100,-21])&&enemy(var(0)),hitfall&&p2movetype=h)
triggerall=(gametime%120=[25,30])||(gametime%120=[60,70])
triggerall=(p2bodydist y+helper(21000),fvar(5)=[-70,-20])||p2statetype!=a
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=!(var(56)&&var(57))
triggerall=helper(21000),var(11)>2||p2stateno=[120,155]
triggerall=var(58)!=5
trigger1=ctrl||(stateno=1260)&&(animelemtime(5)>0)||(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger1=ctrl||(!ctrl&&numtarget)
trigger1=random<var(59)*35
trigger1=time
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[state -1,超すごいキック]
type=changestate
value=2400
triggerall=var(59)
triggerall=power>=1000;ゲージレベル１
triggerall=(fvar(0)>(fvar(3)/100)*(35))
triggerall=roundstate=2&&alive
triggerall=!(var(40)>=10&&power>=2000)||(power>1999&&var(40)>=10&&((p2life*1.0/enemy(var(0)),lifemax*1.0)>0.8)&&random<((p2life*1.0/enemy(var(0)),lifemax*1.0)*350))
triggerall=random<var(40)*50
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(10-helper(21000),var(59))*var(55)=[0,50]
triggerall=!p2bodydist y||(p2bodydist y+helper(21000),fvar(10)=[-60,-5])
triggerall=p2statetype!=l
triggerall=!inguarddist
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=var(58)!=5
trigger1=ctrl
trigger1=var(59)<3&&random<40
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger2=movecontact&&p2stateno=[120,155]
trigger2=p2statetype=a&&p2movetype=h&&enemy(var(0)),ctrl=0
trigger2=random<var(59)*30
trigger3=stateno=220||stateno=240||stateno=440
trigger3=(movecontact>=1&&p2statetype=a)||(movehit&&(p2stateno!=[120,155])&&p2movetype=h)
trigger3=random<var(59)*60
trigger4=(stateno=1310)
trigger4=(movecontact>=1)
trigger4=random<var(59)*50
trigger5=0;(stateno = 1260)&&(AnimElemTime(5) > 0)
trigger6=0;((stateno = 1420)||(stateno = 1440))&&(AnimElemTime(5) > 0)
trigger7=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger7=random<100&&animelemtime(10)=1
trigger8=0;(stateno = 1000)||(stateno = 2000)
trigger8=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger9=0;(stateno = 1100)||(stateno = 2050)
trigger9=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,超すごい蹴り上げ]
type=changestate
value=2300
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(35))
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=power>=1000;ゲージレベル１
triggerall=!(var(40)>=10&&power>=2000)||(power>1999&&var(40)>=10&&((p2life*1.0/enemy(var(0)),lifemax*1.0)>0.8)&&random<((p2life*1.0/enemy(var(0)),lifemax*1.0)*350))
triggerall=random<var(40)*50
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)
triggerall=gametime%20=random%20
triggerall=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)=[0,50]
triggerall=!p2bodydist y||(p2bodydist y+helper(21000),fvar(5)=[-60,-5])
triggerall=!inguarddist
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=var(58)!=5
trigger1=ctrl
trigger1=var(59)<3&&random<40
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger2=movecontact&&p2stateno=[120,155]
trigger2=p2statetype=a&&p2movetype=h&&enemy(var(0)),ctrl=0
trigger2=random<var(59)*30
trigger3=stateno=220||stateno=240||stateno=440
trigger3=(movecontact>=1&&p2statetype=a)||(movehit&&(p2stateno!=[120,155])&&p2movetype=h)
trigger3=random<var(59)*60
trigger4=(stateno=1310)
trigger4=(movecontact>=1)
trigger4=random<var(59)*50
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger5=random<10
trigger6=0;((stateno = 1420)||(stateno = 1440))&&(AnimElemTime(5) > 0)
trigger7=0;(stateno = [1300,1340])&&(AnimElemTime(10) >= 0)&&(stateno != 1310)
trigger8=0;(stateno = 1000)||(stateno = 2000)
trigger8=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger9=0;(stateno = 1100)||(stateno = 2050)
trigger9=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
;------------------------------------------------------------------------------
[state -1,ぶちかまし強];ダメージ0……？
type=changestate
value=2450
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回前")
triggerall=(command="強")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
;------------------------------------------------------------------------------
[state -1,ぶちかまし弱];ダメージ0……？
type=changestate
value=1850
triggerall=var(59)=0;★AIスイッチ
triggerall=(command="半回前")
triggerall=(command="弱")
triggerall=(fvar(0)>0)
triggerall=statetype!=a
trigger1=ctrl
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[state -1,超マッハ投げ(対空)ゲージ版]
type=changestate
value=2150
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=power>=1000;ゲージレベル１
triggerall=fvar(0)>(fvar(3)/100)*(40)
triggerall=!(var(40)>=10&&power>2000)
triggerall=!(var(40)=9&&power>2200)
triggerall=random<var(40)*50
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2statetype=a&&p2movetype!=h||p2statetype=a&&p2movetype=h&&enemy(var(0)),hitfall=0&&enemy(var(0)),canrecover=0
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=p2statetype=a&&p2bodydist y+helper(21000),fvar(20)<-20
triggerall=(-atan((p2dist y+helper(21000),fvar(7))/p2dist x)*180/pi-ifelse(p2dist x>0,0,180))=[23.8,62.5]
triggerall=(p2movetype!=a&&p2bodydist x>140&&!inguarddist)||(p2movetype=a&&(p2bodydist x-abs(var(47))*(20-helper(21000),var(59))*var(55)>110)&&(enemy(var(0)),animtime=[-23,19]))
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=random<800
triggerall=var(58)!=5
triggerall=p2movetype!=a||(p2movetype=a&&enemy(var(0)),facing=facing)
trigger1=ctrl||stateno=100
trigger1=random<var(59)*90
trigger1=time||random<50
trigger2=((stateno=200)||(stateno=400))&&0
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger3=stateno=210||stateno=440||stateno=240
trigger3=helper(21000),var(11)>6
trigger3=random<300+var(59)*10+50*(moveguarded)
trigger4=(stateno=850)||(stateno=1310)&&0
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger5=p2stateno=[120,155]
trigger5=random<50
[state -1,超マッハ投げ(地上)ゲージ版]
type=changestate
value=2100+50*(helper(21000),var(8+var(0))<=random)*(helper(21000),var(8+var(0))=[100,1000])+0*(var(45):=1)
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=power>=1000;ゲージレベル１
triggerall=fvar(0)>(fvar(3)/100)*(40)
triggerall=!(var(40)>=10&&power>2000)||((p2life*1.0/enemy(var(0)),lifemax*1.0)>=0.7&&power>1999)
triggerall=!(var(40)=9&&power>2200)||((p2life*1.0/enemy(var(0)),lifemax*1.0)>=0.7&&power>1999)
triggerall=random<var(40)*(50-30*(enemy(var(0)),ctrl))+10
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)||((p2life*1.0/enemy(var(0)),lifemax*1.0)>=0.7&&power>1999&&random<(500+200*(time>0)))
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2statetype!=a&&(p2stateno!=[40,44])||p2statetype=a&&p2movetype!=h||p2statetype=a&&p2movetype=h&&enemy(var(0)),hitfall=0&&enemy(var(0)),canrecover=0
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=(p2statetype!=a&&p2stateno!=40&&enemy(var(0)),vel y>=0)||(p2statetype=a&&(enemy(var(0)),pos y+helper(21000),fvar(20)>=0)&&enemy(var(0)),vel y>0&&enemy(var(0)),ctrl=0&&(p2stateno!=[120,159])&&(p2stateno!=[45,48]))
triggerall=(p2movetype!=a&&p2bodydist x>140&&!inguarddist)||(p2movetype=a&&(p2bodydist x-abs(var(47))*(20-helper(21000),var(59))*var(55)>110)&&(enemy(var(0)),animtime=[-23,19]))
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=var(58)!=5
triggerall=p2movetype!=a||(p2movetype=a&&enemy(var(0)),facing=facing)
triggerall=!((numtarget(1750)||numtarget(1755)||numtarget(1760))&&(p2stateno!=[120,159])&&p2movetype=h)
trigger1=ctrl||stateno=100
trigger1=random<var(59)*90
trigger1=time||random<50
trigger2=((stateno=200)||(stateno=400))&&0
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger3=stateno=210||stateno=440||stateno=240
trigger3=helper(21000),var(11)>6
trigger3=random<300+var(59)*10+50*(moveguarded)
trigger4=(stateno=850)||(stateno=1310)&&0
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger5=p2stateno=[120,155]
trigger5=random<50
[state -1,マッハ壁バン]
type=changestate
value=2600
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=power>=1000;ゲージレベル１
triggerall=fvar(0)>(fvar(3)/100)*(64)
triggerall=!(var(40)>=10&&power>2400)
triggerall=!(var(40)=9&&power>2500)
triggerall=random<(500+200*(time>0))
triggerall=random<var(40)*(50-30*(enemy(var(0)),ctrl))+10
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2bodydist y+helper(21000),fvar(20)>-50
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=((p2statetype!=a||p2bodydist y+helper(21000),fvar(7)>=0)&&p2movetype!=h)||(p2movetype=h&&(p2statetype!=a||(p2bodydist y+helper(21000),fvar(20)=[-49,-1])&&enemy(var(0)),vel y>=0))
triggerall=(p2movetype!=a&&p2bodydist x>140&&!inguarddist)||(p2movetype=a&&(p2bodydist x-abs(var(47))*(20-helper(21000),var(59))*var(55)>110)&&(enemy(var(0)),animtime=[-23,19]))
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=var(58)!=5
triggerall=p2movetype!=a
triggerall=!numtarget(2600)
trigger1=ctrl||stateno=100
trigger1=random<var(59)*90
trigger1=time||random<50
trigger2=((stateno=200)||(stateno=400))&&0
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger3=stateno=210||stateno=440||stateno=240
trigger3=helper(21000),var(11)>6
trigger3=random<300+var(59)*10+50*(moveguarded)
trigger4=(stateno=850)||(stateno=1310)&&0
trigger4=(movecontact>=1)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger5=p2stateno=[120,155]
trigger5=random<50
trigger6=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)&&0
trigger7=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)&&0
trigger8=(stateno=1000)||(stateno=2000)
trigger8=(movecontact>=1)||(animelemtime(26)>=0);■すごパ物理ヒットorﾌｫﾛｰｽﾙｰ開始時
trigger8=numtarget&&random<210&&var(59)>2&&p2movetype=h
trigger9=0
trigger9=(stateno=1100)||(stateno=2050)
trigger9=(animelemtime(28)>=0)||(numprojid(1100)>=1);■すごパ特殊発射後
trigger9=numtarget&&random<210&&var(59)>2&&p2movetype=h
;------------------------------------------------------------------------------
[state -1,噴火]
type=changestate
value=2700
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=power>=1000;ゲージレベル１
triggerall=fvar(0)>(fvar(3)/100)*(35)
triggerall=!(var(40)>=10&&power>2210)||((p2life<270*(fvar(1)/(1+var(10)))))
triggerall=random<var(40)*50||((p2life<270*(fvar(1)/(1+var(10))))&&random<400)
triggerall=((random<1000-power%1000)&&power<1400)||(power>=1400&&random<1000-var(40)*95)||((p2life<270*(fvar(1)/(1+var(10))))&&random<400)
triggerall=p2bodydist x-var(47)*(10-helper(21000),var(59))*var(55)=[-45,45]
triggerall=p2statetype!=l
triggerall=p2statetype!=a||(p2bodydist y+helper(21000),fvar(10)=[-100,-60])
triggerall=statetype!=a
triggerall=var(58)!=5
trigger1=ctrl||stateno=100&&time<10
trigger1=p2movetype=h
trigger1=p2statetype=a
trigger1=random<var(59)*25
trigger2=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger2=p2statetype=a&&p2movetype=h
trigger2=random<var(59)*30
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[state -1,根性注入]
type=changestate
value=2250
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)<fvar(3))
triggerall=power>=1000;ゲージレベル1
triggerall=var(40)>0;▲根性カウント消費
triggerall=(var(40)=10&&fvar(0)<0)||((var(40)=[5,9])&&(fvar(0)<0||fvar(0)<(fvar(3)/20)))||(var(40)<5&&(random<140+var(40)*10)&&(gametime%30=random%30))||(palno=8||palno=9||palno=11||palno=12)
triggerall=statetype!=a
triggerall=fvar(0)<fvar(3)/5
triggerall=p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)>150+200*enemy(var(0)),ctrl
triggerall=((p2stateno!=[1000,4999])||(p2movetype=h))
triggerall=!inguarddist
triggerall=gametime%10=[3,7]
triggerall=var(2)=0
trigger1=ctrl
[state -1,根性注入]
type=changestate
value=2250
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)<fvar(3))
triggerall=power>=1000;ゲージレベル1
triggerall=var(40)>0;▲根性カウント消費
triggerall=((fvar(0)<(fvar(3)*40/100))&&(gametime%30=random%30))||(palno=8||palno=9||palno=11||palno=12)
triggerall=p2life>50&&life<350
triggerall=var(40)>5
triggerall=statetype!=a
triggerall=!inguarddist
triggerall=gametime%10=[3,7]
triggerall=var(2)>0
trigger1=ctrl
;------------------------------------------------------------------------------
[state -1,根性キャンセル]
type=changestate
value=2200
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=fvar(0)>(fvar(3)/100)*(10)
triggerall=var(40)>0;▲根性カウント消費
triggerall=stateno!=2200
triggerall=stateno!=900
;--------------------------------------[投げバグ防止]
triggerall=stateno!=[3310,3330]
triggerall=stateno!=[2610,2620]
triggerall=stateno!=[1515,1520]
triggerall=stateno!=1535
triggerall=stateno!=810
triggerall=stateno!=305
;--------------------------------------
triggerall=ctrl=0
triggerall=(movetype!=h)&&(statetype!=l)&&(pos y>=0)
triggerall=var(40)>5||(var(40)>2&&(power=[2000,2345]))||(palno=8||palno=9||palno=11||palno=12)
triggerall=var(40)<10||(var(40)=10&&(power=[1000,1499]))||(palno=8||palno=9||palno=11||palno=12)
triggerall=(gametime%600=[0,30])||(gametime%600=[100,130])||(gametime%600=[250,330])||(gametime%600=[400,440])||(gametime%600=[490,560])||(gametime%600=[590,592])||(palno=8||palno=9||palno=11||palno=12)
triggerall=enemy(var(0)),time>3&&enemy(var(0)),animtime<=-5||(random<100&&p2dist x<=0)
triggerall=p2movetype=a
triggerall=p2bodydist x-var(47)*(10-helper(21000),var(59))*var(55)<=50
triggerall=(stateno!=[120,155])&&(stateno!=[900,950])&&stateno!=500&&stateno<2000&&stateno!=195&&(stateno!=1900||(stateno=1900&&animelemtime(26)>=2))&&(stateno=1800&&(!numprojid(1800)||var(10)>1)||stateno!=1800)
triggerall=var(2)=0
triggerall=var(55)>=0
trigger1=random<var(59)*30+var(59)*35*(movetype=a)+var(59)*35*(!ctrl)
;------------------------------------------------------------------------------
;AI EX ATK
;==============================================================================
; 必殺技
;==============================================================================
[state -1,空中すごパ(弱)];ランク5
type=changestate
value=1600
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>(fvar(3)/3))
triggerall=statetype=a
triggerall=p2bodydist y+helper(21000),fvar(10)=[-60,(0+(p2statetype=s)*40)]
triggerall=p2bodydist x-var(47)*(10-helper(21000),var(59))*var(55)=[10,140]
triggerall=!inguarddist
triggerall=p2statetype!=l
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=numtarget(1600)=0
triggerall=(pos y<-30)
triggerall=(gametime%5=random%5)
triggerall=frontedgebodydist>70
triggerall=var(59)<3&&random<100||var(59)>=3&&random<743
triggerall=p2movetype=h||random<15
triggerall=var(58)!=5
trigger1=ctrl
trigger1=(target,gethitvar(fall.recover)=0)||(helper(21000),var(11)>=15)
trigger2=(stateno=600)&&(animelemtime(5)>2)
trigger2=(target,gethitvar(fall.recover)=0)||(helper(21000),var(11)>=15)
;------------------------------------------------------------------------------
[state -1,空中すごパ(強)];ランク5
type=changestate
value=1620
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>(fvar(3)/3))
triggerall=statetype=a
triggerall=pos y+abs(vel y/2)*25<-10
triggerall=random<var(59)*200
triggerall=((pos y<-80)&&random<500)||random<abs(pos y)*7
triggerall=(-atan((p2dist y)/p2dist x)*180/pi-ifelse(p2dist x>0,0,180))=[-52.1,-9.8]
triggerall=((numtarget!=0)&&(gametime%5=random%5))||random<50
triggerall=p2bodydist x-var(47)*(25-helper(21000),var(59))*var(55)>170
triggerall=(p2dist y-helper(21000),fvar(25)=[10,150])
triggerall=p2statetype!=l
triggerall=fvar(38)!=5
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger2=helper(21000),var(11)>25
trigger2=(target,gethitvar(fall.recover)=0)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger3=(target,gethitvar(fall.recover)=0)
trigger4=(stateno=1355)&&(movecontact>=1)
trigger4=(target,gethitvar(fall.recover)=0)
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger5=(target,gethitvar(fall.recover)=0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger6=(target,gethitvar(fall.recover)=0)
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[state -1,ライダーキック];ランク5
type=changestate
value=1700
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>=(fvar(3)/4))
triggerall=statetype=a
triggerall=(-atan((p2dist y+helper(21000),fvar(16))/p2dist x-enemy(var(0)),vel x*16*var(55))*180/pi-ifelse(p2dist x-enemy(var(0)),vel x*16*var(55)>0,0,180))=[-54.1,-34.8]
triggerall=p2bodydist y+helper(21000),fvar(16)>=0
triggerall=p2bodydist x-var(47)*(16-helper(21000),var(59))*var(55)=[40,220]
triggerall=!inguarddist
triggerall=p2movetype!=a
triggerall=p2statetype!=l
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=var(58)!=5
trigger1=ctrl
trigger1=(enemy(var(0)),pos y+helper(21000),fvar(16)=[5,55])
trigger1=pos y<-30
trigger1=random<var(59)*25+25+((helper(21000),var(11)>24&&(p2stateno!=[120,159]))*var(59)*50)
trigger2=(stateno=600)&&(animelemtime(5)>0)&&0
trigger3=(stateno=[600,670])&&(movecontact>=1)&&0
trigger4=(stateno=1355)&&(movecontact>=1)&&0
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)&&0
trigger6=(stateno=1400)&&(movecontact>=1)&&0
trigger7=ctrl
trigger7=numtarget(1470)
trigger7=random<var(59)*30+20
trigger8=anim=1245
trigger8=(animelemtime(15)<5)
trigger8=(prevstateno=1230)
trigger8=stateno=1240
trigger8=numtarget
trigger8=numhelper(21000)
trigger8=helper(21000),var(11)>16
trigger8=backedgebodydist+vel x*5<=2
trigger8=random<var(59)*35+25+100*(helper(21000),var(11)>24)
;------------------------------------------------------------------------------
[state -1,近距離空中マッハ正面];ランク4
type=changestate
value=1355
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>=(fvar(3)/4))
triggerall=p2dist x<100
triggerall=p2bodydist x+backedgebodydist-var(47)*(33-helper(21000),var(59))*var(55)>=80
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=var(58)!=5
trigger1=ctrl
trigger1=p2movetype=a
trigger1=helper(21000),var(1)||helper(21000),var(0)
trigger1=random<var(59)*40+50*(enemy(var(0)),time)
trigger2=(stateno=600)&&(animelemtime(5)>1)
trigger2=!movecontact
trigger2=p2movetype=a
trigger2=helper(21000),var(1)||helper(21000),var(0)
trigger2=random<var(59)*40+50*(enemy(var(0)),time)
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger3=p2movetype=a
trigger3=helper(21000),var(1)||helper(21000),var(0)
trigger3=random<var(59)*40+50*(enemy(var(0)),time)
;------------------------------------------------------------------------------
[state -1,すごパ連打(物理)];ランク5
type=changestate
value=1030
triggerall=(roundstate=2)&&(var(59)!=0)&&(alive=1)
triggerall=!(inguarddist)&&(statetype!=a)
triggerall=fvar(0)>0
triggerall=(fvar(0)>=(fvar(3)/4))
triggerall=p2bodydist x-var(47)*(33-helper(21000),var(59))*var(55)=[0+7*((var(47)*var(55))<0&&p2bodydist y<-70),42]
triggerall=(p2bodydist y+helper(21000),fvar(30)=[-60,-21])||p2statetype!=a
triggerall=p2dist x>0
triggerall=p2statetype!=l
triggerall=var(58)!=5
trigger1=(stateno=[200,460])&&(movecontact>=1)&&p2movetype=h&&stateno!=410
trigger1=random<var(59)*40+55+(80*movehit*2*(movehit>1))
trigger1=helper(21000),var(11)>=30
trigger2=(stateno=[200,460])&&(moveguarded>=1)
trigger2=random<var(59)*40+var(59)*70*(p2statetype=c||p2statetype=a)
trigger2=helper(21000),var(11)>=30
trigger3=(stateno=850)||(stateno=1310)
trigger3=(movecontact>=1)
trigger3=helper(21000),var(11)>=30
trigger4=ctrl&&random<var(59)*40+50+120*(enemy(var(0)),canrecover=0&&p2statetype=a&&enemy(var(0)),hitfall=1)
trigger4=enemy(var(0)),canrecover=0&&p2statetype=a||enemy(var(0)),hitfall=1
trigger4=p2movetype=h
;------------------------------------------------------------------------------
[state -1,すごパ連打(特殊)];ランク5
type=changestate
value=1130
triggerall=(roundstate=2)&&(var(59)!=0)&&(alive=1)
triggerall=!(inguarddist)&&(statetype!=a)
triggerall=(fvar(0)>0)
triggerall=(fvar(0)>=(fvar(3)/4))
triggerall=p2bodydist x-var(47)*(30-helper(21000),var(59))*var(55)-vel x*10>=90
triggerall=p2dist x>0
triggerall=(p2bodydist y+helper(21000),fvar(30)=[-60,-1])||p2statetype!=a
triggerall=p2statetype!=l
triggerall=var(58)!=5
trigger1=stateno=210&&(movecontact>=2)&&p2movetype=h
trigger1=random<var(59)*80+55*(movehit*2)
trigger1=helper(21000),var(11)>=30
trigger2=(stateno=[200,460])&&(moveguarded>=1)
trigger2=random<var(59)*40
trigger2=helper(21000),var(11)>=30
trigger3=(stateno=850)||(stateno=1310)
trigger3=(movecontact>=1)
trigger3=helper(21000),var(11)>=30
trigger4=ctrl&&random<50
trigger4=enemy(var(0)),canrecover=0&&p2statetype=a||enemy(var(0)),hitfall=1
trigger4=p2movetype=h&&enemy(var(0)),ctrl=0
trigger4=helper(21000),var(11)>=30
[state -1,すごパ連打特殊]
type=changestate
value=1130-905*(p2bodydist x-var(47)*(25-helper(21000),var(59))*var(55)=[0,120])*(target,stateno=1381&&target,time<3||(target,stateno=[1705,1706])||target,stateno=1707&&target,time<12||target,stateno=970)
triggerall=(roundstate=2)&&(var(59)!=0)&&(alive=1)
triggerall=!(inguarddist)&&(statetype!=a)
triggerall=(fvar(0)>0)
triggerall=(fvar(0)>=(fvar(3)/5))
triggerall=prevstateno=1030||(stateno=1030&&(animelemtime(149)>=0))
triggerall=random<var(59)*200
triggerall=var(58)!=5
trigger1=ctrl
trigger1=numtarget(1030)!=0
trigger1=target(1030),statetype=a
trigger1=p2bodydist y+helper(21000),fvar(30)>=-100;(p2bodydist y + helper(21000),fvar(30) = [-100,-1])
[state -1,すごパ連打(特殊)];ランク5
type=changestate
value=1130
triggerall=(roundstate=2)&&(var(59)!=0)&&(alive=1)
triggerall=!(inguarddist)&&(statetype!=a)
triggerall=numpartner
triggerall=partner,alive=1
triggerall=(pos x<partner,pos x)&&facing=1||(pos x>partner,pos x)&&facing=-1
triggerall=(abs(pos x-partner,pos x)<p2dist x)||(enemy(var(0)),facing=facing)
triggerall=fvar(0)>0
triggerall=(fvar(0)>=(fvar(3)/3)*2)
triggerall=p2bodydist x-var(47)*(30-helper(21000),var(59))*var(55)-vel x*10>=90
triggerall=(p2bodydist y+helper(21000),fvar(30)=[-60,-1])||p2statetype!=a
triggerall=p2statetype!=l
triggerall=var(58)!=5
trigger1=ctrl&&var(59)>2
trigger1=random<var(59)*40-10+50*(enemy(var(0)),canrecover=0&&p2statetype=a||enemy(var(0)),hitfall=1)+50*(p2movetype=h&&enemy(var(0)),ctrl=0)+50*(helper(21000),var(11)>=30)
trigger1=(gametime%120=[10,30])||(gametime%120=[70,80])||(gametime%120=[100,105])||(gametime%120=[110,117])
;------------------------------------------------------------------------------
[state -1,電光石火・直];ランク5
type=changestate
value=1750
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(55))
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2stateno!=[5100,5120]
triggerall=roundstate=2&&alive
triggerall=p2statetype!=a||((p2bodydist y+helper(21000),fvar(16)>=0)&&!(p2movetype=h&&enemy(var(0)),hitfall))
triggerall=p2stateno!=40&&p2stateno!=45
triggerall=helper(21000),var(0)=0
triggerall=!(helper(21000),var(1)&&helper(21000),var(4))
triggerall=1||var(54):=0
triggerall=1||var(54):=var(54)+1*(enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0))*(helper(21000),var(1)=1&&helper(21000),var(6)=0)
triggerall=1||var(54):=var(54)+1*((enemy(var(0)),numproj>0||helper(21000),var(2)<enemy(var(0)),numhelper)&&p2movetype!=a&&helper(21000),var(1)=1&&helper(21000),var(6)=0)
triggerall=1||var(54):=var(54)+1*(helper(21000),var(1)=1&&helper(21000),var(6)=0&&helper(21000),var(7)<0&&helper(21000),var(7)>-2+2*(p2bodydist x<170))
triggerall=(var(54)!=0)||(helper(21000),var(1)=0&&(helper(21000),var(6)=0||helper(21000),var(6)=1))
triggerall=1||var(54):=0
triggerall=(stateno!=[120,140])||time>5
triggerall=(gametime%120=[0,30])||(gametime%120=[60,90])||(gametime%120=[100,110])
triggerall=!numtarget(2600)
triggerall=!numprojid(1750)||(numprojid(1750)&&random<210)
triggerall=var(58)!=5
triggerall=gametime<helper(21000),var(3)+10
triggerall=p2movetype!=a||p2movetype=a&&p2stateno<1500
triggerall=p2movetype!=a||p2movetype=a&&!enemy(var(0)),hitdefattr||p2movetype=a&&p2stateno<=800||enemy(var(0)),facing=facing&&p2movetype=a&&enemy(var(0)),time!=[(helper(21000),var(5)*1.0/2)-5,helper(21000),var(5)*2.0/3]
trigger1=ctrl||(stateno=1260)&&(animelemtime(5)>0)
trigger1=random<70-var(59)*5
trigger1=p2bodydist x>240
trigger1=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
trigger2=ctrl||(stateno=1260)&&(animelemtime(5)>0)
trigger2=random<var(59)*50
trigger2=p2bodydist x-var(47)*(14-helper(21000),var(59))*var(55)>140-10*(gametime%15=random%15)+20*(p2movetype!=h&&enemy(var(0)),vel x=[enemy(var(0)),const(velocity.walk.back.x),enemy(var(0)),const(velocity.walk.fwd.x)])
trigger2=1;enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
;------------------------------------------------------------------------------
[state -1,電光石火・斜];ランク5
type=changestate
value=1760
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(55))
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2stateno!=[5100,5120]
triggerall=roundstate=2&&alive
triggerall=p2statetype=a&&p2bodydist y+helper(21000),fvar(16)<0
triggerall=helper(21000),var(0)=0
triggerall=!(helper(21000),var(1)&&helper(21000),var(4))
triggerall=1||var(54):=0
triggerall=1||var(54):=var(54)+1*(enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0))*(helper(21000),var(1)=1&&helper(21000),var(6)=0)
triggerall=1||var(54):=var(54)+1*((enemy(var(0)),numproj>0||helper(21000),var(2)<enemy(var(0)),numhelper)&&p2movetype!=a&&helper(21000),var(1)=1&&helper(21000),var(6)=0)
triggerall=1||var(54):=var(54)+1*(helper(21000),var(1)=1&&helper(21000),var(6)=0&&helper(21000),var(7)<0&&helper(21000),var(7)>-2+2*(p2bodydist x<170))
triggerall=(var(54)!=0)||(helper(21000),var(1)=0&&(helper(21000),var(6)=0||helper(21000),var(6)=1))
triggerall=1||var(54):=0
triggerall=(stateno!=[120,140])||time>5
triggerall=(gametime%120=[15,35])||(gametime%120=[76,95])||(gametime%120=[100,110])
triggerall=(-atan((p2dist y+helper(21000),fvar(16))/(p2dist x-var(47)*(16-helper(21000),var(59))*var(55)))*180/pi-ifelse(p2dist x>0,0,180))=[26.8,62.5]
triggerall=!numtarget(2600)
triggerall=var(58)!=5
triggerall=gametime<helper(21000),var(3)+10
triggerall=p2movetype!=a||p2movetype=a&&p2stateno<1500
triggerall=p2movetype!=a||p2movetype=a&&!enemy(var(0)),hitdefattr||p2movetype=a&&p2stateno<=800
trigger1=ctrl||(stateno=1260)&&(animelemtime(5)>0)
trigger1=p2bodydist x-var(47)*(11-helper(21000),var(59))*var(55)>210
trigger1=random<70-var(59)*5
trigger1=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
trigger2=ctrl||(stateno=1260)&&(animelemtime(5)>0)
trigger2=random<var(59)*50
trigger2=p2bodydist x-var(47)*(14-helper(21000),var(59))*var(55)>140-10*(gametime%15=random%15)+20*(p2movetype!=h&&enemy(var(0)),vel x=[enemy(var(0)),const(velocity.walk.back.x),enemy(var(0)),const(velocity.walk.fwd.x)])
trigger2=1;enemy(var(0)),numproj=0&&helper(21000),var(2)>=enemy(var(0)),numhelper
;------------------------------------------------------------------------------
[state -1,空中電光石火・直];ランク5
type=changestate
value=1755
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(65))
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=p2stateno!=[5100,5120]
triggerall=roundstate=2&&alive
triggerall=p2statetype=a&&helper(21000),fvar(16)<0
triggerall=helper(21000),var(0)=0
triggerall=!(helper(21000),var(1)&&helper(21000),var(4))
triggerall=p2bodydist y+helper(21000),fvar(16)=[-90,70]
triggerall=1||var(54):=0
triggerall=1||var(54):=var(54)+1*(enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0))*(helper(21000),var(1)=1&&helper(21000),var(6)=0)
triggerall=1||var(54):=var(54)+1*((enemy(var(0)),numproj>0||helper(21000),var(2)<enemy(var(0)),numhelper)&&p2movetype!=a&&helper(21000),var(1)=1&&helper(21000),var(6)=0)
triggerall=1||var(54):=var(54)+1*(helper(21000),var(1)=1&&helper(21000),var(6)=0&&helper(21000),var(7)<0&&helper(21000),var(7)>-2+2*(p2bodydist x<170))
triggerall=(var(54)!=0)||(helper(21000),var(1)=0&&(helper(21000),var(6)=0||helper(21000),var(6)=1))
triggerall=1||var(54):=0
triggerall=(stateno!=[120,140])||time>5
triggerall=(gametime%120=[40,50])||(gametime%120=[90,110])||(gametime%120=[14,21])
triggerall=!numtarget(2600)
triggerall=var(58)!=5
triggerall=gametime<helper(21000),var(3)+10
triggerall=p2movetype!=a||p2movetype=a&&p2stateno<1500
triggerall=p2movetype!=a||p2movetype=a&&!enemy(var(0)),hitdefattr||p2movetype=a&&p2stateno<=800
trigger1=ctrl
trigger1=random<70-var(59)*5
trigger1=p2bodydist x>240
trigger1=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
trigger2=ctrl
trigger2=random<var(59)*40
trigger2=p2bodydist x-var(47)*(14-helper(21000),var(59))*var(55)>140-10*(gametime%15=random%15)+20*(p2movetype!=h&&enemy(var(0)),vel x=[enemy(var(0)),const(velocity.walk.back.x),enemy(var(0)),const(velocity.walk.fwd.x)])
trigger2=1;enemy(var(0)),numproj=0&&helper(21000),var(2)>=enemy(var(0)),numhelper
;------------------------------------------------------------------------------
[state -1,空中電光石火・斜];ランク5
type=changestate
value=1765
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(65))
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=p2stateno!=[5100,5120]
triggerall=roundstate=2&&alive
triggerall=helper(21000),var(0)=0
triggerall=!(helper(21000),var(1)&&helper(21000),var(4))
triggerall=1||var(54):=0
triggerall=1||var(54):=var(54)+1*(enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0))*(helper(21000),var(1)=1&&helper(21000),var(6)=0)
triggerall=1||var(54):=var(54)+1*((enemy(var(0)),numproj>0||helper(21000),var(2)<enemy(var(0)),numhelper)&&p2movetype!=a&&helper(21000),var(1)=1&&helper(21000),var(6)=0)
triggerall=1||var(54):=var(54)+1*(helper(21000),var(1)=1&&helper(21000),var(6)=0&&helper(21000),var(7)<0&&helper(21000),var(7)>-2+2*(p2bodydist x<170))
triggerall=(var(54)!=0)||(helper(21000),var(1)=0&&(helper(21000),var(6)=0||helper(21000),var(6)=1))
triggerall=1||var(54):=0
triggerall=(stateno!=[120,140])||time>5
triggerall=(gametime%120=[12,32])||(gametime%120=[86,105])||(gametime%120=[46,49])||(gametime%120=[70,77])
triggerall=(-atan((p2dist y+helper(21000),fvar(16))/(p2dist x-var(47)*(16-helper(21000),var(59))*var(55)))*180/pi-ifelse(p2dist x>0,0,180))=[-62.5,-26.8]
triggerall=!numtarget(2600)
triggerall=var(58)!=5
triggerall=gametime<helper(21000),var(3)+10
triggerall=p2movetype!=a
triggerall=enemy(var(0)),ctrl=0
trigger1=ctrl
trigger1=random<70-var(59)*5
trigger1=p2bodydist x-var(47)*(11-helper(21000),var(59))*var(55)>210
trigger1=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
trigger2=ctrl
trigger2=random<var(59)*40
trigger2=p2bodydist x-var(47)*(14-helper(21000),var(59))*var(55)>140-10*(gametime%15=random%15)+20*(p2movetype!=h&&enemy(var(0)),vel x=[enemy(var(0)),const(velocity.walk.back.x),enemy(var(0)),const(velocity.walk.fwd.x)])
trigger2=1;enemy(var(0)),numproj=0&&helper(21000),var(2)>=enemy(var(0)),numhelper
;------------------------------------------------------------------------------
[state -1,あさるとばいぱー];ランク5
type=changestate
value=1470
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>(fvar(3)/100)*(35))
triggerall=statetype!=a
triggerall=var(58)!=5
triggerall=!inguarddist
triggerall=p2statetype!=l
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=random<var(59)*77
triggerall=p2bodydist y+helper(21000),fvar(24)>=-100
trigger1=ctrl||(stateno=1260)&&(animelemtime(5)>0)
trigger1=prevstateno=1681||prevstateno=1671
trigger1=numtarget(1680)||numtarget(1681)||numtarget(1670)||numtarget(1671)
trigger1=target,stateno=960
trigger1=target,movetype=h
trigger1=p2bodydist x-var(47)*(22-4*(p2bodydist x<150)-helper(21000),var(59))*var(55)=[85,280]
;------------------------------------------------------------------------------
[state -1,ぐらんどばいぱー];ランク5
type=changestate
value=1450+20*(p2statetype=a||p2statetype=c&&p2movetype=a||((numtarget(1750)||numtarget(1755)||numtarget(1760))&&(p2stateno!=[120,159])&&p2movetype=h))
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(35))
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=roundstate=2&&alive
triggerall=enemy(var(0)),numproj=0&&helper(21000),var(2)>=enemy(var(0)),numhelper
triggerall=random<var(59)*40+10
triggerall=p2bodydist y+helper(21000),fvar(24)>=-100
triggerall=var(58)!=5
triggerall=!inguarddist
trigger1=(ctrl&&random<250)||stateno=100&&time<10
trigger1=helper(21000),var(1)&&enemy(var(0)),time<3&&p2movetype=a
trigger1=p2bodydist x-var(47)*(22-4*(p2bodydist x<150)-helper(21000),var(59))*var(55)=[125,280]
trigger2=(stateno=850)||(stateno=1310)
trigger2=(movecontact>=1)
trigger2=p2bodydist x-var(47)*(22-4*(p2bodydist x<150)-helper(21000),var(59))*var(55)=[125,280]
trigger3=(stateno=1260)&&(animelemtime(5)>0)
trigger3=p2bodydist x-var(47)*(22-4*(p2bodydist x<150)-helper(21000),var(59))*var(55)=[190,280]
trigger4=(stateno=1400)&&(movecontact>=1)
trigger4=p2bodydist x-var(47)*(22-4*(p2bodydist x<150)-helper(21000),var(59))*var(55)=[190,280]
trigger5=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger5=p2bodydist x-var(47)*(22-4*(p2bodydist x<150)-helper(21000),var(59))*var(55)=[195,280]
trigger6=0;(stateno = [1300,1340])&&(AnimElemTime(10) >= 0)&&(stateno != 1310)
;------------------------------------------------------------------------------
[state -1,昇雷];ランク5
type=changestate
value=1770+0*(var(54):=0)
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(30))
triggerall=(numprojid(1643)=0)&&(numprojid(1773)=0)
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2bodydist x-enemy(var(0)),vel x*var(55)<-1
triggerall=1||var(54):=0
triggerall=1||var(54):=var(54)+((p2dist x>=0&&facing!=enemy(var(0)),facing||p2dist x<0&&facing=enemy(var(0)),facing)&&abs(p2dist x-enemy(var(0)),const(size.air.front))<=25)
triggerall=1||var(54):=var(54)+((p2dist x<0&&facing!=enemy(var(0)),facing||p2dist x>=0&&facing=enemy(var(0)),facing)&&abs(p2dist x-enemy(var(0)),const(size.air.back))<=25)
triggerall=var(54)>0
triggerall=p2statetype=a
triggerall=enemy(var(0)),pos y>=-210+70*(gametime%30<20)
triggerall=enemy(var(0)),pos y<-abs(const(size.height))
triggerall=random<var(59)*60
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=gametime%15<var(59)*3
triggerall=var(58)!=5
trigger1=ctrl&&p2movetype!=h
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger2=var(59)>2
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger3=var(59)>2
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger4=var(59)>3
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger5=var(59)>3&&p2movetype!=h
trigger6=(stateno=1400)&&(movecontact>=1)
trigger6=var(59)>1
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger7=var(59)>4
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger8=p2movetype!=h&&var(59)>3||1
[state -1,降雷];ランク5
type=changestate
value=1780+0*(var(54):=0)
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(30))
triggerall=(numprojid(1643)=0)&&(numprojid(1773)=0)
triggerall=roundstate=2&&alive
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=p2bodydist x-enemy(var(0)),vel x*var(55)<-1
triggerall=1||var(54):=0
triggerall=1||var(54):=var(54)+((p2dist x>=0&&facing!=enemy(var(0)),facing||p2dist x<0&&facing=enemy(var(0)),facing)&&abs(p2dist x-enemy(var(0)),const(size.air.front))<=25)
triggerall=1||var(54):=var(54)+((p2dist x<0&&facing!=enemy(var(0)),facing||p2dist x>=0&&facing=enemy(var(0)),facing)&&abs(p2dist x-enemy(var(0)),const(size.air.back))<=25)
triggerall=var(54)>0
triggerall=p2bodydist y>0
triggerall=p2stateno!=[120,155]
triggerall=random<var(59)*60
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
triggerall=var(58)!=5
trigger1=vel y>=-3
trigger1=ctrl
trigger1=p2movetype!=h||(random<300*(time)&&(p2bodydist y+helper(21000),fvar(1)!=[-70,60]))||(enemy(var(0)),pos y+helper(21000),fvar(4)>=0&&p2statetype=a)
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger2=var(59)>2
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger3=var(59)>2
trigger4=(stateno=1355)&&(movecontact>=1)
trigger4=var(59)>3
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger5=var(59)>4
trigger6=(stateno=1400)&&(movecontact>=1)
trigger6=var(59)>1
;------------------------------------------------------------------------------
[state -1,すごいキック(攻)];ランク5
type=changestate
value=1200
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(16))
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2bodydist x-var(47)*(18-helper(21000),var(59))*var(55)=[35-25*(p2movetype=h)+12*(enemy(var(0)),vel x*var(55)<0&&facing!=enemy(var(0)),facing&&p2movetype!=h),70-var(26+var(0))*7*(enemy(var(0)),movetype!=h&&enemy(var(0)),ctrl=1)]
triggerall=(!p2bodydist y&&helper(21000),fvar(18)=0)||(p2bodydist y+helper(21000),fvar(18)=[-100,-5])
triggerall=(p2movetype=h||(p2stateno=[120,159])||p2movetype=i&&random<(570-p2bodydist x))||(((p2bodydist x-var(47)*(18-helper(21000),var(59))*var(55))*24>=random/1.7)&&(p2movetype=a||enemy(var(0)),ctrl||p2stateno<999))
triggerall=!inguarddist
triggerall=p2movetype!=a||((p2movetype=a&&(var(47)*var(55)>=0||facing=enemy(var(0)),facing)&&enemy(var(0)),animtime=[-20,-12])&&(enemy(var(0)),time>(helper(21000),var(5)/2.0))&&(p2bodydist x-var(47)*(18-helper(21000),var(59))*var(55)=[65,70]))
triggerall=prevstateno!=1200
triggerall=!numtarget(1200)
triggerall=var(58)!=5
triggerall=numhelper(7)
triggerall=helper(7),var(14)=0||((fvar(0)/fvar(3))>=0.85)||p2life<90||(numtarget(1670)||numtarget(1680))||random<2
trigger1=ctrl
trigger1=var(59)<3&&random<40
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger2=movecontact&&p2stateno=[120,155]
trigger2=p2statetype=a&&p2movetype=h&&enemy(var(0)),ctrl=0
trigger2=random<var(59)*30
trigger3=stateno=220||stateno=240||stateno=440
trigger3=(movecontact>=1&&p2statetype=a)||(movehit&&(p2stateno!=[120,155])&&p2movetype=h)
trigger3=random<var(59)*60
trigger4=(stateno=1310)
trigger4=(movecontact>=1)
trigger4=random<var(59)*50
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger5=random<100
trigger6=(stateno=1400)&&(movecontact>=1)
trigger6=(movecontact>=1&&p2statetype=a)||(movehit&&(p2stateno!=[120,155])&&p2movetype=h)
trigger6=random<var(59)*60
trigger7=0;((stateno = 1420)||(stateno = 1440))&&(AnimElemTime(5) > 0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)&&random<15+var(59)*50*(stateno=[1330,1340])-(enemy(var(0)),ctrl||(p2stateno=[100,101]))*var(59)*40
trigger9=ctrl
trigger9=p2statetype=a&&random<var(59)*70
;------------------------------------------------------------------------------
[state -1,ちょっとすごい対空パンチ];ランク5
type=changestate
value=1670
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(20))
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)=[-5,55]
triggerall=p2bodydist y=[-100,0]
triggerall=var(58)!=5&&var(55)>=0
triggerall=p2dist x>0
triggerall=p2stateno!=[120,155]
triggerall=enemy(var(0)),prevstateno!=[120,155]
triggerall=var(58)!=5
trigger1=ctrl||stateno=100&&time<10||(stateno=52&&animtime=0)
trigger1=p2bodydist y=[-100,-50]
trigger1=p2stateno!=[120,155]
trigger1=p2movetype!=h
trigger1=p2movetype=a||(p2movetype=i&&enemy(var(0)),ctrl=0&&(p2stateno=[180,1120]))
trigger1=random<var(59)*80+100+300*(p2movetype=a)
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger2=p2movetype=a&&!movecontact
trigger2=random<var(59)*40
trigger2=enemy(var(0)),time<2
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger3=p2movetype!=h
trigger3=p2stateno!=[120,155]
trigger3=enemy(var(0)),ctrl=0&&(enemy(var(0)),animtime=[-7,-4])||enemy(var(0)),pos y+helper(21000),fvar(6)<-10
trigger3=random<var(59)*180+100*(p2movetype=a)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger4=p2movetype!=h
trigger4=p2stateno!=[120,155]
trigger4=enemy(var(0)),ctrl=0&&(enemy(var(0)),animtime=[-7,-4])||enemy(var(0)),pos y+helper(21000),fvar(6)<-10
trigger4=random<var(59)*180+100*(p2movetype=a)
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger5=random<var(59)*30
trigger5=p2stateno!=[120,155]
trigger5=enemy(var(0)),ctrl=0&&(enemy(var(0)),animtime=[-7,-4])||enemy(var(0)),pos y+helper(21000),fvar(6)<-10||p2movetype=h&&helper(21000),var(11)>5
trigger6=(stateno=1400)&&(movecontact>=1)
trigger6=p2movetype!=h
trigger6=p2stateno!=[120,155]
trigger6=enemy(var(0)),ctrl=0&&(enemy(var(0)),animtime=[-7,-4])||enemy(var(0)),pos y+helper(21000),fvar(6)<-10
trigger6=random<var(59)*180+100*(p2movetype=a)
trigger7=0;((stateno = 1420)||(stateno = 1440))&&(AnimElemTime(5) > 0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger8=p2stateno!=[120,155]
trigger8=enemy(var(0)),ctrl=0&&(enemy(var(0)),animtime=[-7,-4])||enemy(var(0)),pos y+helper(21000),fvar(6)<-10
trigger8=random<var(59)*30
;------------------------------------------------------------------------------
[state -1,すごい対空パンチ]
type=changestate
value=1680+0*(var(54):=0)
triggerall=!ishelper
triggerall=var(59)
triggerall=(p2stateno<=5099&&p2statetype!=l)
triggerall=enemy(var(0)),vel x=[-3,3]
triggerall=(fvar(0)>(fvar(3)/100)*(25))
triggerall=statetype!=a
triggerall=statetype!=l
triggerall=roundstate=2&&alive
triggerall=p2dist y+helper(21000),fvar(9)<=0||p2statetype!=a
triggerall=var(58)!=5&&var(55)>=0
triggerall=p2dist x>0
triggerall=p2stateno!=[120,155]
triggerall=fvar(38)!=5
triggerall=(p2stateno!=[5200,5210])||((p2stateno=[5200,5210])&&enemy(var(0)),time>15)
trigger1=stateno=220||stateno=250||(stateno=240&&p2statetype=a)
trigger1=movehit
trigger1=p2bodydist x-var(47)*var(55)*(10-helper(21000),var(59))=[1,35]
trigger1=p2statetype!=c
trigger1=helper(21000),var(11)>9
trigger2=ctrl
trigger2=p2movetype!=h
trigger2=p2stateno!=[40,43]
trigger2=1||var(54):=0
trigger2=1||var(54):=var(54)+((p2bodydist x-var(47)*var(55)*(9-helper(21000),var(59))=[17,42])&&(p2dist y+helper(21000),fvar(9)=[-50,0])&&!enemy(var(0)),ctrl&&enemy(var(0)),animtime<-9)
trigger2=1||var(54):=var(54)+((p2bodydist x-var(47)*var(55)*(9-helper(21000),var(59))=[42,60])&&(p2dist y+helper(21000),fvar(9)=[-97,-50])&&!enemy(var(0)),ctrl&&enemy(var(0)),animtime<-9)
trigger2=1||var(54):=var(54)+((p2bodydist x-var(47)*var(55)*(10-helper(21000),var(59))=[60,80])&&(p2dist y+helper(21000),fvar(10)=[-130,-67])&&!enemy(var(0)),ctrl&&enemy(var(0)),animtime<-10)
trigger2=1||var(54):=var(54)+((p2bodydist x-var(47)*var(55)*(12-helper(21000),var(59))=[80,110])&&(p2dist y+helper(21000),fvar(12)=[-170,-110])&&!enemy(var(0)),ctrl&&enemy(var(0)),animtime<-12)
trigger2=var(54)
trigger2=p2statetype=c&&random<100&&enemy(var(0)),ctrl=0&&p2stateno>180||p2statetype=s&&enemy(var(0)),ctrl=0&&p2stateno>180||p2statetype=a
trigger2=prevstateno!=450
trigger2=random<var(59)*50+70
trigger2=p2stateno!=[120,155]
trigger2=p2movetype!=a&&!inguarddist&&enemy(var(0)),animtime<-8||p2movetype=a&&(enemy(var(0)),time<7&&p2stateno<1600||!enemy(var(0)),hitdefattr=sca,aa,at,ap&&p2stateno<1600&&(enemy(var(0)),animtime=[-11,-8])||helper(21000),var(7)<0&&p2stateno<1600)
trigger3=var(59)>1
trigger3=ctrl||stateno=100
trigger3=(p2movetype=a&&var(59)>3&&enemy(var(0)),time<6)||random<20
trigger3=p2bodydist x-var(47)*var(55)*(10-helper(21000),var(59))=[7,41]
trigger3=p2dist y=[-150,0]
trigger3=random<var(59)*50+70
trigger3=p2stateno<=1999
trigger3=(p2statetype=c&&random<100)||p2statetype=s
trigger3=p2stateno!=[120,155]
trigger4=stateno=[200,460]
trigger4=p2statetype=a
trigger4=random<var(59)*50+70
trigger4=(movehit>2&&random>600)
trigger4=p2bodydist x-var(47)*(10-helper(21000),var(59))*var(55)=[0,50]
trigger4=p2dist x>10
;------------------------------------------------------------------------------
[state -1,旋風];ランク5
type=changestate
value=1800
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=p2bodydist x-var(47)*(21-helper(21000),var(59))*var(55)=[-45,45]
triggerall=p2statetype!=l
triggerall=p2statetype!=a||(p2bodydist y+helper(21000),fvar(21)=[-100,-60])
triggerall=(fvar(0)>(fvar(3)/100)*(20))
triggerall=statetype!=a
triggerall=var(58)!=5
trigger1=ctrl||stateno=100&&time<10
trigger1=p2movetype=i
trigger1=(p2stateno=[0,22])||p2stateno=100
trigger1=random>980+var(59)*2
trigger1=((p2bodydist x-var(47)*var(55)=[32,42])||(p2bodydist x-var(47)*var(55)=[-42,-32]))&&p2statetype!=a&&(enemy(var(0)),ctrl||p2stateno<200)||p2statetype=a||!(enemy(var(0)),ctrl||p2stateno<200)
trigger2=0;((stateno = 200)||(stateno = 400)) 
trigger2=0;(AnimElemTime(5) > 0)
trigger3=(stateno=[200,460])&&(moveguarded>=1)
trigger3=stateno=210||stateno=240||stateno=450
trigger3=p2statetype=a&&random<var(59)*70
trigger4=(stateno=850)||(stateno=1310)
trigger4=(moveguarded>=1)
trigger4=p2statetype=a&&random<var(59)*40
trigger5=0;(stateno = 1260)&&(AnimElemTime(5) > 0)
trigger6=0;(stateno = 1400) && (movecontact >= 1)
trigger6=p2statetype=a&&random<var(59)*70
trigger6=random<var(59)*60
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)
trigger7=p2bodydist x-var(47)*(21-helper(21000),var(59))*var(55)=[-35,35]
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger8=p2statetype=a
trigger8=random<var(59)*80
;------------------------------------------------------------------------------
[state -1,すごパ(特殊)];ランク5
type=changestate
value=1100
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=p2bodydist x-var(47)*(10-helper(21000),var(59))*var(55)-var(26+var(0))*10*(enemy(var(0)),movetype!=h&&enemy(var(0)),statetype!=l)>140
triggerall=p2statetype!=l
triggerall=p2bodydist y+helper(21000),fvar(5)>-100
triggerall=fvar(0)>((fvar(3)/5)+((fvar(3)*10)/100))
triggerall=statetype!=a
triggerall=!inguarddist
triggerall=numhelper(21000)
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=(gametime%120=[25,50])||(gametime%120=[60,90])
triggerall=(enemy(var(0)),ctrl=1&&enemy(var(0)),time>1)||(enemy(var(0)),ctrl=0&&p2movetype!=a)
triggerall=!((p2stateno=[960,970])&&p2movetype=h)
triggerall=var(58)!=5||(var(58)=5&&enemy(var(0)),animtime<=-3)
triggerall=fvar(38)!=5
trigger1=ctrl||(stateno=1260)&&(animelemtime(5)>0)&&(numtarget)||(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)&&(numtarget)
trigger1=random<var(59)*10*(time+1)*(enemy(var(0)),time+1)
trigger1=time
;------------------------------------------------------------------------------
[state -1,すごパ(物理)];ランク5
type=changestate
value=1000
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=p2bodydist x-var(47)*(10-helper(21000),var(59))*var(55)=[120-30*(p2movetype=h&&p2statetype=a&&enemy(var(0)),pos y<-40&&enemy(var(0)),vel y<0),140]
triggerall=p2statetype!=l||(p2stateno=5120&&p2bodydist x>100&&enemy(var(0)),time<=3)
triggerall=fvar(0)>((fvar(3)/5)+((fvar(3)*10)/100))
triggerall=statetype!=a
triggerall=numhelper(21000)
triggerall=!inguarddist
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=(gametime%120=[0,20])||(gametime%120=[80,110])||(gametime%120=[40,45])
triggerall=(enemy(var(0)),ctrl=1&&enemy(var(0)),time>1)||(enemy(var(0)),ctrl=0&&p2movetype!=a)
triggerall=var(58)!=5||(var(58)=5&&enemy(var(0)),animtime<=-3)
triggerall=fvar(38)!=5
trigger1=ctrl||(stateno=1260)&&(animelemtime(5)>0)||(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger1=ctrl||(!ctrl&&numtarget)
trigger1=enemy(var(0)),vel x*var(55)<=enemy(var(0)),const(velocity.walk.fwd.x)
trigger1=p2bodydist y+helper(21000),fvar(27)>=-140
trigger1=random<var(59)*30-10
[state -1,すごパ(物理)];ランク5
type=changestate
value=1000
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=numtarget
triggerall=!numtarget(800)
triggerall=target,movetype=h&&target,statetype!=l
triggerall=p2bodydist x-var(47)*(27-helper(21000),var(59))*var(55)>20
triggerall=p2bodydist x-var(47)*(78-helper(21000),var(59))*var(55)<140
triggerall=p2statetype!=l||(p2stateno=5120&&p2bodydist x>100&&enemy(var(0)),time<=3)
triggerall=fvar(0)>((fvar(3)/8)+((fvar(3)*10)/100))
triggerall=statetype!=a
triggerall=numhelper(21000)
triggerall=!inguarddist
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=(gametime%120=[0,20])||(gametime%120=[80,110])||(gametime%120=[40,45])
triggerall=(enemy(var(0)),ctrl=1&&enemy(var(0)),time>1)||(enemy(var(0)),ctrl=0&&p2movetype!=a)
triggerall=var(58)!=5||(var(58)=5&&enemy(var(0)),animtime<=-3)
triggerall=fvar(38)!=5
triggerall=random<800-fvar(1)*1000
trigger1=ctrl||(stateno=1260)&&(animelemtime(5)>0)||(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger1=ctrl||(!ctrl&&numtarget)
trigger1=enemy(var(0)),vel x*var(55)<=enemy(var(0)),const(velocity.walk.fwd.x)
trigger1=(p2bodydist y+helper(21000),fvar(27)=[-140,-20])||(p2stateno!=[5000,5999])&&p2movetype=h&&p2bodydist y+helper(21000),fvar(27)<-140
trigger1=random<var(59)*49-10+((target,stateno!=[5000,5999])*200)
;------------------------------------------------------------------------------
[state -1,マッハ投げ];ランク4
type=changestate
value=1500
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>(fvar(3)/100)*(35))
triggerall=statetype!=a
triggerall=prevstateno!=[1500,1580]
triggerall=time
triggerall=random<var(59)*10+20*(time)+5*(enemy(var(0)),time)
triggerall=numhelper(21000)
triggerall=!inguarddist
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=gametime<helper(21000),var(3)+6
triggerall=(gametime%35=[0,5])||(gametime%35=[10,14])||(gametime%35=[25,27])
triggerall=!numtarget(2600)
triggerall=var(58)!=5
trigger1=ctrl
trigger1=p2bodydist x-abs(var(47))*(10-helper(21000),var(59))*var(55)-var(26+var(0))*10>160+25*(enemy(var(0)),time<=5)
trigger1=abs(enemy(var(0)),vel x*var(55))<=enemy(var(0)),const(velocity.walk.fwd.x)||p2movetype=h
trigger1=p2movetype!=a
trigger1=enemy(var(0)),vel y>=0
trigger1=enemy(var(0)),ctrl=0&&(p2stateno!=[100,101])
trigger1=p2statetype!=l||(p2stateno=[5101,5120])&&enemy(var(0)),time<5
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[state -1,すごいキック(攻)空中];ランク5
type=changestate
value=1220
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>fvar(3)*40/100)
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=p2bodydist x-var(47)*(18-helper(21000),var(59))*var(55)=[0,70]
triggerall=(p2bodydist y+helper(21000),fvar(18)=[-50,-5])
triggerall=pos y=[-40,-20]
triggerall=random<var(59)*30+20+150*(p2stateno=[120,156])+200*(movecontact&&p2movetype=h)
triggerall=!inguarddist
triggerall=p2movetype!=a
triggerall=stateno!=[120,155]
triggerall=fvar(38)!=5
triggerall=numhelper(7)
triggerall=helper(7),var(14)=0||((fvar(0)/fvar(3))>=0.7)||p2life<90||random<5
trigger1=ctrl
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger2=p2stateno=[120,155]
trigger2=p2movetype=h
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger3=p2movetype=h
trigger4=(stateno=1355)&&(movecontact>=1)
trigger4=p2movetype=h
trigger5=(stateno=[1430,1435])&&(animelemtime(5)>0)
trigger6=(stateno=1400)&&(movecontact>=1)
trigger6=p2movetype=h
;------------------------------------------------------------------------------
[state -1,すごいキック(奇)空中用];ランク5
type=changestate
value=1231
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(32))
triggerall=p2statetype!=l
triggerall=roundstate=2&&alive
triggerall=random<var(59)*100&&var(59)>1
triggerall=time*(enemy(var(0)),time+1)>10&&var(59)<4||time&&var(59)=4||var(59)>=5
triggerall=numhelper(21000)
triggerall=enemy(var(0)),numproj<=1&&(helper(21000),var(2)+1>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=(gametime%30=[0,5])||(gametime%30=[10,14])||(gametime%30=[25,27])
triggerall=p2statetype!=a||(p2statetype=a&&(enemy(var(0)),vel y=[-2,0]))
triggerall=p2movetype!=h||(p2movetype=h&&enemy(var(0)),pos y>-100)
triggerall=enemy(var(0)),ctrl=0
triggerall=p2stateno!=[120,159]
triggerall=var(58)!=5
trigger1=ctrl
trigger1=random<var(59)
trigger2=(stateno=600)&&(animelemtime(5)>0)
trigger2=p2movetype=a&&(enemy(var(0)),time=[1,2])&&enemy(var(0)),ctrl=0&&p2stateno<1500
trigger3=(stateno=[600,670])&&(movecontact>=1)
trigger3=p2movetype!=h
trigger4=(stateno=1355)&&(movecontact>=1)
trigger4=p2movetype!=h
trigger5=0;(stateno = [1430,1435])&&(AnimElemTime(5) > 0)
trigger6=0;(stateno = 1400) && (movecontact >= 1)
;------------------------------------------------------------------------------
[state -1,すごいキック(奇)];ランク5
type=changestate
value=1230
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(32))
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=roundstate=2&&alive
triggerall=random<var(59)*100&&var(59)>1||((stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)&&random<800)
triggerall=var(2)=0
triggerall=time*(enemy(var(0)),time+1)>(9-var(59))&&var(59)<4||time&&var(59)=4||var(59)>=5
triggerall=numhelper(21000)
triggerall=enemy(var(0)),numproj<=1&&(helper(21000),var(2)+1>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)||(p2name="Nanoha_Takamachi"&&p2stateno=2731)
triggerall=(gametime%30=[0,5])||(gametime%30=[10,14])||(gametime%30=[25,27])||(p2movetype=a&&(movetype=a||stateno>1000)&&enemy(var(0)),time<=time&&enemy(var(0)),animtime<-16&&enemy(var(0)),pos y>-70)
triggerall=p2statetype!=a||(p2statetype=a&&(helper(21000),fvar(8)=[-10,13]))
triggerall=enemy(var(0)),vel x=[-6.4,6.4]
triggerall=p2movetype!=h||(p2movetype=h&&enemy(var(0)),pos y>-100)
triggerall=var(58)!=5
triggerall=enemy(var(0)),ctrl=0
triggerall=p2stateno!=[120,159]
triggerall=p2movetype=h||enemy(var(0)),animtime<-9||enemy(var(0)),animtime>0
trigger1=ctrl
trigger1=random<var(59)
trigger2=ctrl||(((stateno=200)||(stateno=400))&&(animelemtime(5)>0))
trigger2=p2movetype=a&&(enemy(var(0)),time<=time||enemy(var(0)),time<=3)&&enemy(var(0)),ctrl=0&&(p2stateno<1500||(p2stateno!=var(50)&&var(50)!=0&&!enemy(var(0)),hitdefattr=sca,aa,at,ap))||(p2name="Nanoha_Takamachi"&&p2stateno=2731)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger3=p2movetype!=h
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)
trigger4=p2movetype!=h
trigger5=(stateno=1260)&&(animelemtime(5)>0)
trigger5=random<var(59)*100
trigger5=p2movetype=a&&(enemy(var(0)),time<=time||enemy(var(0)),time<=3)&&enemy(var(0)),ctrl=0&&(p2stateno<1500||(p2stateno!=var(50)&&var(50)!=0&&!enemy(var(0)),hitdefattr=sca,aa,at,ap))||(p2name="Nanoha_Takamachi"&&p2stateno=2731)
trigger5=inguarddist
trigger6=(stateno=1400)&&(movecontact>=1)
trigger6=p2movetype!=h
trigger7=0;((stateno = 1420)||(stateno = 1440))&&(AnimElemTime(5) > 0)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)&&random<10+70*var(59)*(inguarddist)+50*var(59)*(enemy(var(0)),facing!=facing)*(p2movetype=a)
trigger9=(p2name="Accelerator"&&enemy(var(0)),authorname="otika"&&(p2stateno=[1000,1030])&&enemy(var(0)),time<=time)
trigger9=(((stateno=200)||(stateno=400))&&(animelemtime(5)>0))
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[state -1,すごい震脚];ランク5
type=changestate
value=1900-900*(random<p2bodydist x-var(47)*(62-helper(21000),var(59))*var(55))
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(16))
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=(numprojid(1900)=0)&&(numprojid(1950)=0)
triggerall=!inguarddist
triggerall=numhelper(21000)
triggerall=!helper(21000),var(1)
triggerall=p2movetype=h&&p2stateno!=[120,159]
triggerall=var(58)!=5
triggerall=p2dist x>0
triggerall=p2bodydist x-var(47)*(62-helper(21000),var(59))*var(55)=[-50,110]
triggerall=p2bodydist y+(enemy(var(0)),vel y*62+helper(21000),fvar(0)*(62-1)*62/2)=[-70,0]
triggerall=!numtarget(2600)
trigger1=ctrl
trigger1=p2statetype=a
trigger1=enemy(var(0)),canrecover=0||numtarget(1200)||numtarget(1800)
trigger1=(random<10)||(((fvar(1)/(1+var(10)))<0.1)&&random<var(59)*40)
;------------------------------------------------------------------------------
;-------------------------------------------[マッハ移動から追加攻撃へ移行]
[state 1300,追加攻撃ステートへ移行]
type=changestate
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2movetype!=h||(p2stateno=2406&&p2movetype=h)
triggerall=p2stateno!=[5101,5120]
triggerall=(p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)=[-10,50])||(p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)<=0&&(p2bodydist x=[-10,10]))
triggerall=(p2bodydist y+helper(21000),fvar(7)=[-60,0])||p2statetype!=a
triggerall=(animelemtime(5)>=0)&&(animelemtime(17)<0)
triggerall=!inguarddist||(abs(enemy(var(0)),animtime)<abs(animtime))||(p2stateno=2406&&p2movetype=h)
triggerall=random<var(59)*var(59)*50+100
triggerall=enemy(var(0)),facing=facing||(p2stateno=2406&&p2movetype=h)
triggerall=enemy(var(0)),ctrl=0||(p2stateno=2406&&p2movetype=h)
triggerall=enemy(var(0)),animtime<-9||(p2stateno=2406&&p2movetype=h)
triggerall=var(58)!=5
trigger1=(stateno=1300)
trigger2=(stateno=1320)
value=1310
ctrl=0
;------------------------------------------------------------------------------
[state -1,コマ投げ];ランク4
type=changestate
value=1350
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(8))
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2dist x<100
triggerall=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)=[0,40]
triggerall=p2statetype!=a||p2bodydist y+helper(21000),fvar(7)=[-80,-1]
triggerall=var(58)!=5
triggerall=!inguarddist
triggerall=p2statetype!=l
triggerall=numtarget(210)=0||numtarget(210)&&enemy(var(0)),movetype=h&&(enemy(var(0)),stateno!=[960,970])
trigger1=(stateno=850&&random<90)||(stateno=1310)
trigger1=(movecontact>=1)
trigger1=p2movetype=h&&p2stateno!=[120,155]
;==============================================================================
; 地上特殊攻撃
;==============================================================================
;------------------------------------------------------------------------------
[state -1,直突き]
type=changestate
value=220
triggerall=var(59)
triggerall=(fvar(0)>0)
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(12-helper(21000),var(59))*var(55)-vel x*10=[49,(70-(movecontact>0)*20)]
triggerall=p2statetype!=a
triggerall=p2statetype!=l
triggerall=p2movetype!=a
triggerall=!inguarddist
triggerall=random<var(59)*40+10
triggerall=p2dist x>0
triggerall=var(58)!=5
triggerall=!numtarget(260)
triggerall=p2movetype!=h||(movecontact&&p2movetype=h&&helper(21000),var(11)>7)
trigger1=var(59)=1&&(ctrl||stateno=100&&time<10)
trigger2=(stateno=[200,440])&&(movecontact>=1)
trigger2=(stateno!=220)&&(stateno!=250)
[state -1,蹴り上げ]
type=changestate
value=250
triggerall=var(59)
triggerall=(fvar(0)>0)
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(14-helper(21000),var(59))*var(55)-vel x*12=[0+(var(48)*15),60]
triggerall=!p2bodydist y||(p2bodydist y+helper(21000),fvar(14)=[-80,-1+10*(enemy(var(0)),hitfall=0)])
triggerall=enemy(var(0)),vel y>1
triggerall=p2statetype!=l
triggerall=p2movetype!=a
triggerall=random<var(59)*40+10+900*((p2stateno=[820,821])&&p2movetype=h)
triggerall=p2dist x>0
triggerall=!inguarddist
triggerall=var(58)!=5
trigger1=(ctrl||stateno=100&&time<10)&&random<100
trigger2=(stateno=[200,440])&&(movecontact>=1)
trigger2=(stateno!=220)&&(stateno!=250)
trigger3=(stateno=850)
trigger3=(movecontact>=1)
[state -1,投げ後追撃]
type=changestate
value=200+50*(var(54)=[200,420])+200*(var(54)=[421,620])+230*(var(54)=[621,720])+210*(var(54)=[721,980])
triggerall=var(59)
triggerall=(fvar(0)>fvar(3)/10)
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(14-helper(21000),var(59))*var(55)-vel x*12=[0,60]
triggerall=p2statetype!=l
triggerall=p2stateno=[820,821]
triggerall=p2movetype=h
triggerall=prevstateno=800
triggerall=random<999
triggerall=p2dist x>0
triggerall=!inguarddist
triggerall=var(58)!=5
trigger1=(ctrl||stateno=100&&time<10)
trigger1=1||var(54):=0
trigger1=1||var(54):=random
[state -1,ちょっとすごいパンチ]
type=changestate
value=225
triggerall=var(59)
triggerall=(fvar(0)>0)
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(25-helper(21000),var(59))*var(55)=[90,120]
triggerall=(p2bodydist y+helper(21000),fvar(25)=[-50,-35])||p2statetype=s
triggerall=roundstate=2&&alive
triggerall=p2statetype!=l
triggerall=random<var(59)*60
triggerall=((p2movetype=a&&enemy(var(0)),movecontact=0||(p2movetype=i&&p2stateno>170))&&(enemy(var(0)),animtime=[-27,-25])&&enemy(var(0)),time>helper(21000),var(5)*1.0/2)||random<10||(p2movetype=h&&(p2stateno!=[120,159]))
triggerall=enemy(var(0)),prevstateno!=5120
triggerall=p2dist x>0
triggerall=var(58)!=5&&var(55)>=0
triggerall=!numtarget(260)
trigger1=ctrl||stateno=120||(stateno=[130,131])||stateno=100&&time<10
[state -1,すごいかかと落とし];ランク0
type=changestate
value=260
triggerall=var(59)
triggerall=(fvar(0)>0)
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(25-helper(21000),var(59))*var(55)=[-7+(var(48)*25),85]
triggerall=p2bodydist y+helper(21000),fvar(17)=[-82,-1]
triggerall=enemy(var(0)),canrecover=0
triggerall=enemy(var(0)),hitfall=1
triggerall=roundstate=2&&alive
triggerall=p2statetype!=l
triggerall=p2movetype!=a
triggerall=numhelper(7)
triggerall=random<var(59)*30+90+260*(helper(7),var(14)>0)
triggerall=enemy(var(0)),prevstateno!=5120
triggerall=p2dist x>0
triggerall=var(58)!=5
trigger1=ctrl
[state -1,バクステっぽいショートジャンプ];バクステと違ってctrl=1になるし？
type=changestate
value=40+0*(var(46):=105)
triggerall=var(59)!=0
triggerall=statetype!=a
triggerall=p2statetype=l
triggerall=random<=var(59)*35
triggerall=ctrl||stateno=100||stateno=21
triggerall=p2bodydist x=[0,99]
triggerall=backedgebodydist>=40
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=!inguarddist
triggerall=enemy(var(0)),time>2
triggerall=enemy(var(0)),ctrl=0
trigger1=p2stateno=5201||((p2stateno=[5101,5119])&&(enemy(var(0)),vel x=[-1,1]))||((p2stateno=5120)&&(enemy(var(0)),vel x=[-1,1])&&enemy(var(0)),animtime<=-24)
[state -1,ジャンプキャンセル]
type=changestate
value=42+1*((moveguarded>0&&helper(21000),var(11)<6)||(moveguarded>0&&p2bodydist x<=11&&backedgebodydist>=70));+3*(moveguarded>0);40;+0*(var(46):=105); 43
triggerall=var(59)>0&&alive&&roundstate=2
triggerall=(stateno=[200,450])
triggerall=numhelper(21000)
triggerall=backedgebodydist>=70&&moveguarded||movehit&&p2movetype=h||helper(21000),var(11)>=6
triggerall=!(!inguarddist&&var(57)=1)
triggerall=(movecontact&&(p2stateno=[120,159])&&(helper(21000),var(11)>=2))||(movehit>2&&p2movetype=h&&(p2stateno=[5000,5999]))||(movehit&&p2movetype=h&&p2stateno=960&&stateno=440)
triggerall=random<var(59)*31+50+20*(movecontact)+200*(!moveguarded)+140*(helper(21000),var(11)>=10)
triggerall=(gametime%21=[0,7])||(gametime%21=[14,18])||(gametime%21=[9,10])||(!moveguarded||helper(21000),var(11)>=10)
trigger1=stateno=210||stateno=240||stateno=440||stateno=220||stateno=225||stateno=430&&moveguarded
[state -1,走る]
type=changestate
value=100
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=var(58)!=5
triggerall=statetype!=a
triggerall=statetype!=l
triggerall=movetype!=h
triggerall=movetype!=a
triggerall=!(inguarddist||p2movetype=a||(p2bodydist x-enemy(var(0)),vel x*var(55)*7-vel x*7<120-80*(p2movetype=h)))
trigger1=p2statetype!=l
trigger1=ctrl
trigger1=stateno!=100&&prevstateno!=[100,101]
trigger1=p2bodydist x>(140-20*(random%40=gametime%40))
trigger1=numhelper(21000)
trigger1=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
trigger1=!inguarddist
trigger1=random<150*time
trigger2=ctrl
trigger2=numtarget(2600)
trigger2=!inguarddist
trigger2=p2movetype=h
trigger2=numhelper(21000)
trigger2=target,pos y+helper(21000),fvar(9)<=-5
trigger2=random<var(59)*25+33*(time-1)
trigger2=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)>60
trigger2=time
trigger2=statetype!=a
trigger2=fvar(0)>(fvar(3)/100)*(40)
trigger3=var(2)>0
trigger3=p2bodydist x>50
trigger3=ctrl
trigger3=random<var(59)*80
trigger4=numtarget(1470)
trigger4=target(1470),movetype=h&&target(1470),stateno!=[120,159]
trigger4=p2bodydist x>120
trigger4=ctrl
trigger4=enemy(var(0)),vel y<=0
trigger4=random<var(59)*40
trigger4=!inguarddist
trigger5=p2movetype=h
trigger5=ctrl
trigger5=!inguarddist
trigger5=numtarget
trigger5=target,stateno=1005||target,stateno=[1705,1707]
trigger5=p2bodydist x-var(47)*var(55)*4>50
[state -1,すごいガードアーマー用]
type=changestate
value=900
triggerall=!ishelper
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>12)
triggerall=numexplod(5)=0
triggerall=roundstate=2
triggerall=ctrl||(stateno=52&&animtime=0)||stateno=100
triggerall=enemy(var(0)),numproj<=1||helper(21000),var(2)+1>=enemy(var(0)),numhelper||helper(30000),sysvar(4)!=0
trigger1=(((p2life*1.0/enemy(var(0)),lifemax*1.0)<=0.45)&&(fvar(0)-12>=(fvar(3)*70/100))&&(var(40)=[5,10+1*(roundno>1)]))||palno=12
trigger1=(var(59)&&(numenemy=1&&p2life>=30||(numenemy>1&&((enemy(0),life!=[29,1])&&(enemy(numenemy>1),life!=[29,1])))))
trigger1=(var(59)>=2&&time)||random<21*(time>0)
trigger1=random<var(59)*40+50
trigger1=p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)>140+40*(enemy(var(0)),ctrl||(!enemy(var(0)),ctrl&&(p2stateno=[0,159])))-70*(p2statetype=l&&p2stateno!=5120&&time>0)
trigger1=((p2stateno!=[1000,4999])||(p2movetype=h))
trigger1=(gametime%42=[0,var(59)])||(gametime%42=[14,var(59)+14])||(gametime%42=[35,39])
trigger1=!inguarddist
trigger1=statetype!=a
trigger1=!((p2life*1.0/enemy(var(0)),lifemax=[0.15,0.5*(fvar(1)/(1+var(10)))])&&power>=2500&&var(40)>=10)&&!((p2life*1.0/enemy(var(0)),lifemax=[0.15,0.3*(fvar(1)/(1+var(10)))])&&power>=2500)||((life*1.0/lifemax*1.0)<=0.45)
;AI通常攻撃------------------------------------------------------------------
[state -1,挑発]
type=changestate
value=195+505*(var(40)>=10)
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=numexplod(7777)=0
triggerall=ctrl||((movetype!=h)&&(statetype!=l)&&(pos y>=0)&&!ctrl)
triggerall=!(inguarddist)&&(statetype!=a)
triggerall=(var(40)*90<random)
triggerall=var(40)<10||(var(40)>=10&&(power<powermax)&&random<var(59)*40&&ctrl)
triggerall=(fvar(0)<(fvar(3)/3))
triggerall=stateno!=[3600,3699]
triggerall=stateno!=2200
triggerall=stateno!=195
triggerall=stateno!=[3310,3330]
triggerall=stateno!=[2610,2620]
triggerall=stateno!=[1515,1520]
triggerall=stateno!=1535
triggerall=stateno!=810
triggerall=stateno!=305
trigger1=numtarget(2500)=1
trigger1=backedgebodydist<80
trigger1=p2bodydist x<150
trigger1=ctrl=1
trigger1=stateno!=100
[state -1,マッハ投げ後]
type=changestate
value=195-155*((random<var(40)*90||var(40)>=10||var(45)!=0)&&ctrl)+0*(var(45):=0)
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=numexplod(7777)=0||(numexplod(7777)&&var(45)!=0)
triggerall=(ctrl||stateno=100)||((movetype!=h)&&(statetype!=l)&&(pos y>=0)&&!ctrl)
triggerall=numtarget!=0
triggerall=1;(var(40)*90 < random)||(var(40)>=10&&!inguarddist&&ctrl)
triggerall=var(40)<10||(var(40)>=10&&!inguarddist&&ctrl)||(var(45)!=0&&ctrl&&!inguarddist)
triggerall=fvar(0)>0
triggerall=statetype!=a&&p2statetype=a
triggerall=!(inguarddist)
triggerall=stateno!=[3600,3699]
triggerall=stateno!=2200
triggerall=stateno!=195
triggerall=stateno!=[3310,3330]
triggerall=stateno!=[2610,2620]
triggerall=stateno!=[1515,1520]
triggerall=stateno!=1535
triggerall=stateno!=810
triggerall=stateno!=305
triggerall=p2movetype=h
trigger1=((stateno=1525)&&(animelemtime(1)>0)&&var(45)=0)||((stateno=1525)&&(animelemtime(10)>0)&&var(45)!=0&&ctrl)
trigger2=prevstateno=2620&&ctrl&&random<100&&(var(40)<4||((fvar(0)/fvar(3))<0.3))
[state -1,挑発]
type=changestate
value=195+505*(var(40)>=10&&p2bodydist x>140)
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=ctrl||((movetype!=h)&&(statetype!=l)&&(pos y>=0)&&!ctrl)
triggerall=!(inguarddist)&&(statetype!=a)
triggerall=(var(40)*90<random)
triggerall=var(40)<10||(var(40)>=10&&(power<powermax)&&p2bodydist x>140&&random<var(59)*40&&ctrl)
triggerall=(stateno=1000)&&(movecontact>1)
triggerall=numexplod(7777)=0||(numexplod(7777)&&power-777>powermax)
triggerall=numtarget(1000)!=0
triggerall=target(1000),pos y<0
triggerall=stateno!=[3600,3699]
triggerall=stateno!=2200
triggerall=stateno!=195
triggerall=stateno!=[3310,3330]
triggerall=stateno!=[2610,2620]
triggerall=stateno!=[1515,1520]
triggerall=stateno!=1535
triggerall=stateno!=810
triggerall=stateno!=305
trigger1=frontedgebodydist>150
trigger2=frontedgebodydist>=100
trigger2=random<300
[state -1,挑発]
type=changestate
value=195+505*(var(40)>=10||(numexplod(7777)&&power-777>powermax))
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=ctrl||((movetype!=h)&&(statetype!=l)&&(pos y>=0)&&!ctrl)
triggerall=!(inguarddist)&&(statetype!=a)
triggerall=fvar(0)>0
triggerall=(var(40)<10)||(var(40)>=10&&(power<powermax)&&random<var(59)*40&&ctrl)
triggerall=(stateno=1310)&&(movehit>=1)
triggerall=stateno!=[3600,3699]
triggerall=stateno!=2200
triggerall=stateno!=195
triggerall=stateno!=[3310,3330]
triggerall=stateno!=[2610,2620]
triggerall=stateno!=[1515,1520]
triggerall=stateno!=1535
triggerall=stateno!=810
triggerall=stateno!=305
trigger1=numtarget(1310)!=0
trigger1=target(1310),stateno=[5020,5099]
trigger1=(p2dist y<-50)
[state -1,挑発]
type=changestate
value=195
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=ctrl||((movetype!=h)&&(statetype!=l)&&(pos y>=0)&&!ctrl)
triggerall=var(40)<10
triggerall=numexplod(7777)=0
triggerall=statetype!=l&&!(inguarddist)
triggerall=stateno!=[3600,3699]
triggerall=stateno!=2200
triggerall=stateno!=195
triggerall=stateno!=[3310,3330]
triggerall=stateno!=[2610,2620]
triggerall=stateno!=[1515,1520]
triggerall=stateno!=1535
triggerall=stateno!=810
triggerall=stateno!=305
trigger1=(stateno=1360)&&(animelemtime(13)>0)
trigger1=time>13
;-----------------------
[state -1,挑発]
type=changestate
value=195
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=numtarget
triggerall=(numenemy=1&&numtarget>=1)||(numenemy>1&&enemy,movetype=h&&enemy(numenemy>1),movetype=h&&enemy(var(0)),animtime<-10)
triggerall=!inguarddist
triggerall=stateno!=[120,159]
triggerall=var(2)=0
triggerall=(var(40)<10)
triggerall=(numexplod(195)=0)
triggerall=(numexplod(704)=0)
triggerall=numexplod(7777)=0||((power*2<powermax)&&random<100*time)
triggerall=stateno!=[3600,3699]
triggerall=stateno!=2200
triggerall=stateno!=195
triggerall=stateno!=[3310,3330]
triggerall=stateno!=[2610,2620]
triggerall=stateno!=[1515,1520]
triggerall=stateno!=1535
triggerall=stateno!=810
triggerall=stateno!=305
triggerall=stateno!=1000
triggerall=stateno!=1100
triggerall=(movetype!=h)&&(statetype!=l)&&(pos y>=0)
triggerall=(ctrl=1)||(((target,time*30)<random)&&(target,statetype=l)&&(random<77))
triggerall=((gametime%30=[0,11])&&var(40)<7)||(gametime%30=[17,22])||((gametime%30=[27,29])&&var(40)<5)||(random=1)
triggerall=(var(40)*100)<=random
triggerall=(time*time*10)>=random
triggerall=(((fvar(1)/(1+var(10)))<0.42&&(fvar(1)*random<=100))&&p2movetype=h&&p2statetype!=l)||(p2movetype=h&&enemy(var(0)),hitfall=1&&(enemy(var(0)),pos y=[-20,-1])&&p2stateno<5110)||(p2statetype=l&&(p2stateno=[5000,5109]))
triggerall=enemy(var(0)),ctrl=0
triggerall=p2movetype!=i
trigger1=p2bodydist x>=150
trigger1=target,statetype=a
trigger2=target,stateno=[1704,1707]
trigger3=target,stateno=[1710,1712]
trigger4=target,stateno=[1521,1524]
trigger5=target,stateno=[1205,1210]
trigger6=numtarget(1800)>=1
trigger6=target,statetype=a
trigger6=target,vel y<=0&&target,pos y<-140
trigger7=target,stateno=[1380,1382]
trigger8=target,stateno=[960,970]
[state -1,立ち強パンチ]
type=changestate
value=210
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=((fvar(0)/fvar(3))*100)>4
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(12-helper(21000),var(59))*var(55)-vel x*8=[0+(var(48)*16),47]
triggerall=p2bodydist y+helper(21000),fvar(12)>-80
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2movetype!=a||var(2)>0||(p2movetype=a&&var(42)!=0&&var(42)!=4649&&(var(42)>8))
triggerall=random<500
triggerall=!movecontact||(movecontact&&p2movetype=h&&p2stateno!=[120,155])
triggerall=p2dist x>0
triggerall=!inguarddist&&enemy(var(0)),prevstateno!=5120||var(2)>0
triggerall=prevstateno!=260
triggerall=var(58)!=5
triggerall=!numtarget(260)
trigger1=((stateno=200)||(stateno=400))
trigger1=moveguarded
trigger1=helper(21000),var(11)>8
[state -1,しゃがみ弱パンチ]
type=changestate
value=400
triggerall=var(59)
triggerall=(fvar(0)>0)
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2bodydist y+helper(21000),fvar(5)>-35
triggerall=p2statetype!=l||(p2stateno=5120&&(enemy(var(0)),animtime=[-3,-2])&&life>900)
triggerall=p2movetype!=a||var(2)>0
triggerall=random<350+150*(p2statetype=c)
triggerall=!inguarddist||var(2)>0||inguarddist&&(enemy(var(0)),hitdefattr=sca,na,sa,np,sp)&&(enemy(var(0)),animtime=[-7,-5])&&enemy(var(0)),movecontact=0&&(!enemy(var(0)),numproj&&(helper(30000),sysvar(4)=0))
triggerall=p2dist x>0
triggerall=var(58)!=5
triggerall=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)=[-5+((var(48)-2*(enemy(var(0)),ctrl=0&&p2movetype!=a&&((enemy(var(0)),animtime=[-7,-5])||helper(21000),var(11)>4)&&p2stateno!=100&&(p2stateno!=[0,22])))*(12+5)*(var(41)<=0)),41]
trigger1=ctrl||stateno=100&&time<10
trigger1=p2statetype=s||(p2statetype=c&&random<20)||(p2stateno=5120&&(enemy(var(0)),animtime=[-3,-2])&&life>900)
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)&&(p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)=[0,21-15*(gametime%7<2)*(movehit>0)]))
trigger3=(stateno=225)&&(movecontact>=1)
trigger4=(stateno=260)&&(movecontact>=1)
trigger4=p2movetype=h&&p2stateno!=[120,159]
trigger4=random<100
trigger5=(stateno=850)
trigger5=(movecontact>=1)
trigger6=stateno=200||stateno=400
trigger6=moveguarded
trigger6=p2statetype=c
trigger6=helper(21000),var(11)>=5
trigger6=p2movetype=h
;+((var(48)-2*(enemy(var(0)),ctrl=0&&p2movetype!=A&&((enemy(var(0)),animtime=[-7,-5])||helper(21000),var(11)>4)&&p2stateno!=100&&(p2stateno!=[0,22])))*(12+5))
[state -1,しゃがみ弱パンチ]
type=changestate
value=400
triggerall=var(59)
triggerall=(fvar(0)>0)
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=numhelper(21000)
triggerall=p2bodydist y+helper(21000),fvar(5)>0
triggerall=p2bodydist y+helper(21000),fvar(4)<0
triggerall=enemy(var(0)),vel y>0
triggerall=p2statetype=a
triggerall=!inguarddist||(facing=enemy(var(0)),facing&&p2stateno<1800)
triggerall=random<var(59)*50+50*(enemy(var(0)),ctrl=0)
triggerall=p2dist x>0
triggerall=var(58)!=5
triggerall=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)=[-5+((var(48)-2*(enemy(var(0)),ctrl=0&&p2movetype!=a&&((enemy(var(0)),animtime=[-7,-5])||helper(21000),var(11)>4)&&p2stateno!=100&&(p2stateno!=[0,22])))*(12+5)*(var(41)<=0)),41]
trigger1=ctrl||stateno=100&&time<10
[state -1,しゃがみ弱キック]
type=changestate
value=430
triggerall=var(59)
triggerall=(fvar(0)>0)
triggerall=((fvar(0)/fvar(3))*100)>4
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2statetype!=a||p2bodydist y+helper(21000),fvar(5)>-5
triggerall=p2statetype!=l
triggerall=p2movetype!=a||var(2)>0
triggerall=random<300-var(59)*20-80*(p2statetype!=a&&(enemy(var(0)),ctrl||p2stateno<200))
triggerall=p2dist x>0
triggerall=!inguarddist&&enemy(var(0)),prevstateno!=5120||var(2)>0
triggerall=var(58)!=5
triggerall=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)=[-5+((var(48)-2*(enemy(var(0)),ctrl=0&&p2movetype!=a&&((enemy(var(0)),animtime=[-7,-5])||helper(21000),var(11)>4)&&p2stateno!=100&&(p2stateno!=[0,22])))*(15+2)),44]
trigger1=ctrl||stateno=100&&time<10
trigger1=p2statetype=s||(p2statetype=c&&random<20)||p2statetype=a&&enemy(var(0)),vel y>0
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)&&(p2bodydist x=[0,21]))
trigger3=(stateno=225)&&(movecontact>=1)
trigger4=(stateno=260)&&(movecontact>=1)
trigger5=(stateno=850)
trigger5=(movecontact>=1)
[state -1,しゃがみ強パンチ]
type=changestate
value=410
triggerall=var(59)
triggerall=(fvar(0)>0)
triggerall=((fvar(0)/fvar(3))*100)>6
triggerall=roundstate=2&&alive
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)-vel x*4=[-3+((var(48)*2*(!enemy(var(0)),ctrl&&p2movetype!=a&&((enemy(var(0)),animtime=[-7,-5])||helper(21000),var(11)>4)&&p2stateno!=100&&(p2stateno!=[0,22])))*(9*4)),21]
triggerall=p2statetype!=a||(p2bodydist y+helper(21000),fvar(5)=[-115,-45])&&enemy(var(0)),hitfall=1&&p2movetype=h||(enemy(var(0)),hitfall=0||p2movetype!=h)&&(p2bodydist y+helper(21000),fvar(5)=[-120,-10])
triggerall=p2statetype!=l
triggerall=p2movetype!=a||var(2)>0
triggerall=random<400
triggerall=p2dist x>0
triggerall=!inguarddist&&enemy(var(0)),prevstateno!=5120||var(2)>0
triggerall=var(58)!=5
triggerall=enemy(var(0)),vel y>=0
trigger1=random<40+200*(p2statetype=a)
trigger1=ctrl||stateno=100&&time<10
trigger2=((stateno=200)||(stateno=400))
trigger2=(movecontact>=1)
trigger3=((stateno=230)||(stateno=430))&&(movecontact>=1)
trigger4=(stateno=225)&&(movecontact>=1)
trigger5=(stateno=260)&&(movecontact>=1)
trigger5=p2movetype=h&&p2stateno!=[120,159]
[state -1,しゃがみ強キック]
type=changestate
value=440
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=((fvar(0)/fvar(3))*100)>6
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(13-helper(21000),var(59))*var(55)=[0+((var(48)-2*(enemy(var(0)),ctrl=0&&p2movetype!=a&&((enemy(var(0)),animtime=[-15,-12])||helper(21000),var(11)>12)&&p2stateno!=100&&(p2stateno!=[0,22])))*(29)),87]
triggerall=p2statetype!=a
triggerall=p2statetype!=l
triggerall=p2movetype!=a&&!inguarddist||var(2)>0
triggerall=random<300-80*var(59)*(var(59)<=3&&(enemy(var(0)),ctrl||p2stateno<200))
triggerall=p2dist x>0
triggerall=var(58)!=5
triggerall=!movecontact||movecontact&&helper(21000),var(11)>=13||var(59)=1
trigger1=random<1
trigger1=ctrl||stateno=100&&time<10
trigger2=((stateno=200)||(stateno=400))
trigger2=(movecontact>=1)
trigger3=((stateno=230)||(stateno=430))&&(movecontact>=1)
trigger4=(stateno=225)&&(movecontact>=1)
trigger5=(stateno=260)&&(movecontact>=1)
trigger6=(stateno=850)
trigger6=(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,立ち弱パンチ]
type=changestate
value=200+200*(enemy(var(0)),ctrl&&p2statetype=s&&var(59)>2)
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=statetype!=a
triggerall=p2statetype!=a||(p2bodydist y+helper(21000),fvar(5)=[-80,-35])
triggerall=p2statetype!=l
triggerall=p2movetype!=a||var(2)>0
triggerall=random<400
triggerall=enemy(var(0)),prevstateno!=5120
triggerall=!inguarddist||var(2)>0||inguarddist&&(enemy(var(0)),hitdefattr=sca,na,sa,np,sp)&&(enemy(var(0)),animtime=[-7,-5])&&enemy(var(0)),movecontact=0&&(!enemy(var(0)),numproj&&(helper(30000),sysvar(4)=0))
triggerall=p2dist x>0
triggerall=prevstateno!=260
triggerall=var(58)!=5
triggerall=!numtarget(260)
triggerall=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)=[-10+((var(48)-2*(enemy(var(0)),ctrl=0&&p2movetype!=a&&((enemy(var(0)),animtime=[-7,-5])||helper(21000),var(11)>4)&&p2stateno!=100&&(p2stateno!=[0,22])))*(15+4)*(var(41)<=0)),40]
trigger1=ctrl||stateno=100&&time<10
trigger1=p2statetype!=c||random<20
trigger2=((stateno=200)||(stateno=400))
trigger2=((movecontact>=1)||(animelemtime(5)>0))
trigger2=p2statetype!=c&&random<var(59)*55
trigger2=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)=[0,21-15*(gametime%7<2)*(movehit>0)]
trigger3=(stateno=225)&&(movecontact>=1)
trigger4=(stateno=260)&&(movecontact>=1)
trigger5=(stateno=850)
trigger5=(movecontact>=1)
trigger6=stateno=200||stateno=400
trigger6=moveguarded
trigger6=p2statetype=s||p2statetype=a
trigger6=helper(21000),var(11)>=5
trigger6=p2movetype=h
;+((var(48)-2*(enemy(var(0)),ctrl=0&&p2movetype!=A&&((enemy(var(0)),animtime=[-7,-5])||helper(21000),var(11)>4)&&p2stateno!=100&&(p2stateno!=[0,22])))*(15+4))
[state -1,立ち弱キック]
type=changestate
value=230
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=((fvar(0)/fvar(3))*100)>10
triggerall=statetype!=a
triggerall=p2statetype!=a
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2movetype!=a||var(2)>0
triggerall=random<210-50*var(59)*(var(59)<=3&&(enemy(var(0)),ctrl||p2stateno<200))
triggerall=!inguarddist||var(2)>0
triggerall=p2dist x>0
triggerall=var(58)!=5
triggerall=p2bodydist x-var(47)*(7-helper(21000),var(59))*var(55)=[-10+((var(48)-2*(enemy(var(0)),ctrl=0&&p2movetype!=a&&((enemy(var(0)),animtime=[-9,-6])||helper(21000),var(11)>6)&&p2stateno!=100&&(p2stateno!=[0,22])))*21),32+4*(movehit>0)]
trigger1=statetype!=a
trigger1=ctrl||stateno=100&&time<10
trigger2=((stateno=200)||(stateno=400))
trigger2=(movecontact>=1)
trigger3=(stateno=225)&&(movecontact>=1)
trigger4=(stateno=260)&&(movecontact>=1)
[state -1,立ち強パンチ]
type=changestate
value=210
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=((fvar(0)/fvar(3))*100)>4
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(12-helper(21000),var(59))*var(55)-vel x*8=[0+(var(48)*16),47]
triggerall=p2bodydist y+helper(21000),fvar(12)>-80
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2movetype!=a||var(2)>0||(p2movetype=a&&var(42)!=0&&var(42)!=4649&&(var(42)>8))
triggerall=random<500
triggerall=!movecontact||(movecontact&&p2movetype=h&&p2stateno!=[120,155])
triggerall=p2dist x>0
triggerall=!inguarddist&&enemy(var(0)),prevstateno!=5120||var(2)>0
triggerall=prevstateno!=260
triggerall=var(58)!=5
triggerall=!numtarget(260)
trigger1=statetype!=a
trigger1=ctrl
trigger1=random<255-var(59)*50-35*var(59)*(var(59)<=3&&(enemy(var(0)),ctrl||p2stateno<200))
trigger2=((stateno=200)||(stateno=400))
trigger2=(movecontact>=1)
trigger3=((stateno=230)||(stateno=430))&&(movecontact>=1)
trigger4=(stateno=225)&&(movecontact>=1)
trigger5=(stateno=260)&&(movecontact>=1)
[state -1,立ち強キック]
type=changestate
value=240
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=((fvar(0)/fvar(3))*100)>4
triggerall=statetype!=a
triggerall=p2bodydist x-var(47)*(12-helper(21000),var(59))*var(55)-vel x*8=[0+(var(48)*(26+3)),86]
triggerall=p2bodydist y+helper(21000),fvar(12)>-50
triggerall=statetype!=a
triggerall=p2statetype!=l
triggerall=p2movetype!=a||var(2)>0
triggerall=random<500
triggerall=!movecontact||(movecontact&&p2movetype=h&&p2stateno!=[120,155])
triggerall=p2statetype!=c||p2statetype=c&&random<50
triggerall=p2dist x>0
triggerall=!inguarddist&&enemy(var(0)),prevstateno!=5120||var(2)>0
triggerall=prevstateno!=260
triggerall=var(58)!=5
triggerall=!numtarget(260)
triggerall=helper(21000),var(11)>8
trigger1=statetype!=a
trigger1=ctrl
trigger1=random<1
trigger2=((stateno=200)||(stateno=400))
trigger2=(movecontact>=1)
trigger3=((stateno=230)||(stateno=430))&&(movecontact>=1)
trigger4=(stateno=225)&&(movecontact>=1)
trigger5=(stateno=260)&&(movecontact>=1)
trigger6=(stateno=850)
trigger6=(movecontact>=1)
;AI空中------------------------------------------------------------------------------
[state -1,空中極パンチ];ランク3
type=changestate
value=620
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=(p2bodydist x-var(47)*(8-helper(21000),var(59))*var(55)-vel x*8=[0-30*(stateno=42)-vel x*8,45])||abs(p2dist x)<60
triggerall=p2bodydist y+helper(21000),fvar(8)-(vel y*8+const(movement.yaccel)*8*(8-1)/2)=[-110,42]
triggerall=!inguarddist||var(2)>0
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=random<var(59)*100
triggerall=var(58)!=5
trigger1=stateno=610&&movehit
trigger1=p2movetype=h
[state -1,空中極キック];ランク3
type=changestate
value=650
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=(p2bodydist x-var(47)*(8-helper(21000),var(59))*var(55)-vel x*8=[0-30*(stateno=42)-vel x*8,34])||abs(p2dist x)<60
triggerall=p2bodydist y+helper(21000),fvar(8)-(vel y*8+const(movement.yaccel)*8*(8-1)/2)=[-10,56]
triggerall=!inguarddist||var(2)>0
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=random<var(59)*100
triggerall=var(58)!=5
trigger1=(stateno=610||stateno=640)&&movehit
trigger1=p2movetype=h
[state -1,殴り飛ばし];ランク0
type=changestate
value=670
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=p2bodydist x-var(47)*(16-helper(21000),var(59))*var(55)-vel x*8=[55,80]
triggerall=p2bodydist y+helper(21000),fvar(15)=[-20,30]
triggerall=!inguarddist||var(2)>0
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=p2movetype=h&&p2stateno!=[120,156]
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=p2movetype=h
triggerall=random<var(59)*50
triggerall=var(58)!=5
trigger1=ctrl||((stateno=[120,155])&&movetype!=h)
[state -1,空中かかと];ランク0
type=changestate
value=660
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=p2bodydist x-var(47)*(15-helper(21000),var(59))*var(55)-vel x*15=[-5,49]
triggerall=p2bodydist y+helper(21000),fvar(15)=[-120,30]
triggerall=p2statetype=a
triggerall=p2statetype!=l
triggerall=!inguarddist||var(2)>0
triggerall=statetype=a
triggerall=enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0)
triggerall=random<var(59)*50&&p2movetype=h||random<10
triggerall=var(58)!=5
trigger1=ctrl
[state -1,ジャンプ弱パンチ]
type=changestate
value=600
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=p2bodydist x-var(47)*(5-helper(21000),var(59))*var(55)-vel x*5=[-15,45]
triggerall=p2bodydist y+helper(21000),fvar(5)-(vel y*5+const(movement.yaccel)*5*(5-1)/2)=[-70,20]
triggerall=pos y+(vel y*5+const(movement.yaccel)*5*(5-1)/2)<0
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=!inguarddist&&enemy(var(0)),prevstateno!=5120||var(2)>0
triggerall=var(58)!=5
trigger1=ctrl
trigger1=random<var(59)*100
trigger2=(stateno=600)&&(movecontact>=1)
trigger2=p2bodydist x=[0,25-20*(gametime%7<4)*(movehit)]
trigger3=(stateno=[660,670])&&(movecontact>=1)
trigger3=random<var(59)*25+30
[state -1,ジャンプ弱キック]
type=changestate
value=630
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=((fvar(0)/fvar(3))*100)>4
triggerall=p2bodydist x-var(47)*(6-helper(21000),var(59))*var(55)-vel x*6=[-7-vel x*3,57]
triggerall=p2bodydist y+helper(21000),fvar(6)+vel y*6+const(movement.yaccel)*6*(6-1)/2=[-30,50-(50-p2bodydist x)]
triggerall=pos y+(vel y*6+const(movement.yaccel)*6*(6-1)/2)<0
triggerall=statetype=a
triggerall=p2statetype!=l||(p2stateno=5120&&(facing!=enemy(var(0)),facing)&&enemy(var(0)),animtime=-(9+3+random%4))
triggerall=!inguarddist||var(2)>0
triggerall=var(58)!=5
triggerall=p2statetype!=c
trigger1=ctrl
trigger1=random<var(59)*70
trigger2=0;(stateno = 600) && (movecontact >= 1)
trigger3=(stateno=[660,670])&&(movecontact>=1)
trigger3=random<var(59)*25
[state -1,ジャンプ強パンチ]
type=changestate
value=610
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=((fvar(0)/fvar(3))*100)>6
triggerall=p2bodydist x-var(47)*(13-helper(21000),var(59))*var(55)-vel x*13=[0,57]
triggerall=p2bodydist y+helper(21000),fvar(13)-(vel y*13+const(movement.yaccel)*13*(13-1)/2)=[-10,50]
triggerall=pos y+(vel y*14+const(movement.yaccel)*14*(14-1)/2)<0
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=!inguarddist||var(2)>0
triggerall=random<500
triggerall=var(58)!=5
trigger1=ctrl
trigger1=random<100-var(59)*20
trigger2=(stateno=600)&&(movecontact>=1)
trigger3=(stateno=630)&&(movecontact>=1)
trigger4=(stateno=[660,670])&&(movecontact>=1)
[state -1,ジャンプ強キック]
type=changestate
value=640
triggerall=var(59)
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=((fvar(0)/fvar(3))*100)>6
triggerall=p2bodydist x-var(47)*(11-helper(21000),var(59))*var(55)-vel x*11=[0,70]
triggerall=p2bodydist y+helper(21000),fvar(11)-(vel y*12+const(movement.yaccel)*12*(12-1)/2)=[-20,60]
triggerall=pos y+(vel y*12+const(movement.yaccel)*12*(12-1)/2)<0
triggerall=statetype=a
triggerall=p2statetype!=l
triggerall=!inguarddist||var(2)>0
triggerall=random<500
triggerall=var(58)!=5
trigger1=ctrl
trigger1=random<100-var(59)*20
trigger2=(stateno=600)&&(movecontact>=1)
trigger3=(stateno=630)&&(movecontact>=1)
trigger4=(stateno=[660,670])&&(movecontact>=1)
;------------------------------------------------------------------------------
[state -1,叩き落とし];ランク4
type=changestate
value=1400
triggerall=var(59)
triggerall=(fvar(0)>(fvar(3)/100)*(20))
triggerall=roundstate=2&&alive
triggerall=var(59)>1
triggerall=p2bodydist x-enemy(var(0)),vel x*2*var(55)<=45
triggerall=p2dist x>0
triggerall=p2bodydist y+helper(21000),fvar(2)+vel y*2=[-40,70]
triggerall=random<var(59)*70+30
triggerall=gametime%14<7
triggerall=p2movetype!=h
triggerall=p2statetype!=l
triggerall=p2movetype!=a
triggerall=var(58)!=5
triggerall=ctrl||stateno=100&&time<10||(stateno=52&&animtime=0)
triggerall=!inguarddist
triggerall=prevstateno!=[1400,1445]
triggerall=enemy(var(0)),prevstateno!=5120&&helper(21000),var(10)<=0
trigger1=p2stateno=52
trigger1=enemy(var(0)),animtime<-1
trigger2=p2statetype=a
trigger2=(p2stateno=[50,51])||(p2stateno=[120,159])
trigger3=numhelper(21000)
trigger3=helper(21000),var(11)=[2,4]
trigger4=numhelper(21000)
trigger4=helper(21000),var(11)=2
trigger4=p2stateno=[120,159]
trigger4=p2movetype=h
trigger5=p2statetype=a
trigger5=enemy(var(0)),vel y>0
trigger5=p2movetype=i
trigger5=(p2stateno=[50,51])||(p2stateno=[120,159])
trigger5=numhelper(21000)
trigger5=enemy(var(0)),pos y+helper(21000),fvar(2)>=-1
[state -1,すごパ(物理)];キャンセル経由用
type=changestate
value=1000+0*(var(53):=var(53)+1*(var(53)%10!=1))
triggerall=var(59)>0
triggerall=roundstate=2&&alive
triggerall=(fvar(0)>0)
triggerall=fvar(0)>=fvar(3)/(2+1*(p2movetype=a||enemy(var(0)),ctrl||inguarddist))
triggerall=statetype!=a
triggerall=numhelper(21000)
triggerall=random<var(59)*var(59)*20+210
triggerall=random<var(40)*50+100
triggerall=(gametime%120=[1,21])||(gametime%120=[61,81])||(gametime%120=[101,119])||(gametime%120=[35,42])||random=777
triggerall=ctrl=0&&animtime<-12
triggerall=p2statetype!=l
triggerall=!(enemy(var(0)),hitfall=1&&enemy(var(0)),pos y+helper(21000),fvar(14)>-21)
triggerall=(p2movetype=h&&((p2stateno=[120,159])||(p2stateno=[5000,5999]))&&helper(21000),var(11)>12&&helper(21000),var(11)<=abs(animtime))||((p2movetype=a||enemy(var(0)),ctrl||inguarddist)&&(abs(p2bodydist x)<70||inguarddist)&&(fvar(0)>=fvar(3)/3))
triggerall=stateno!=200&&stateno!=400
triggerall=movecontact>1||movecontact=0||movecontact&&p2movetype!=h
trigger1=ctrl
trigger2=((stateno=200)||(stateno=400))
trigger2=(animelemtime(5)>0)
trigger3=(stateno=[200,460])&&(movecontact>=1)
trigger4=(stateno=850)||(stateno=1310)
trigger4=(movecontact>=1)&&inguarddist
trigger5=(stateno=1260)&&(animelemtime(5)>0)&&(p2movetype!=h||(p2stateno=[120,159]))&&(animelemtime(22)<-12)
trigger6=(stateno=1400)&&(movecontact>=1)&&p2movetype!=h&&!enemy(var(0)),hitdefattr=sca,aa,at,ap&&(enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0))
trigger6=(animelemtime(30)<-12)
trigger7=((stateno=1420)||(stateno=1440))&&(animelemtime(5)>0)&&p2movetype!=h&&!enemy(var(0)),hitdefattr=sca,aa,at,ap&&(enemy(var(0)),numproj=0&&(helper(21000),var(2)>=enemy(var(0)),numhelper||helper(30000),sysvar(4)=0))
trigger7=(animelemtime(22)<-12)
trigger8=(stateno=[1300,1340])&&(animelemtime(10)>=0)&&(stateno!=1310)
trigger8=p2movetype!=a&&inguarddist&&(helper(30000),sysvar(4)=0||helper(30000),sysvar(4)!=0&&(var(51)!=[-40,40])&&(var(52)!=[-85,35]))
;AI基本行動------------------------------------------------------------------
[state 5050,4]
type=selfstate
triggerall=!ishelper
triggerall=stateno=5050
triggerall=var(59)
triggerall=vel y>0
triggerall=pos y>=-20
triggerall=alive
triggerall=canrecover
triggerall=roundstate=2
trigger1=var(59)>0
trigger1=0
trigger2=enemy(var(0)),movetype=a&&!enemy(var(0)),movehit
trigger2=enemy(var(0)),time<=6||enemy(var(0)),hitdefattr=sca,aa,at
value=5200;HITFALL_RECOVER
[state 5050,5]
type=selfstate
triggerall=!ishelper
triggerall=stateno=5050
triggerall=var(59)
triggerall=vel y>-1
triggerall=alive
triggerall=canrecover
triggerall=roundstate=2
trigger1=var(59)>0
trigger1=0
trigger2=enemy(var(0)),movetype=a&&!enemy(var(0)),movehit
trigger2=enemy(var(0)),time<=6||enemy(var(0)),hitdefattr=sca,aa,at
value=5210;HITFALL_AIRRECOVER
[state -1,AIwalk]
type=changestate
value=21
triggerall=!ishelper
triggerall=var(59)
triggerall=statetype!=l
triggerall=statetype!=a
triggerall=ctrl
triggerall=roundstate=2
triggerall=alive
triggerall=random<300
triggerall=frontedgebodydist>=30
triggerall=p2movetype!=a
triggerall=stateno!=[120,159]
triggerall=(prevstateno!=[120,159])||(time>1+random%2&&enemy(var(0)),time>3)
triggerall=stateno!=21
triggerall=stateno!=100
triggerall=(stateno!=22||prevstateno!=22)||p2bodydist x>=70
trigger1=p2bodydist x-enemy(var(0)),vel x*var(55)>=35-10*(random%3=gametime%3)-15*(p2movetype=h&&var(55)!=0)-40*(var(2)>0)
trigger1=fvar(0)>0
trigger2=fvar(0)<=0
trigger2=p2bodydist x>210||(p2bodydist x>190&&enemy(var(0)),vel x<1)
ctrl=1
[state -1,AIwalk]
type=changestate
value=22
triggerall=!ishelper
triggerall=var(59)
triggerall=statetype!=l
triggerall=statetype!=a
triggerall=ctrl
triggerall=roundstate=2
triggerall=alive
triggerall=random<300
triggerall=p2movetype!=a
triggerall=backedgebodydist>=20
triggerall=stateno!=[120,159]
triggerall=stateno!=22
triggerall=!inguarddist
trigger1=p2bodydist x-enemy(var(0)),vel x*var(55)<=30+(30+random%10)*(fvar(0)<=0)-15*(p2movetype=h&&var(55)!=0)
trigger2=frontedgebodydist<=30
trigger3=var(55)=0&&p2movetype=h
trigger3=p2bodydist x < 44
ctrl=1

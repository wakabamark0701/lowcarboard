# README

# アプリ名
LowcarBoard〜 ﾛｶﾎﾞｰﾄﾞ〜

# 概要
低糖質ダイエットレコーディングサポートアプリ  
由来：lowcarb(低糖質：ロカボ)＋board(板：掲示板) = LowcarBoard  
利用法：ユーザ同士で食品や外食メニューの糖質量を投稿し、DBを充実させる。糖質摂取量の投稿を行いレコーディングダイエットに活用する。  
主な機能：食品DB参照・登録・検索、食事毎の糖質摂取量投稿  

# 本番環境
URL:https://radiant-spire-98515.herokuapp.com/  
テストメールアドレス：guest@guest  
テストパスワード：guest01  

# どんな課題や不便なことを解決するためにこのアプリを作ったのか。
通常、自分の糖質摂取量を確認・記録をする場合は、個別に調べて、メモして登録するなどの手間がかかるが  
当アプリで未登録の糖質情報は登録することで蓄積され、その情報を引用して1日糖質摂取量のレコーディングを簡略可し  
糖質制限ダイエットをサポートする為に作成しました。  

# DEMO画面
### トップページ
<img width="724" alt="トップページ" src="https://user-images.githubusercontent.com/67129169/90390271-075e7a00-e0c6-11ea-829f-e13f2155f848.png">

### 食品DB画面
<img width="724" alt="食品DB画面" src="https://user-images.githubusercontent.com/67129169/90390290-0decf180-e0c6-11ea-8b12-869cd4b55b39.png">

### 投稿画面
<img width="724" alt="投稿画面" src="https://user-images.githubusercontent.com/67129169/90390297-104f4b80-e0c6-11ea-8733-18beed3d034a.png">


# 工夫したポイント
・食品DBに登録した食品については探しやすいように食品検索機能を実装。  
・摂取量の投稿についてタイミングをラジオボタンで選択出来るように実装。  
・名前のボードにちなんでデザインを木目調にしている。  

# 使用技術
html(haml),css(scss),ruby,Ruby on Rails,git,MySQL  

# 課題や今後実装したい機能
・devise周りのマークアップ  
・投稿機能の食品名にインクリメンタルサーチ機能  
・食品・摂取量に応じた糖質gの自動算出(100g or 一品基準)  
・糖質合計の自動計算  

# DB設計

# usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|password|string|null: false|
|email|string|null:false, unique: true, index:true|
# Association
-has_many :posts 

# postsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|foodname1|string|
|foodname2|string|
|foodname3|string|
|foodname4|string|
|foodname5|string|
|gram1|integer|
|gram2|integer|
|gram3|integer|
|gram4|integer|
|gram5|integer|
|carb1|integer|
|carb2|integer|
|carb3|integer|
|carb4|integer|
|carb5|integer|
|memo|string|
|time|string|
# Association
-belongs_to :user
-has_many :foods

# foodsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
|carb|integer|add_index :foods, :name,unique: true|
# Association
-belongs_to :post

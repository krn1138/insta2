class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
end

# MEMO:　アプリを作る最初はDB設計から　モデルはてーぶるを表現したクラスだからモデルが作成されるとマイグレーションもできる
# MVCモデルの利点：各人分業して作業ができる、修正や変更がしやすい
# model:データの処理を行う、ロジックをかくところ
# view:モデルの内容を反映させる、表示や入出力などの処理
# controller:view,modelに処理を頼む、ユーザーの入出力に基づきモデルとビューを制御
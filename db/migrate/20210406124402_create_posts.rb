class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end

# マイグレーションファイルは、データベースを生成する際の設計図になる。マイグレーションファイルを実行することにより、その内容に基づいたデータテーブルを生成してくれる。

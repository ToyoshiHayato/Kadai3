class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name #名前
      t.string :introduction #自己紹介文

      t.timestamps
    end
  end
end

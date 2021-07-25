class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.references :user, null: false, foreign_key: true
      t.string     :list_name, null: false
      t.string     :name1
      t.string     :name2
      t.string     :name3
      t.string     :name4
      t.string     :name5
      t.string     :name6
      t.string     :name7
      t.string     :name8
      t.string     :name9
      t.string     :name10
      t.string     :name11
      t.string     :name12
      t.string     :name13
      t.string     :name14
      t.string     :name15
      t.timestamps
    end
  end
end

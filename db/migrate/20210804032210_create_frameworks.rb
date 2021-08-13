class CreateFrameworks < ActiveRecord::Migration[6.0]
  def change
    create_table :frameworks do |t|
      t.references :user
      t.integer :framework_id
      t.timestamps
    end
  end
end

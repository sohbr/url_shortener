class CreateVisitTable < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.integer :user_id, null: false
      t.string :short_url, null: false
      t.timestamps
    end
    add_index :visits, :id, uniqueness: true
  end
end

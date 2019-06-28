class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :enrollment_id
      t.integer :resource_id

      t.timestamps
    end
  end
end

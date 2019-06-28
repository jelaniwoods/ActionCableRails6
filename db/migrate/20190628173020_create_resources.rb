class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :id_from_tc
      t.integer :context_id

      t.timestamps
    end
  end
end

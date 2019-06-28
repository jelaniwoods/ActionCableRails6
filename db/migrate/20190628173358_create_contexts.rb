class CreateContexts < ActiveRecord::Migration[6.0]
  def change
    create_table :contexts do |t|
      t.string :title
      t.string :id_from_tc

      t.timestamps
    end
  end
end

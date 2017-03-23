class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.column :name, :string
      t.column :tag, :string

      t.timestamps
    end
  end
end

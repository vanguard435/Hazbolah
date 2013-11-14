class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|
      t.string :name
      t.integer :gcounter, :default => 0

      t.timestamps
    end
  end
end

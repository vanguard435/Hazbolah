class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|
      t.string :name
      t.integer :frequency

      t.timestamps
    end
  end
end

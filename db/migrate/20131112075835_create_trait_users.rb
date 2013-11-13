class CreateTraitUsers < ActiveRecord::Migration
  def change
    create_table :trait_users do |t|
      t.belongs_to :user
      t.belongs_to :trait
      t.integer :counter

      t.timestamps
    end
  end
end

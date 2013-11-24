class CreateDayTraits < ActiveRecord::Migration
  def change
    create_table :day_traits do |t|
      t.belongs_to :trait
      t.belongs_to :day
      t.integer :icounter, :default => 0

      t.timestamps
    end
  end
end

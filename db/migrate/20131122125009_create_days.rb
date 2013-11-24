class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.belongs_to :user
      t.string :currentnow

      t.timestamps
    end
  end
end

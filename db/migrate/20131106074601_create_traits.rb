class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|

      t.timestamps
    end
  end
end

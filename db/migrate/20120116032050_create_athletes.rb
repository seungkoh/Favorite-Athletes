class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :sport
      t.string :position
      t.integer :number

      t.timestamps
    end
  end
end

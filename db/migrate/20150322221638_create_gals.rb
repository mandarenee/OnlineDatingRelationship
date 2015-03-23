class CreateGals < ActiveRecord::Migration
  def change
    create_table :gals do |t|
      t.string :name
      t.string :worst_bad_date

      t.timestamps null: false
    end
  end
end

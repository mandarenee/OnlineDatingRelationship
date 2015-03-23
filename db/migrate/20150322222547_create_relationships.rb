class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :guy_id
      t.integer :gal_id
      t.datetime :first_date

      t.timestamps null: false
    end
  end
end

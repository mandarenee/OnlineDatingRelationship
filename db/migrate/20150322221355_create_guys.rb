class CreateGuys < ActiveRecord::Migration
  def change
    create_table :guys do |t|
      t.string :name
      t.integer :number_of_emails_sent

      t.timestamps null: false
    end
  end
end

class AddNextDate < ActiveRecord::Migration
  def change
    add_column :relationships, :next_date, :boolean
  end
end

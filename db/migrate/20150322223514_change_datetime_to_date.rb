class ChangeDatetimeToDate < ActiveRecord::Migration
  def self.up
    change_table :relationships do |t|
      t.change :first_date, :date
    end
  end

  def self.down
    change_table :relationships do |t|
      t.change :first_date, :datetime
    end
  end
end

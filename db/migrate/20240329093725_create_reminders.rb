class CreateReminders < ActiveRecord::Migration[7.1]
  def change
    create_table :reminders do |t|
      t.string :url
      t.integer :page_number
      t.datetime :last_read

      t.timestamps
    end
  end
end

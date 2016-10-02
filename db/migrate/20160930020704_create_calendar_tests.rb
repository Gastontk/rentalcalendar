class CreateCalendarTests < ActiveRecord::Migration
  def change
    create_table :calendar_tests do |t|
      t.string :index


      t.timestamps null: false
    end
  end
end

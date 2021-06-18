class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.integer :theater_number
      t.time :screening_date
      t.references :movie, index: true, foreign_key: true

      t.timestamps
    end
  end
end

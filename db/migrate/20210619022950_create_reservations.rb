class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :reserved_seat
      t.references :user, index: true, foreign_key: true
      t.references :schedule, index: true, foreign_key: true

      t.timestamps
    end
  end
end

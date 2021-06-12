class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.time :running_time
      t.string :detail

      t.timestamps
    end
  end
end

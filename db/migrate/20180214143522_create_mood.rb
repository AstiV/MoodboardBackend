class CreateMood < ActiveRecord::Migration[5.1]
  def up
  	create_table :moods do |t|
      t.integer :mood
      t.timestamps null: false  # copied from https://github.com/shannonjen/sinatra_crud_tutorial, 
                                # but there wasn't explained how table content looks like
  	end
  end

  def down
  	drop_table :moods
  end
end

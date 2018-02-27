Sequel.migration do
  up do
    create_table(:moods) do
      primary_key :id
      integer :mood
      string :mood_reason
      datetime :logged_at
    end
  end

  down do
    drop_table(:moods)
  end
end

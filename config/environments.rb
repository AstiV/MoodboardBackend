DB = Sequel.connect(ENV['DATABASE_URL'] || 'postgres://localhost/Moods')

#DB = Sequel.connect(ENV['DATABASE_URL'] || 'postgres://localhost/moodsdatabase')
DB = Sequel.connect(ENV['DATABASE_URL'] || 'postgres://david:david@localhost/moodsdatabase')

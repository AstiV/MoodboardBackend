#DB = Sequel.connect(ENV['DATABASE_URL'] || 'postgres://localhost/postgres')
DB = Sequel.connect('postgres://david:david@localhost/moodsdatabase')
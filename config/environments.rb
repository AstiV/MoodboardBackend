DB = Sequel.connect(ENV['DATABASE_URL'] || 'postgres://david:david@localhost/moodsdatabase')
#DB = Sequel.connect('postgres://david:david@localhost/moodsdatabase')
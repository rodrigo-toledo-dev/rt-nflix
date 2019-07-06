# encoding: utf-8

Genre.destroy_all
User.destroy_all

Tmdb::Genre.list["genres"].each do |genre|
  Genre.create!(name: genre["name"], identification: genre["id"])
end

User.create!(name:  'Rodrigo Toledo', birthday: '1985-10-21'.to_date, email: 'rodrigo@rtoledo.inf.br', password: 'asdqwe123', password_confirmation: 'asdqwe123')

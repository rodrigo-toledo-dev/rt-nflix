# encoding: utf-8
{
  'Action' => 'Ação',
  'Adventure' => 'Aventura',
  'Comedy' => 'Comédia',
  'Crime' => 'Crime',
  'Drama' => 'Drama',
  'Fantasy' => 'Fantasia',
  'Historical' => 'Histórico',
  'Historical fiction' => 'Ficção Histórica',
  'Horror' => 'Horror',
  'Magical realism' => 'Realismo Mágico',
  'Mystery' => 'Mistério',
  'Philosophical' => 'Filosofia',
  'Political' => 'Política',
  'Romance' => 'Romance',
  'Saga' => 'Saga',
  'Satire' => 'Sática',
  'Science fiction' => 'Ficção Científica',
  'Social' => 'Social',
  'Thriller' => 'Suspense',
  'Urban' => 'Urbanismo',
  'Western' => 'Faroeste'
}.map do |identification, name|
  Genre.create!(name: name, identification: identification)
end

User.create!(name:  'Rodrigo Toledo', birthday: '1985-10-21'.to_date, email: 'rodrigo@rtoledo.inf.br', password: 'asdqwe123', password_confirmation: 'asdqwe123')

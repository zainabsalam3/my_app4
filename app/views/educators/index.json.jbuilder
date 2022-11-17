json.educators @educators do |educator|
json.partial! 'educator', educator:educator


json.universities @universities do |university|
json.id university.id
json.educator_id university.educator_id
json.name university.name
json.phone university.phone
json.Address university.Address
json.prefix university.prefix
json.suffix university.suffix

json.books @books do |book|
json.id book.id
json.university_id book.university_id
json.title book.title
json.author book.author
json.publisher book.publisher
json.genre book.genre
json.year book.year


end
end
end
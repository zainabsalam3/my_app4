json.array!(@educators) do |educator|
json.id educator.id
json.degree educator.degree
json.course_name educator.course_name
json.subject educator.subject
json.campus educator.campus

json.universities do
json.array!(educator.universities) do |university|
json.id university.id
json.educator_id university.educator_id
json.name university.name
json.phone university.phone
json.Address university.Address
json.prefix university.prefix
json.suffix university.suffix

json.books do
json.array!(university.books) do |book|
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
end
end
json.universities @universities do |university|
json.partial! 'university', university:university
end
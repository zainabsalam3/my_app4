Educator.destroy_all
University.destroy_all
Book.destroy_all

5.times do |integer|
    educator = Educator.create!(
    degree: Faker::Educator.degree,
    course_name: Faker::Educator.course_name,
    subject: Faker::Educator.subject,
    campus: Faker::Educator.campus
    )
   
    2.times do |integer| 
    university = educator.universities.create( 
    name: Faker::University.name,
    phone: Faker::PhoneNumber.cell_phone,
    Address: Faker::Address.full_address,
    prefix: Faker::University.prefix,
    suffix: Faker::University.suffix    
    )
   
    2.times do |integer|
    university.books.create( 
    title: Faker::Book.title,
    author: Faker::Book.author,
    publisher: Faker::Book.publisher,
    genre: Faker::Book.genre,
    year: Faker::Vehicle.year    
    )
end
end
end




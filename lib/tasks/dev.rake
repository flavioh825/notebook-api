namespace :dev do
  desc "TODO"
  task setup: :environment do
    puts "Cadastrando contatos..."
    100.times do |i|
    Contact.create!(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      birthdate: Faker::Date.between(65.years.ago, 18.years.ago)
    )
    end
    puts "Contatos cadastrados com sucesso."
  end

end

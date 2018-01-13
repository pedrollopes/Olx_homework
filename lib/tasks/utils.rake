namespace :utils do
  desc "Cria Anúncios Fake"
  task generate_ads: :environment do
    puts "Cadastrando ANÚNCIOS..."

    20.times do
      Ad.create!(
        title: Faker::Lorem.sentence([2,3,4,5].sample),
        description: Faker::Lorem.sentence([2,3].sample),
        member: Member.all.sample,
        price: "#{Random.rand(200)},#{Random.rand(99)}",
        image: File.new(Rails.root.join('public', 'template', 'images-for-ads', "#{Random.rand(4)}.jpg"), 'r')
      )
    end
  end

end
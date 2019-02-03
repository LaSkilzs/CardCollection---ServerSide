require 'csv'
require 'byebug'
namespace :import do

  desc "Import makes from csv"
  task makes: :environment do
    filename = File.join Rails.root, 'db/csv/makes.csv'

    CSV.foreach(filename, headers: true) do |row|
      Make.create(unique: row["unique"], name: row["name"])
    end
  end

  desc "Import cars from csv"
  task cars: :environment do 
    carFilename  = File.join Rails.root, 'db/csv/cars.csv'

    CSV.foreach(carFilename, headers: true) do |row|
      Car.create(unique: row["unique"], name: row["name"], model: row["model"], price: row["price"], favorite: row["favorite"],likes: row["likes"], summary: row["summary"], horsepower: row["horsepower"].to_i, max_speed: row["max_speed"].to_i, acceleration_secs: row["acceleration_secs"].to_f, drive: row["drive"], body: row["body"], image1: row["image1"], image2: row["image2"], make_id: row["make_id"].to_i)
    end 
  end


end

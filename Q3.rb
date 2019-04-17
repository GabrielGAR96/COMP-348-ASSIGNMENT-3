f = File.new("/cars.txt", "w")
f.puts("65101km, Sedan, Manual, 18131A, FWD, Used, 5.5L/100km, Toyota, camry, SE,{AC, Heated Seats, Heated Mirrors, Keyless Entry}, 2010
coupe, 1100km, auto, RWD, Mercedes, CLK, LX, 18FO724A, 2017, {AC, Heated Seats, Heated Mirrors, Keyless Entry, Power seat}, 6L/100km, Used
AWD, SUV, 0km, auto, new, Honda, CRV, LE, 19BF723A, 8L/100km, 2018, {Heated Seats, Heated Mirrors, Keyless Entry}")
f.close

f = File.readlines("/cars.txt", "r")

#puts f

#class Car_maker 
# attr_accessor :car_maker
#
# def initialize(car_maker)
# @Car_maker = car_maker
# end

#end

class Car_model #< Car_maker

attr_accessor :km, :type, :transmission, :stock, :drivetrain, :status, 
:fuel, :car_maker, :model, :year, :trim, :features

def initialize(km, type, transmission, stock, driveTrain, status, fuelEconomy, 
car_maker, model, year, trim, setOfFeatures) 
#super(car_maker)
@km, @type, @transmission, @stock, @driveTrain, @status, @fuelEconomy, @car_maker, @model, @year, 
@trim, @setOfFeatures = km, type, transmission, stock, 
driveTrain, status, fuelEconomy, car_maker, model, year, trim, setOfFeatures
end

def printVehicle
return "(#@km, #@type, #@transmission, #@stock, #@driveTrain, #@status, #@fuelEconomy, 
#@car_maker, #@model, #@year, #@trim, #@setOfFeatures)"
end



end

$listings = []

def self.convertListings2Catalogue(filename)

f = File.open(filename, "r")
f.each_line do |line|

km=line[/[0-9]+km/]
t = line[(Regexp.union(/sedan/i, /coupe/i, /hatchback/i, /station/i, /suv/i))]
trans = line[(Regexp.union(/auto/i, /manual/i, /steptronic/i))]
dt = line[(Regexp.union(/fwd/i, /rwd/i, /awd/i))]
status = line[(Regexp.union(/used/i, /new/i))]
car_maker = line[(Regexp.union(/honda/i, /toyota/i, /mercedes/i, /bmw/i, /lexus/i, /hyuundai/i))] 
stock = line.scan(/(\d+[a-z0-9]+[a-z](?<!km\b))(?:,|$)/i).first
year = line.scan(/(\d{4}(?<!km\b))(?:,|$)/).first
trim = line.scan(/\b[a-zA-Z]{2}\b/).first
fuel = line.scan(/[\d.]+L\/\d*km/).first
set_of_features = line.scan(/\{(.*?)\}/).first 
model = line[(Regexp.union(/camry/i, /clk/i, /crv/i, /328i/i))]

listing = { kilometers: km, type: t, transmission: trans, stock: stock, drivetrain: dt, status: status, fuelecon: fuel, car_maker: car_maker, model: model, year: year, trim: trim, setoffeatures: set_of_features}

$listings.push listing

end 
return $listings 
end

def add2Inventory(newlisting)
f = File.open("/cars.txt", "w")
f.puts(newlisting)
f.close
convertListings2Catalogue("/cars.txt")
end

def self.searchInventory(argument)

puts $listings.find {|x| x[:car_maker] == "Mercedes"}

#return convertListings2Catalogue("/cars.txt").find{|x| x[:car_maker] == "Mercedes"}
end

def self.saveCatalogue2File()
puts $listings.sort_by{|v| v[:car_maker]}
end

#saveCatalogue2File("/cars.txt")

#puts $listings
convertListings2Catalogue("/cars.txt")
puts " "
#puts $listings
puts " "
searchInventory({"car_maker" => "Honda"})
puts " "
#saveCatalogue2File()
add2Inventory("0km, Manual, coupe, 19231A, RWD, New, 12L/100km, BMW, 328i, SE, {AC, Heated Seats, Heated Mirrors, Keyless Entry}, 2018")
puts $listings
#puts File.read("/cars.txt")
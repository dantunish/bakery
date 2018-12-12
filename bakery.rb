require 'sinatra'
require 'csv'


get '/' do
    erb :index
end

class Cake 
    attr_accessor :name
    attr_accessor :image
    attr_accessor :description
    attr_accessor :price

    def initialize(name, image, description, price)
        @name = name
        @image = image
        @description = description
        @price = price
    end

end

get '/cake' do
    erb :cake
end

@all  = [
    Cake.new('Chocolate', 'https://www.handletheheat.com/wp-content/uploads/2018/08/Best-Chocolate-Cake-SQUARE.jpg', 'Grown from Ecuador', '30.00'),
    Cake.new('Red Velvet', 'https://cafedelites.com/wp-content/uploads/2018/05/Red-Velvet-Cake-IMAGE-43.jpg', 'Grown from My House', '40.00'),
    Cake.new('Pople', 'https://i.imgur.com/s3mg809.jpg', 'Grown Organically', '50.00'),
]

=begin
for i in @all 
    puts i
    puts i.name
    puts  i.image
    puts  i.description
    puts  i.price
end
=end
class Muffin 
    def initialize(name, image, description, price)
        @name = name
        @image = image
        @description = description
        @price = price
    end
end

get '/muffin' do
    erb :muffin
end

muffin1 = Muffin.new('', '', '', '')
muffin2 = Muffin.new('', '', '', '')
muffin3 = Muffin.new('', '', '', '')

class Cookies
    def initialize(name, image, description, price)
        @name = name
        @image = image
        @description = description
        @price = price
    end
 end
 
cookie1 = Cookies.new('', '', '', '')
cookie2 = Cookies.new('', '', '', '')
cookie3 = Cookies.new('', '', '', '')

get '/cookie' do
    erb :cookie
end
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
    @all  = [
    Cake.new('Chocolate', 'https://www.handletheheat.com/wp-content/uploads/2018/08/Best-Chocolate-Cake-SQUARE.jpg', 'Grown from Ecuador', '30.00'),
    Cake.new('Red Velvet', 'https://cafedelites.com/wp-content/uploads/2018/05/Red-Velvet-Cake-IMAGE-43.jpg', 'Grown from My House', '40.00'),
    Cake.new('Pople', 'https://i.imgur.com/s3mg809.jpg', 'Grown Organically', '50.00'),
]
    erb :cake
end


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
    @river = [
        Muffin.new('Greek YOugurt Chocolate Muffin', 'https://thebusybaker.ca/wp-content/uploads/2018/08/best-ever-greek-yogurt-chocolate-chip-muffins-fbig3.jpg', 'Greak Muffin Outsourced from the best', '20.00'),
        Muffin.new('Oatmeal Healthy Muffin', 'https://dailyburn.com/life/wp-content/uploads/2016/02/Pumpkin-Spice-Oatmeal-Muffins-Recipe.jpg', 'Exoitc Muffin from Indonesia', '15.00'),
        Muffin.new('Crazy Muffins!!', 'https://3.bp.blogspot.com/-3wgtFuSDyPk/WC4ye0a0g7I/AAAAAAAAek0/WGUPHR35OPU-NHv1GZcfvKi_i3i9kI00QCLcB/s1600/Crazy%2BCake%2BCupcakes%2B3.jpg', 'Even we Don\'t Know What\'s inside!?!?', '25.00')
    ]
    erb :muffin
end

class Cookies
    def initialize(name, image, description, price)
        @name = name
        @image = image
        @description = description
        @price = price
    end
 end

get '/cookie' do
    @rainbow = [
        Cookies.new('Macedonian Cookie', 'https://i0.wp.com/www.livewellbakeoften.com/wp-content/uploads/2018/02/White-Chocolate-Macadamia-Nut-Cookies-3.jpg?resize=1360%2C2040', 'Taken straight from the source', '2.00'),
        Cookies.new('Hamburger Cookies', 'https://tryityoumightlikeit.files.wordpress.com/2011/08/hamburger-cookies-final.jpg', 'Cooked from the oven and came out medium rare', '5.00'),
        Cookies.new('dOUble CHOCOLATE CHIP COOKIES', 'https://www.thereciperebel.com/wp-content/uploads/2016/01/Moms-Double-Chocolate-Cookies-www.thereciperebel.com-1-of-2.jpg', 'DOUBLE THE CHOCOLATE!! DOUBLE THE MADNESS!!', '4.00')
    ]
    erb :cookie
end
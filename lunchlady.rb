
require 'pry' 

@main_menu = [ { dish: 'Mystery meat', price: 5.00 },
               { dish: 'Salmon', price: 8.00}, 
               { dish: 'Surprise grub', price: 15.00 }]
@side_dishes = [ {dish: 'French Fries', price: 2.00},
                 {dish: 'Tator Tots', price: 2.50},
                 {dish: 'Fruit Cup', price: 3.00} ]
@order = []
  def menu
    puts 'What main dish would you like?'
    puts '1) Mystery meat (5.00)'
    puts '2) Salmon (8.00)'
    puts '3) Surprise grub (15.00)'
    puts '4) Start Over'
    @user_main_choice = gets.chomp 
    case @user_main_choice
    when '1' 
      main_dish = @main_menu[0]
    when '2'
      main_dish = @main_menu[1]
    when '3'
      main_dish = @main_menu[2]
    when '4'
      @order.clear 
      menu
    else
      puts 'Ivalid entry, please try again.'
      menu 
    end
    @order << main_dish
  end 

  def side_dish
    puts 'What side dish would you like?'
    puts '1) French fries (2.00)'
    puts '2) Tator tots (2.50)'
    puts '3) Fruit cup (3.00)'
    puts '4) Start over'
    @user_side_dish = gets.chomp  
    case @user_side_dish
    when '1'
      user_side = @side_dishes[0]
    when '2'
      user_side = @side_dishes[1]
    when '3'
      user_side = @side_dishes[2]
    when '4'
      @order.clear 
      menu 
    else
      puts 'Invalid entry, please try again.'
      side_dish
    end
    @order << user_side 
  end

  def total(main_dish, side_dish1, side_dish2)
    puts "Your order consists of #{main_dish[:dish]}, #{side_dish1[:dish]}, and #{side_dish2[:dish]}."
    cost = main_dish[:price] + side_dish1[:price] + side_dish2[:price]
    puts "Your toatl is #{cost}."
  end 

menu

side_dish_count = 0

while side_dish_count < 2 do
  side_dish_count = side_dish_count + 1
  side_dish
end

total(@order[0], @order[1], @order[2])



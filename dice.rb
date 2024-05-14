require "sinatra"
require "sinatra/reloader"


get("/")do  

  erb(:elephant)
  
end


get("/zebra")do
  "We must add the route in order for the browser to connect to the path"
end

get("/giraffe")do
  "this is to make sure your app is reloading automatically `gem sinatra-contrib` "
end

get("/dice/2/6")do

  first_die  = rand(1..6)

  second_die  = rand(1..6)

  sum = first_die + second_die

  @outcome = "Your first die rolled #{first_die
  } and your second die rolled #{second_die
  } your total is #{sum}"

  erb(:two_six)
end


get("/dice/2/10")do
  
  first_die = rand(1..10)

  second_die = rand(1..10)

  sum = first_die + second_die

  @outcome = "Your first die rolled #{first_die
  } and your second die rolled #{second_die
  } your total is #{sum}"
  
  erb(:two_ten)

end



get("/dice/1/20")do
  
  @first_die = rand(1..20)

  erb(:one_twenty)

end


get("/dice/5/4")do

  first_die = rand(1..4)

  second_die = rand(1..4)

  third_die = rand(1..4)

  fourth_die = rand(1..4)

  fifth_die = rand(1..4)

  sum = first_die + second_die + third_die + fourth_die
  + fifth_die
  
  @outcome = "Your first die rolled #{first_die
  } your second die rolled #{second_die
  } third die rolled #{third_die} your fourth die rolled #{fourth_die} your fifth die rolled #{fifth_die}your total is #{sum}"

  erb(:five_four)

end


get("/dice/3/12")do
  
  @first_die = rand(3..12)
  
  @second_die = rand(3..12)
  
  @third_die = rand(3..12)
  
  @sum = first_die + second_die + third_die

  erb(:three_twelve)
 
end

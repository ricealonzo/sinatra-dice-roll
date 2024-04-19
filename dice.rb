require "sinatra"
require "sinatra/reloader"


get("/")do  
"<h1> Pick and Roll </h1>
  <a href='/zebra'>Zebra</a>
  <a href='/dice/2/6'>2 Dice 6 Sides</a>
  <a href='/dice/2/10'>2 Dice 10 Sides</a>
  <a href='/dice/1/20'>1 Die 20 Sides</a>
  <a href='/dice/5/4'>5 Dice 4 Sides</a>
  <a href='/dice/3/12'>3 Dice 12 Sides</a>
  "
  
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

outcome = "Your first die rolled #{first_die
} and your second die rolled #{second_die
} your total is #{sum}"

" <h1>2 dice 6 Sides</h1>
<h3> #{outcome} </h3> 
<a href='/dice/2/6'>Roll Again</a>
<a href='/'>Home Page</a>"
  
end


get("/dice/2/10")do
first_die = rand(1..10)

second_die = rand(1..10)

sum = first_die + second_die

outcome = "Your first die rolled #{first_die
} and your second die rolled #{second_die
} your total is #{sum}"

" <h1>2 dice 10 Sides</h1>
<h3> #{outcome} </h3><br>
<a href='/dice/2/6'>Roll Again</a>
<a href='/'>Home Page</a>"
end



get("/dice/1/20")do
first_die = rand(1..20)

"<h1>1 die 20 Sides <h1>
<h3>You Have rolled #{first_die}!<h3><br>
<a href='/dice/2/6'>Roll Again</a>
<a href='/'>Home Page</a></h>
"
end


get("/dice/5/4")do
first_die = rand(1..4)

second_die = rand(1..4)

third_die = rand(1..4)

fourth_die = rand(1..4)

fifth_die = rand(1..4)

sum = first_die + second_die + third_die + fourth_die
+ fifth_die
outcome = "Your first die rolled #{first_die
} your second die rolled #{second_die
} third die rolled #{third_die} your fourth die rolled#{fourth_die} your fifth die rolled #{fifth_die}your total is #{sum}"

" <h1>5 dice 4 Sides</h1>
<h3> #{outcome} </h3><br>
<a href='/dice/2/6'>Roll Again</a>
<a href='/'>Home Page</a> "
end


get("/dice/3/12")do
  first_die = rand(3..12)
  second_die = rand(3..12)
  third_die = rand(3..12)
  sum = first_die + second_die + third_die
  "<table>
    <tr>
      <th> First Die </th>
      <th> Second Die </th>
      <th> Third Die </th>
      <th> Sum </th>
    </tr>
  
    <tr>
      <td>#{first_die} </td>
      <td>#{second_die} </td>
      <td>#{third_die} </td>
      <td>#{sum} </td>
    </tr>
  </table>
  <br>
<a href='/dice/2/6'>Roll Again</a>
<a href='/'>Home Page</a>" 
end

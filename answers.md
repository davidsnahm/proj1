# Q0: Why is this error being thrown?
There is no Pokemon controller.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The seeds.rb file populates the database with default values and random levels. They all have 100 health.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line looks for a capture route using PATCH, and sends the user to that route. 

# Question 3: What would you name your own Pokemon?
Railster

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the 'show' action for the trainers controller because show.html.erb needed a trainer instance. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The error message is stored, so that when an error occurs, the error message is displayed to the user. 

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
https://quiet-bastion-21124.herokuapp.com/

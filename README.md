The Brief

You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

During your [mock] interview, you will pair on saving the data to a file."

Create a new git repository and write code to fulfill the brief to the best of your ability. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.


To use this VERY SIMPLY App:-

- Make a new directory and clone my repo down https://github.com/supasuma/database_server.git
- Run bundle
- In the command line run the app "ruby ./app.rb"
- Visit /set and enter your key value pair i.e. "/set?name=Summer"
- Visit /get to have the value of any entered keys returned i.e. "/get?key=name"

Technologies:-

- I used Ruby with Sinatra and tested with Rspec/Capybara

Summary:-

Despite the simple nature of this apps functionality I struggled with it conceptually - this can be seen when visiting the root page ;-)

Params hashes are stored in the $key_values hash through the set request.  Their keys are then accessible via the /get route and the hash keyword "key" (lame pun).   Unfortunately I was unable to get the app working without a global variable, but am hopeful sessions can help me solve this.


To use this VERY SIMPLY App:-

- Make a new directory and clone my repo down https://github.com/supasuma/database_server.git
- Run bundle
- In the command line run the app "ruby ./app.rb"
- Visit /set and enter your key value pair i.e. "/set?name=Summer"
- Visit /get to have the value of any entered keys returned i.e. "/get?key=name"


Despite the simple nature of this apps functionality I struggled with it conceptually - this can be seen when visiting the root page ;-)

Params hashes are stored in the $key_values hash through the set request.  Their keys are then accessible via the /get route and the hash keyword "key" (lame pun).   Unfortunately I was unable to get the app working without a global variable, but am hopeful sessions can help me solve this.

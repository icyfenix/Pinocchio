Pinocchio
=========

Puppet app for Heroku Ops Challenge

Endpoints
---------
A couple of simple endpoints geared towards causing trouble:

1. /wait[/time\_to\_wait] - Causes the app to randomly wait between 1 to 20 seconds before responding, or else a specific time to wait.

2. /load\_wait - Makes the app wait proportional to the number of times load\_wait is called. Currently set to slow down by 1 second more every 50 calls. This is per dyno, and reset on a dyno restart.

3. /die - Kills the app with a SIGABRT. (Note, gunicorn ignores this, so probably we'll have to deploy the raw app) 

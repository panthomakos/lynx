# How to Contribute

* Setup ruby and run `bundle` to install gems.
* Ensure mysql is installed and started (example: `brew services start|stop mysql`).
* Setup a MySQL user for testing (example: `mysql --user=root -e 'create user ${USER}@localhost'`).
* Run tests w/ `bundle exec rake test`.

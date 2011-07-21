Extjra
======

Extjra is a Rails 3 engine that provides an interface for managing your data. It uses Ext JS for the user interface.

Installation
------------

In your `Gemfile`, add the following dependencies:

    gem 'extjra', :git => 'git://github.com/yehezkielbs/extjra.git'

Run:

    $ bundle install

Then, check the available routes:

    $ rake routes

Usage
-----

Start the server:

    $ rails server

Then you should be able to manage your data at http://localhost:3000/admin.

To Do
-----

A lot more. This is still the initial commit.

Contributing to rest_engine
---------------------------

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2011 Yehezkiel Syamsuhadi. See LICENSE.txt for
further details.

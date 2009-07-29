Christchurch Creative Space Site
================================

This is the official repository for the [Christchurch Creative Space site](http://nztech.org/chchspace).

To-do
-----

* Photos (Flickr)
* Countdown
* Videos
* Who's who
* Mailing list widget

Contributing
------------

If you'd like to contribute to the site:

* Fork this repository
* Make your changes
* Make a pull request

How to run the site locally
---------------------------

### System setup

1. [Install and set up git](http://github.com/guides/Home) (test with `git --version`)
1. [Install Ruby](http://www.ruby-lang.org/en/downloads/) (test with `ruby --version`)
2. [Install RubyGems](http://rubyforge.org/frs/?group_id=126) (test with `gem --version`)
    * Linux/OS X
    
             wget http://rubyforge.org/frs/download.php/60718/rubygems-1.3.5.tgz
             tar xzf rubygems-1.3.5.tgz
             cd rubygems-1.3.5/
             sudo ruby setup.rb
    * Windows
        1. [Download and unzip](http://rubyforge.org/frs/download.php/60718/rubygems-1.3.5.zip)
        2. Open a command prompt and `cd` into the unzipped directory
        3. Run `ruby setup.rb`
3. Install Sinatra  with `gem install sinatra` (sudo if needed)

### Running locally

1. `cd` into the chchspace-directory
2. `shotgun site.rb`
3. [http://localhost:4567](http://localhost:4567)
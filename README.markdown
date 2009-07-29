Christchurch Creative Space Site
================================

This is the official repository for the [Christchurch Creative Space site](http://nztech.org/chchspace).

You can submit ideas or report bugs under [issues on GitHub](http://github.com/chchspace/site/issues).


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

### Getting the code

If you just want to play with the site first, you can use the download button at the top, or use `git clone git://github.com/chchspace/site.git`.

If you'd like to contribute, you're welcome to submit email patches or, preferably, fork the repository:

1. [Sign up for a GitHub account](https://github.com/signup/free)
2. Hit the fork button at the top
3. Clone the forked repository with `git clone your-shiny-new-clone-url`
4. Use `git add pathname` and `git commit` to make your changes (`man git`)
5. Push back to GitHub when you're ready with `git push origin master`
6. Make a pull request (button at top) when you'd like to submit changes

### Running locally

1. `cd` into the chchspace-directory
2. `shotgun site.rb`
3. [http://localhost:9393](http://localhost:9393)
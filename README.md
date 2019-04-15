# Installation

* https://gorails.com/setup/

## Windows installation

1. go to https://rubyinstaller.org/ and download ruby installer (ruby + devkit 2.5.3)
2. execute installer
3. choose option 3  to setup/install MSYS2 and MINGW development toolchain
4. open command console
5. ridk exec pacman -S mingw-w64-x86_64-sqlite3
6. gem uninstall sqlite3
7. gem install sqlite3 --platform ruby
8. rdik exec packman -S mingw-w64-x86_64-libxslt
9. gem install nokogiri --platform ruby -- --use-system-libraries
10. download and install git https://git-scm.com/download/win


## Ubuntu/Linux installation

1. apt install curl
2. curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
3. curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
4. echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
5. sudo apt-get update
6. sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
7. gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
8. curl -sSL https://get.rvm.io | bash -s stable
9. source ~/.rvm/scripts/rvm
10. rvm install 2.5.3
11. rvm use 2.5.3 --default
12. ruby -v
13. gem install bundler


## OSX installation

1. install brew: ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
2. brew install ruby-build
3. curl -sSL https://get.rvm.io | bash -s stable
4. source ~/.rvm/scripts/rvm
5. rvm install ruby-2.5.3
6. rvm use 2.5.3 --default
7. ruby -v
8. gem install bundler

# Rails 1st Application

1. gem install rails
2. rails new MyApp
3. cd MyApp
4. rails s
5. Open http://localhost:3000

# Creating a Rails ToDoApp

1. rails new ToDoApp -m template.rb
2. cd ToDoApp
3. rails generate scaffold ToDoItem done:boolean title:string
4. rails db:migrate
5. rails db:migrate RAILS_ENV=test
6. rails s
7. MVC, directory, generated files
8. Models
9. bootstrap and views
10. rails generate channel ToDoItem
11. rails generate scaffold Category (belongs_to, has_many)

#!/bin/sh
rails new helloworld
cd helloworld
bin/spring stop
bin/rails g controller hello index
cd ..
ruby edit_controller_index_action.rb

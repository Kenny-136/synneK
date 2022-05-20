require 'sinatra'
require 'bcrypt'
require 'HTTParty'
require 'pry'

#database
require './db/db'

#controllers
require './controllers/jokes_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'

#helpers
require './helpers/sessions_helper'

#models
require './models/joke'
require './models/user'

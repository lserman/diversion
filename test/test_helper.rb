require 'rubygems'
require 'bundler'
Bundler.setup
require 'diversion'
require 'rails/all'
require "rails/test_help"
require 'rack/test'

ENV['RAILS_ENV'] = 'test'
require File.expand_path('../api-app/config/application', __FILE__)
ApiApp::Application.initialize!
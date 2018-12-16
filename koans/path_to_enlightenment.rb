# The path to Ruby Enlightenment starts with the following:

$LOAD_PATH << File.dirname(__FILE__)

require 'about_nil'
require 'about_objects'
require 'about_arrays'
require 'about_array_assignment'
require 'about_hashes'
require 'about_strings'
require 'about_symbols'
require 'about_methods'
in_ruby_version("2") do
  require 'about_keyword_arguments'
end
require 'about_control_statements'
require 'about_true_and_false'
require 'about_iteration'
require 'about_blocks'
require 'about_classes'
require 'about_open_classes'
require 'about_inheritance'
require 'about_modules'
require 'about_class_methods'
require 'about_message_passing'
in_ruby_version("jruby") do
  require 'about_java_interop'
end

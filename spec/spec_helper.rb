# frozen_string_literal: true

require 'bundler/setup'
require 'simplecov'
require 'codeowners/cli/main'

Dir['lib/**/*.rb'].each { |file| require file[4..-1] }

SimpleCov.start do
  add_filter '/spec/'
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

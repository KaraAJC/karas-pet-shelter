ENV["APP_ENV"] = "test"

require "rspec"
require "faker"
require 'database_cleaner'
require_relative "../config/app"

# Checks for pending migration and applies them before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!


RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with :truncation, except: %w(ar_internal_metadata)
  end
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end

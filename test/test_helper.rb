ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
end

class ActionDispatch::IntegrationTest
	  # Make the Capybara DSL available in all integration tests
	 include Capybara::DSL

	  # Crowdfunder is to be changed to the name of your app
	  Capybara.app = Crowdfunder::Application
	  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
	  #
	  # Note: You'll currently still have to declare fixtures explicitly in integration tests
	  # -- they do not yet inherit this setting
	  # fixtures :all

	  # Add more helper methods to be used by all tests here...
	  teardown do
	  Capybara.reset_sessions!    # Forget the (simulated) browser state
	  Capybara.use_default_driver # Revert Capybara.current_driver to Capybara.default_driver
	end
end

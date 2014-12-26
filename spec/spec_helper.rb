$:.push File.expand_path("../../../lib", __FILE__)

RSpec.configure do |config|
  config.order = :random
  config.disable_monkey_patching!
end

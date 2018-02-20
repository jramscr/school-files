module Api
  # Note: Api base module, implement as many versions as needed for the rack application.
  class Base < Grape::API
    mount Api::V1::Base
  end
end

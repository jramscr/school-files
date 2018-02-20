module Api
  module V1
    class Base < Grape::API
      mount Api::V1::Students
      mount Api::V1::Teachers
      # mount API::V1::AnotherResource
    end
  end
end
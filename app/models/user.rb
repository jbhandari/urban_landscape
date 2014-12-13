class User < ActiveRecord::Base

  include Clearance::User

  has_many :landscapes, dependent: :destroy
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable,
          :rememberable, :trackable, :validatable

  extend FriendlyId
  friendly_id :name, use: :slugged

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :business_name
  # attr_accessible :title, :body

  has_many :pins
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # I mean I should be the only user right?
  if Rails.env.production?
    devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
  else
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  end

  has_many :projects
end

class User < ApplicationRecord
  rolify
  validates_presence_of :fname,:lname,:state,:district,:mobile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
end

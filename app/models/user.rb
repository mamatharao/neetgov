class User < ApplicationRecord
  rolify
  validates_presence_of :fname,:lname,:state,:mobile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #validates :password, :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\Z/i, message: "must be at least 6 characters and include one number and one letter."}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
end

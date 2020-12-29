class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validatates :name, presence: true
  validatates :profile, presence: true
  validatates :occupation, presence: true
  validatates :position, presence: true

end

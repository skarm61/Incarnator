module Incarnator
  class Account < ActiveRecord::Base
    include Gravtastic
    gravtastic

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable,
           :confirmable

    validates :email, :user_name, presence: true, uniqueness: true
  end
end

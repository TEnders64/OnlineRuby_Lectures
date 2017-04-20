class User < ActiveRecord::Base
    has_many :favorite_films
    has_many :films, through: :favorite_films

    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

    validates :first_name, :last_name, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

    def full_name
        puts "#{self.first_name} #{self.last_name}"
    end
end

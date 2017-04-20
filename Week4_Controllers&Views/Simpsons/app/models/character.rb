class Character < ActiveRecord::Base
    validates :first_name, :last_name, :workplace, presence: true
    validates :first_name, :last_name, uniqueness: {scope: [:first_name, :last_name]}

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end

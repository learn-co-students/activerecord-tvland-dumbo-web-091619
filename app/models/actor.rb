class Actor < ActiveRecord::Base
has_many :characters
has_many :shows, through: :characters

    def full_name
        fullN = "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        arr = []
        self.characters.map {|show| "#{show.name} - #{Show.find(show_ids)[0].name}" }
    end
    

end
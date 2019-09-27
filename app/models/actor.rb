class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters_roles.map do |character_role|
      "#{character_role[0]} - #{character_role[1]}"
    end
  end

  private 
  def characters_roles
    character_names = self.characters.map(&:name)
    show_names = self.shows.map(&:name)
    character_names.zip(show_names)
  end

end
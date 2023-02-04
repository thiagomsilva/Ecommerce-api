module NameSearchable
    extend ActiveSupport::Concern
    
    included do
        # Disponbilizar o scope do model chamando search_by_name.
        scope :search_by_name, -> (value) do
            self.where("name ILIKE ?", "%#{value}%")
        end
    end
end
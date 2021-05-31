class Flat < ApplicationRecord
  # def self.search(search)
  #   if search
  #     flat_type = Flat.find_by(name: search)
  #     if flat_type
  #       self.where(id: flat_type)
  #     else
  #       Flat.all
  #     end
  #   else
  #     Flat.all
  #   end
  # end
end

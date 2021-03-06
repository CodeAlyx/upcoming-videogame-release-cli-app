module Findable
  module ClassMethods
    def find_by_name(name)
      result = nil
      self.all.each do |item|
        result = item if item.name.downcase.include?(name.downcase)
      end
      result
    end

    def find_or_create_by_name(name)
      result = self.find_by_name(name)
      if result == nil
        result = self.create(name)
      end
      result
    end
  end
end

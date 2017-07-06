module RecipesHelper
    require 'ruby-measurement'
    def converter
        Measurement.parse('3 feet')
    end
end

class WashingMachine < ApplicationRecord
    def status
        is_available ? 'Aavailable' : 'Disavailable'
    end

    def display_image
        "disavailable" unless is_available
    end
end

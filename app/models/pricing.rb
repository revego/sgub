class Pricing < ApplicationRecord
    belongs_to :gig
    enum_pricing_type: [:basic, :standard, :preview]
end

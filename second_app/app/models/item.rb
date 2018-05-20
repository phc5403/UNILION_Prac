class Item < ApplicationRecord
    # Owner에게 속해있음.
    belongs_to :owner
end

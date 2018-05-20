class Owner < ApplicationRecord
    # 여러개의 Items을 가지고 있음.
    has_many :items
end

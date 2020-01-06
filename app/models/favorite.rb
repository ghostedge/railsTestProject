class Favorite < ApplicationRecord
    self.table_name = "t_zhenai_favorite"
    validates :id, :food, :song, :book, :thing, :man, :presence =>true
end

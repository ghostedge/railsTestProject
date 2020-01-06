class Recomd < ApplicationRecord
    self.table_name = "recomd"
    validates :id, :rc1, :rc2, :presence =>true
    validates :rc3, :rc4, :rc5, :presence =>true
end

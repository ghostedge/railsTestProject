class BasicInfo < ApplicationRecord
    self.table_name = "t_zhenai_base"
    validates :id, :name, :sex, :presence =>true
    validates :local, :age, :education, :presence =>true
    validates :status, :height, :salary, :presence =>true
    validates :introduce, :photo, :link, :presence =>true
end

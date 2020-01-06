class Analysis < ApplicationRecord
    self.table_name = "t_zhenai_analysis"
    validates :id, :sex, :local, :presence =>true
    validates :age, :education, :status, :presence =>true
    validates :height, :salary, :nation, :presence =>true
    validates :shape, :zodiac, :hasChild, :presence =>true
    validates :wantChild, :marriageTime, :house, :presence =>true
    validates :car, :somke, :drink, :presence =>true

end

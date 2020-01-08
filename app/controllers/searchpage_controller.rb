class SearchpageController < ApplicationController
  def home
  end

  def proce 
    $age = params[:age]
    $sex = params[:sex]
    $height = params[:height]
    $education = params[:education]
    $salary = params[:salary]
    redirect_to :action =>"result"
  end
  def result
    #age = params[:age]
    age = $age
    query = ""
    if age == "18-20"
      query += "age>=18 AND age<=20"
      elsif age == "21-25"
      query += "age>=21 AND age<=25"
      elsif age == "26-30"
      query += "age>=26 AND age<=30"
      else
    end
    query += " AND "  
    #sex = params[:sex]
    sex = $sex
    if sex == "男"
      query += "sex = '男士'"
      else 
      query += "sex = '女士'"
    end
    query += " AND " 
    #height = params[:height]
    height = $height
    if height == "160以下"
      query += "height < 160"
      elsif height == "160-170"
      query += "height >= 160 AND height <= 170"
      elsif height == "170-180"
      query += "height >=170 AND height <=180"
      elsif height == "180以上"
      query += "height > 180"
    end
    query += " AND " 
    #education = params[:education]
    education = $education
    if education == "高中及以下"
      query += "education = '高中及以下'"
      elsif education == "中专"
        query += "education = '中专'" 
      elsif education == "大专"
        query += "education = '大专'"
      elsif education == "大学本科"
        query += "education = '大学本科'"
      elsif education == "硕士"
        query += "education = '硕士'"
      elsif education == "博士"
        query += "education = '博士'"
    end
    query += " AND " 
    #salary = params[:salary]
    salary = $salary
    if salary == "3000元以下"
      query += "salary = 1"
    elsif salary == "3001-5000元"
      query += "salary = 2"
    elsif salary == "5001-8000元"
      query += "salary = 3"
    elsif salary == "8001-12000元"
      query += "salary = 4"
    elsif salary == "12001-20000元"
      query += "salary = 5"
    elsif salary == "20001-50000元"
      query += "salary = 6"
    elsif salary == "50000以上"
      query += "salary = 7"
    end
    @basicInfos = BasicInfo.where(query)
    @basicInfos = @basicInfos.paginate(page:params[:page],per_page:8)
  end
end

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
    @sexdict = Hash["男士"=>"1","女士"=>"2"]
        @salarydict = Hash["3000元以下"=>"1",
        "3001-5000元"=>"2","5001-8000元"=>"3",
        "8001-12000元"=>"4","12001-20000元"=>"5",
        "20001-50000元"=>"6","50000以上"=>"7"]
        @statusdict = Hash["未婚"=>"0",
               "离异"=>"1",
               "丧偶"=>"2"]
        @educationdict = Hash["高中及以下"=>"0",
        "中专"=>"1",
        "大专"=>"2",
        "大学本科"=>"3",
        "硕士"=>"4",
        "博士"=>"5"]

        @shapedict = Hash[
            "体型:一般"=>"0",
            "体型:瘦长"=>"1",
            "体型:苗条"=>"2",
            "体型:高大美丽"=>"3",
            "体型:丰满"=>"4",
            "体型:富线条美"=>"5",
            "体型:运动员型"=>"6",
            "体型:比较胖"=>"7",
            "体型:体格魁梧"=>"8",
            "体型:壮实"=>"9",
            "体型:保密"=>"10",]

        @zodiacdict = Hash["水瓶座(01.20-02.19)"=>"1",
        "双鱼座(02.20-03.20)"=>"2",
        "牡羊座(03.21-04.20)"=>"3",
        "金牛座(04.21-05.20)"=>"4",
        "双子座(05.21-06.21)"=>"5",
        "巨蟹座(06.22-07.22)"=>"6",
        "狮子座(07.23-08.22)"=>"7",
        "处女座(08.23-09.22)"=>"8",
        "天秤座(09.23-10.22)"=>"9",
        "天蝎座(10.23-11.21)"=>"10",
        "射手座(11.22-12.21)"=>"11",
        "魔羯座(12.22-01.19)"=>"12",]

        @hasChilddict = Hash[
            "没有小孩"=>"1",
        "有孩子且住在一起"=>"2",
        "有孩子且偶尔会一起住"=>"3",
        "有孩子但不在身边"=>"4"
        ]
        @wantChilddict = Hash[
            "是否想要孩子:视情况而定"=>"1",
            "是否想要孩子:想要孩子"=>"2",
            "是否想要孩子:不想要孩子"=>"3",
            "是否想要孩子:以后再告诉你"=>"4"
        ]

        @marriageTimedict = Hash[
            "何时结婚:认同闪婚"=>"1",
            "何时结婚:一年内"=>"2",
            "何时结婚:两年内"=>"3",
            "何时结婚:三年内"=>"4",
            "何时结婚:时机成熟就结婚"=>"5"

        ]
            
        @housedict = Hash[
            "和家人同住"=>"1",
            "已购房"=>"2",
            "租房"=>"3",
            "打算婚后购房"=>"4",
            "住在单位宿舍"=>"5",
        ]

        @cardict = Hash[
            "已买车"=>"1",
            "未买车"=>"2"
        ]

        @smokedict = Hash[
            "不吸烟 "=>"1",
            "稍微抽一点烟"=>"2",
            "烟抽得很多"=>"3",
            "社交场合会抽烟"=>"4",
        ]

        @drinkdict = Hash[
            "不喝酒": "1",
            "稍微喝一点酒 ": "2",
            "酒喝得很多": "3",
            "社交场合会喝酒": "4"
        ]

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

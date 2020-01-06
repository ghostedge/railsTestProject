class InfopageController < ApplicationController
    def info 
        iid = params[:id]
        @basicInfo = BasicInfo.find_by(id:iid)
        @favor = Favorite.find_by(id:iid)
        @recomd = Recomd.find_by(id:iid)
        @alalyze = Analysis.find_by(id:iid)
        rc1 = @recomd.rc1.to_i.to_s
        rc2 = @recomd.rc2.to_i.to_s
        rc3 = @recomd.rc3.to_i.to_s
        rc4 = @recomd.rc4.to_i.to_s
        rc5 = @recomd.rc5.to_i.to_s
        @rc1 = BasicInfo.find_by(id:rc1)
        @rc2 = BasicInfo.find_by(id:rc2)
        @rc3 = BasicInfo.find_by(id:rc3)
        @rc4 = BasicInfo.find_by(id:rc4)
        @rc5 = BasicInfo.find_by(id:rc5)
    end
end

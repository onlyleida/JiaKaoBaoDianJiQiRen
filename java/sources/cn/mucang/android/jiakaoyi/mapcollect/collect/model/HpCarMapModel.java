package cn.mucang.android.jiakaoyi.mapcollect.collect.model;

import cn.mucang.android.jiakaoyi.mapcollect.collect.car.CarSrcData;
import com.alibaba.fastjson.JSON;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class HpCarMapModel implements Serializable {
    public long acquisitionTime;
    public String bodyData;
    public String cityCode;
    public String cityName;
    public String coachName;
    public long createTime;
    public String describe;
    public String deviceNumber;
    public long driveSchoolId;
    public String driveSchoolName;
    public boolean hasAdd;
    public long id;
    public boolean isManager;
    public String modelCode;
    public String modelName;
    public int mountingMethod;
    public String plateNum;
    public String title;

    public CarSrcData getCarSrcData() {
        return (CarSrcData) JSON.parseObject(this.bodyData, CarSrcData.class);
    }

    public String getMethodDesc() {
        int i = this.mountingMethod;
        if (i == 1) {
            return "横向";
        }
        return i == 2 ? "纵向" : "";
    }
}

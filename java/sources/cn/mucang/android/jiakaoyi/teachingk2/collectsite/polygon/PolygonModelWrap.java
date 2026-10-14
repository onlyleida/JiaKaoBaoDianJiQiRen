package cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeFactorModel;
import com.alibaba.fastjson.JSON;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PolygonModelWrap implements Serializable {
    public String desc;
    public String examSiteId;
    public int fenceType;
    public double fenceWidth;
    public String gpsData;
    public String id;
    public List<String> images;
    public String name;
    public String qrCode;
    public String safeData;
    public double width;

    public PolygonModel toPolygon() {
        PolygonModel polygonModel = new PolygonModel();
        polygonModel.id = this.id;
        polygonModel.qrCode = this.qrCode;
        polygonModel.name = this.name;
        polygonModel.desc = this.desc;
        polygonModel.examSiteId = this.examSiteId;
        polygonModel.fenceType = this.fenceType;
        polygonModel.width = Math.max(this.width, this.fenceWidth);
        if (n0.g(this.gpsData)) {
            polygonModel.gpsData = JSON.parseArray(this.gpsData, Gps.class);
        }
        if (n0.g(this.safeData)) {
            polygonModel.safeData = (SafeFactorModel) JSON.parseObject(this.safeData, SafeFactorModel.class);
        } else {
            polygonModel.safeData = new SafeFactorModel();
        }
        polygonModel.images = this.images;
        return polygonModel;
    }
}

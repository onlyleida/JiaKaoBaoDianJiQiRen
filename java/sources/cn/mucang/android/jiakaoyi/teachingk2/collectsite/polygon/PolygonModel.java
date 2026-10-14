package cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon;

import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeFactorModel;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PolygonModel implements Serializable {
    public String desc;
    public String examSiteId;
    public int fenceType;
    public List<Gps> gpsData;
    public String id;
    public List<String> images;
    public String name;
    public String qrCode;
    public SafeFactorModel safeData;
    public boolean selected;
    public double width;
}

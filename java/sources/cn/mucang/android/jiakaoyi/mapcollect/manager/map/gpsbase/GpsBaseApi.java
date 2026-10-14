package cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase;

import cn.mucang.android.jiakaoyi.framework.p002e.n;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "forceUseJkyHost", "", "gpsBaseList", "", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;", "areaCode", "", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GpsBaseApi extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n
    protected boolean c() {
        return true;
    }

    public final List<GpsBase> m(String str) throws Exception {
        String strM;
        String str2 = "";
        if (str != null && (strM = r.m("?areaCode=", str)) != null) {
            str2 = strM;
        }
        List<GpsBase> listHttpGetDataList = httpGetDataList(r.m("/api/open/gps-base/list.htm", str2), GpsBase.class);
        r.d(listHttpGetDataList, "httpGetDataList(\"/api/op…ms\", GpsBase::class.java)");
        return listHttpGetDataList;
    }
}

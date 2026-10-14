package cn.mucang.android.jiakaoyi.k3setting;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007J\b\u0010\b\u001a\u00020\u0004H\u0007J\b\u0010\t\u001a\u00020\nH\u0007J\u0012\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/LocalRouteUtil;", "", "()V", "key", "", "getKey", "getRoute", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "getRouteId", "removeRoute", "", "saveRoute", "localRoute", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LocalRouteUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LocalRouteUtil f4185a = new LocalRouteUtil();

    private LocalRouteUtil() {
    }

    private final String a() {
        long jE = ExamSiteUtil.e(-999L);
        if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
            return "route_for_exam_site_" + jE + '_' + DeviceUtils.c();
        }
        return "route_for_exam_site_" + jE + '_' + ((Object) AccountUtils.c());
    }

    public static final synchronized LocalRoute b() {
        return (LocalRoute) JSON.parseObject(i0.g(f4185a.a(), ""), LocalRoute.class);
    }

    public static final String c() {
        String routeId;
        LocalRoute localRouteB = b();
        return (localRouteB == null || (routeId = localRouteB.getRouteId()) == null) ? "ThisIsCommonRouteId" : routeId;
    }

    public static final synchronized void d() {
        i0.h(f4185a.a());
    }

    public static final synchronized void e(LocalRoute localRoute) {
        i0.m(f4185a.a(), JSON.toJSONString(localRoute));
    }
}

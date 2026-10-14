package cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase;

import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\b¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBaseViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "gpsBaseList", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/gpsbase/GpsBase;", "getGpsBaseList", "()Landroidx/lifecycle/MutableLiveData;", "state", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "getState", "loadGpsBaseData", "", "cityCode", "", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GpsBaseViewModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<LoadingState> f5097a = new z<>();
    private final z<List<GpsBase>> b = new z<>();

    public final z<List<GpsBase>> a() {
        return this.b;
    }

    public final z<LoadingState> b() {
        return this.f5097a;
    }

    public final void c(String str) {
        this.f5097a.l(LoadingState.Loading.buildMsg("加载中..."));
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new GpsBaseViewModel$loadGpsBaseData$1(str, this, null), 2, null);
    }
}

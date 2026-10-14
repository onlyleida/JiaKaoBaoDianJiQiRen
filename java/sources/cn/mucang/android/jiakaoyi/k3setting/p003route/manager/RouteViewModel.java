package cn.mucang.android.jiakaoyi.k3setting.p003route.manager;

import androidx.lifecycle.k0;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000bJ\u000e\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000bJ\u000e\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0004J\u001e\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0004J \u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006 "}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "TYPE_MY_ROUTE", "", "cursor", "hasMore", "", "loading", "routeList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "getRouteList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "selectType", "getSelectType", "()Ljava/lang/String;", "setSelectType", "(Ljava/lang/String;)V", "addToMyRoute", "", "localRoute", "deleteRoute", "isMyRoute", "type", "loadRouteList", "firstLoad", "examSiteId", "", "reset", "resetSuccess", "Lkotlin/Function0;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteViewModel extends LoadingViewModel {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4630f;
    private final String c = "1";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4628d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4629e = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ListLiveData<LocalRoute> f4631g = new ListLiveData<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f4632h = "1";

    public final void m(LocalRoute localRoute) {
        r.e(localRoute, "localRoute");
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new RouteViewModel$addToMyRoute$1(localRoute, this, null), 2, null);
    }

    public final void n(LocalRoute localRoute) {
        r.e(localRoute, "localRoute");
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new RouteViewModel$deleteRoute$1(localRoute, this, null), 2, null);
    }

    public final ListLiveData<LocalRoute> o() {
        return this.f4631g;
    }

    /* JADX INFO: renamed from: p, reason: from getter */
    public final String getF4632h() {
        return this.f4632h;
    }

    public final boolean q(String type) {
        r.e(type, "type");
        return r.a(this.c, type);
    }

    public final void r(boolean z, long j, String type) {
        r.e(type, "type");
        if (z) {
            this.f4628d = "";
            this.f4629e = true;
        }
        if (this.f4630f || !this.f4629e) {
            return;
        }
        this.f4630f = true;
        if (z) {
            LoadingViewModel.f(this, false, null, 3, null);
        }
        g.b(k0.a(this), w0.b(), null, new RouteViewModel$loadRouteList$1(j, type, this, z, null), 2, null);
    }

    public final void s(long j, Function0<v> function0) {
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new RouteViewModel$reset$1(j, this, function0, null), 2, null);
    }

    public final void t(String str) {
        r.e(str, "<set-?>");
        this.f4632h = str;
    }
}

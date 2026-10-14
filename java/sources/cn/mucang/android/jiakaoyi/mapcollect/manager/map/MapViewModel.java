package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nJ\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "cursor", "", "hasMore", "", "loading", "mapList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getMapList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "copyMap", "", "model", "deleteMap", "editInfo", "loadMapList", "firstLoad", "onlyPublic", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MapViewModel extends LoadingViewModel {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5076e;
    private String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5075d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ListLiveData<ExamSiteModel> f5077f = new ListLiveData<>();

    public final void m(ExamSiteModel model) {
        kotlin.jvm.internal.r.e(model, "model");
        LoadingViewModel.f(this, false, null, 2, null);
        kotlinx.coroutines.g.b(androidx.lifecycle.k0.a(this), kotlinx.coroutines.w0.b(), null, new MapViewModel$copyMap$1(model, this, null), 2, null);
    }

    public final void n(ExamSiteModel model) {
        kotlin.jvm.internal.r.e(model, "model");
        LoadingViewModel.f(this, false, null, 2, null);
        kotlinx.coroutines.g.b(androidx.lifecycle.k0.a(this), kotlinx.coroutines.w0.b(), null, new MapViewModel$deleteMap$1(model, this, null), 2, null);
    }

    public final void o(ExamSiteModel model) {
        kotlin.jvm.internal.r.e(model, "model");
        LoadingViewModel.f(this, false, null, 2, null);
        kotlinx.coroutines.g.b(androidx.lifecycle.k0.a(this), kotlinx.coroutines.w0.b(), null, new MapViewModel$editInfo$1(model, this, null), 2, null);
    }

    public final ListLiveData<ExamSiteModel> p() {
        return this.f5077f;
    }

    public final void q(boolean z, boolean z2) {
        if (z) {
            this.c = "";
            this.f5075d = true;
        }
        if (this.f5076e || !this.f5075d) {
            return;
        }
        this.f5076e = true;
        if (z) {
            LoadingViewModel.f(this, false, null, 3, null);
        }
        kotlinx.coroutines.g.b(androidx.lifecycle.k0.a(this), kotlinx.coroutines.w0.b(), null, new MapViewModel$loadMapList$1(this, z2, z, null), 2, null);
    }
}

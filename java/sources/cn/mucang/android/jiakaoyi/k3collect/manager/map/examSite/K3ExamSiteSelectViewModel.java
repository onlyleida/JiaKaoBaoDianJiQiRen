package cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite;

import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "cursor", "", "hasMore", "", "getHasMore", "()Z", "setHasMore", "(Z)V", "loadDataState", "Landroidx/lifecycle/MutableLiveData;", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "getLoadDataState", "()Landroidx/lifecycle/MutableLiveData;", "siteList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getSiteList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "loadData", "", "cityCode", "firstLoad", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3ExamSiteSelectViewModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<LoadingState> f4105a = new z<>();
    private final ListLiveData<ExamSiteModel> b = new ListLiveData<>();
    private String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4106d = true;

    public static /* synthetic */ void g(K3ExamSiteSelectViewModel k3ExamSiteSelectViewModel, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        k3ExamSiteSelectViewModel.f(str, z);
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getF4106d() {
        return this.f4106d;
    }

    public final z<LoadingState> d() {
        return this.f4105a;
    }

    public final ListLiveData<ExamSiteModel> e() {
        return this.b;
    }

    public final void f(String str, boolean z) {
        LoadingState loadingStateE = this.f4105a.e();
        LoadingState loadingState = LoadingState.Loading;
        if (loadingStateE == loadingState) {
            return;
        }
        if (z || this.f4106d) {
            this.f4105a.l(loadingState);
            if (z) {
                this.c = "";
                this.f4106d = true;
            }
            kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new K3ExamSiteSelectViewModel$loadData$1(str, this, z, null), 2, null);
        }
    }

    public final void h(boolean z) {
        this.f4106d = z;
    }
}

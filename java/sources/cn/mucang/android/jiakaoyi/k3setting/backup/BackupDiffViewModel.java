package cn.mucang.android.jiakaoyi.k3setting.backup;

import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightAssembleModel;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.diff.TabCount;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u001c\u001a\u0004\u0018\u00010\u000bH\u0002J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010\u001f\u001a\u00020\u001eJ\u0006\u0010 \u001a\u00020\u001eR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00120\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\tR\u001d\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00120\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\tR\u0016\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00120\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\t¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "examSiteId", "", "(J)V", "diffCountLiveData", "Landroidx/lifecycle/MutableLiveData;", "Lcn/mucang/jiakaoyi/uilib/diff/TabCount;", "getDiffCountLiveData", "()Landroidx/lifecycle/MutableLiveData;", "diffJsonCache", "", "getExamSiteId", "()J", "lightAssembleCache", "", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;", "lightGroupList", "", "getLightGroupList", "lightList", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "getLightList", "lightModelCache", "listRouteCache", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "routeListLiveData", "getRouteListLiveData", "getDiffData", "loadLightAssemble", "", "loadLightOrder", "loadRouteList", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BackupDiffViewModel extends LoadingViewModel {
    private final long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z<TabCount> f4186d = new z<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z<List<LightExamModel>> f4187e = new z<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final z<List<LightAssembleModel>> f4188f = new z<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final z<List<LocalRoute>> f4189g = new z<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<LightExamModel> f4190h;
    private List<LightAssembleModel> i;
    private List<LocalRoute> j;
    private String k;

    public BackupDiffViewModel(long j) {
        this.c = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String q() {
        if (this.k == null) {
            this.k = i0.g(cn.mucang.jiakaoyi.uilib.diff.j.a(this.c), "");
        }
        return this.k;
    }

    public final z<TabCount> p() {
        return this.f4186d;
    }

    public final z<List<LightAssembleModel>> r() {
        return this.f4188f;
    }

    public final z<List<LightExamModel>> s() {
        return this.f4187e;
    }

    public final z<List<LocalRoute>> t() {
        return this.f4189g;
    }

    public final void u() {
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new BackupDiffViewModel$loadLightAssemble$1(this, null), 2, null);
    }

    public final void v() {
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new BackupDiffViewModel$loadLightOrder$1(this, null), 2, null);
    }

    public final void w() {
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new BackupDiffViewModel$loadRouteList$1(this, null), 2, null);
    }
}

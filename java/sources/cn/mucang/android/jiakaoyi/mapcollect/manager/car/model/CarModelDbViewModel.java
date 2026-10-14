package cn.mucang.android.jiakaoyi.mapcollect.manager.car.model;

import androidx.lifecycle.k0;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0005J\u0016\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u0016\u001a\u00020\u0010J\u0016\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "carList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "getCarList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "cursor", "", "hasMore", "", "loading", "status", "", "addToMyCar", "", TtmlNode.ATTR_ID, InputIdCardActivity.DELETE, "item", "loadCarList", "firstLoad", MenuOptions.REFRESH, "setToOfficial", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarModelDbViewModel extends LoadingViewModel {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5035e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f5036f;
    private String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5034d = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ListLiveData<HpCarMapModel> f5037g = new ListLiveData<>();

    public final void n(int i) {
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new CarModelDbViewModel$addToMyCar$1(i, this, null), 3, null);
    }

    public final void o(HpCarMapModel item) {
        kotlin.jvm.internal.r.e(item, "item");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new CarModelDbViewModel$delete$1(item, this, null), 3, null);
    }

    public final ListLiveData<HpCarMapModel> p() {
        return this.f5037g;
    }

    public final void q(boolean z, int i) {
        this.f5036f = i;
        if (z) {
            this.c = "";
            this.f5034d = true;
        }
        if (this.f5035e || !this.f5034d) {
            return;
        }
        this.f5035e = true;
        if (z) {
            LoadingViewModel.f(this, false, null, 3, null);
        }
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new CarModelDbViewModel$loadCarList$1(this, i, z, null), 2, null);
    }

    public final void r(int i, int i2) {
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new CarModelDbViewModel$setToOfficial$1(i, i2, this, null), 3, null);
    }
}

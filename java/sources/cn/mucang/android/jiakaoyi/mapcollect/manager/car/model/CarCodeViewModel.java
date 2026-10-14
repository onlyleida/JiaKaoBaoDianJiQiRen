package cn.mucang.android.jiakaoyi.mapcollect.manager.car.model;

import androidx.lifecycle.k0;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\u00020\u00102\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0016\u0010\u0006\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarCodeViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "carCodeList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "getCarCodeList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "cursor", "", "hasMore", "", "loading", "status", "", "deleteAgentCarData", "", TtmlNode.ATTR_ID, "", "enableAgentCarData", "hpCarMapModel", "firstLoad", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarCodeViewModel extends LoadingViewModel {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5028e;
    private String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5027d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ListLiveData<HpCarMapModel> f5029f = new ListLiveData<>();

    public final void m(long j) {
        if (j <= 0) {
            cn.mucang.android.core.utils.u.h("车身数据异常,无法删除");
        } else {
            e(false, "删除车身数据中...");
            kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new CarCodeViewModel$deleteAgentCarData$1(j, this, null), 2, null);
        }
    }

    public final void n(HpCarMapModel hpCarMapModel) {
        if (hpCarMapModel == null || hpCarMapModel.id <= 0) {
            cn.mucang.android.core.utils.u.h("车身数据异常,无法启用");
        } else {
            e(false, "启用车身数据中...");
            kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new CarCodeViewModel$enableAgentCarData$1(hpCarMapModel, this, null), 2, null);
        }
    }

    public final ListLiveData<HpCarMapModel> o() {
        return this.f5029f;
    }

    public final void p(boolean z, int i) {
        if (z) {
            this.c = "";
            this.f5027d = true;
        }
        if (this.f5028e || !this.f5027d) {
            return;
        }
        this.f5028e = true;
        if (z) {
            LoadingViewModel.f(this, false, null, 3, null);
        }
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new CarCodeViewModel$getCarCodeList$1(this, i, z, null), 2, null);
    }
}

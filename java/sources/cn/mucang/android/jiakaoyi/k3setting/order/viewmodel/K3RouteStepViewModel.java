package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import androidx.lifecycle.k0;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\t0\u000fJ\u0016\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0005J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\tJ*\u0010\u0017\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00052\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\t0\u000fR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "itemList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "getItemList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "batchSave", "", "ruleExamSiteId", "", "items", "", "callback", "Lkotlin/Function1;", "", InputIdCardActivity.DELETE, "item", "loadOrders", "displayStatus", "", "loadStandardData", "save", "orderItem", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3RouteStepViewModel extends LoadingViewModel {
    private final ListLiveData<StepOrderItem> c = new ListLiveData<>();

    public static /* synthetic */ void m(K3RouteStepViewModel k3RouteStepViewModel, long j, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        k3RouteStepViewModel.l(j, i);
    }

    public final void i(long j, List<? extends StepOrderItem> items, Function1<? super Boolean, v> callback) {
        r.e(items, "items");
        r.e(callback, "callback");
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new K3RouteStepViewModel$batchSave$1(j, items, this, callback, null), 2, null);
    }

    public final void j(long j, StepOrderItem item) {
        r.e(item, "item");
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new K3RouteStepViewModel$delete$1(item, j, this, null), 2, null);
    }

    public final ListLiveData<StepOrderItem> k() {
        return this.c;
    }

    public final void l(long j, int i) {
        LoadingViewModel.f(this, true, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new K3RouteStepViewModel$loadOrders$1(j, i, this, null), 2, null);
    }

    public final void n() {
        g.b(k0.a(this), w0.b(), null, new K3RouteStepViewModel$loadStandardData$1(this, null), 2, null);
    }

    public final void o(long j, StepOrderItem orderItem, Function1<? super Boolean, v> callback) {
        r.e(orderItem, "orderItem");
        r.e(callback, "callback");
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new K3RouteStepViewModel$save$1(j, orderItem, callback, this, null), 2, null);
    }
}

package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import androidx.lifecycle.k0;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.g;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "assembleId", "", "orderList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "getOrderList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "addOrder", "", "position", "", "model", "loadOrders", "removeOrder", "save", Constant.PROTOCOL_WEBVIEW_NAME, "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightAddViewModel extends LoadingViewModel {
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ListLiveData<LightExamModel> f4474d = new ListLiveData<>();

    public final void j(int i, LightExamModel model) {
        r.e(model, "model");
        ActionLog.f3431a.m(r.m("添加灯光组合指令 ", model.getLog()));
        this.f4474d.p(i, model);
    }

    public final ListLiveData<LightExamModel> k() {
        return this.f4474d;
    }

    public final void l(long j) {
        this.c = j;
        LoadingViewModel.f(this, false, null, 3, null);
        g.b(k0.a(this), w0.b(), null, new LightAddViewModel$loadOrders$1(this, j, null), 2, null);
    }

    public final void m(LightExamModel model) {
        r.e(model, "model");
        ActionLog.f3431a.m(r.m("删除灯光组合指令 ", model.getLog()));
        this.f4474d.t(model);
    }

    public final void n(String name) {
        r.e(name, "name");
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new LightAddViewModel$save$1(this, name, null), 2, null);
    }
}

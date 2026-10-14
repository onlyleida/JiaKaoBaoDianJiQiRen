package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import androidx.lifecycle.k0;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightOrderStandard;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import kotlin.Metadata;
import kotlinx.coroutines.g;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rR \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightOrderStandardsViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "standardListLiveData", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightOrderStandard;", "getStandardListLiveData", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "setStandardListLiveData", "(Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;)V", "getLightOrderStandardList", "", "examSiteId", "", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightOrderStandardsViewModel extends LoadingViewModel {
    private ListLiveData<LightOrderStandard> c = new ListLiveData<>();

    public final void i(long j) {
        LoadingViewModel.f(this, false, null, 3, null);
        g.b(k0.a(this), w0.b(), null, new LightOrderStandardsViewModel$getLightOrderStandardList$1(this, null), 2, null);
    }

    public final ListLiveData<LightOrderStandard> j() {
        return this.c;
    }
}

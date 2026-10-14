package cn.mucang.jiakaoyi.uilib.activate;

import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\fR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "bindInfo", "Landroidx/lifecycle/MutableLiveData;", "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;", "getBindInfo", "()Landroidx/lifecycle/MutableLiveData;", "bindState", "", "getBindState", "loadBindInfo", "", "startVerify", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BindDeviceViewModel extends LoadingViewModel {
    private final z<BindDeviceInfo> c = new z<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z<Integer> f9186d = new z<>();

    public final z<BindDeviceInfo> i() {
        return this.c;
    }

    public final z<Integer> j() {
        return this.f9186d;
    }

    public final void k() {
        LoadingViewModel.f(this, false, null, 3, null);
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new BindDeviceViewModel$loadBindInfo$1(this, null), 2, null);
    }

    public final void l() {
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new BindDeviceViewModel$startVerify$1(this, null), 2, null);
    }
}

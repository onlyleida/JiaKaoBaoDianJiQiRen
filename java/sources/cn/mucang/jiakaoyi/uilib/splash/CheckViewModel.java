package cn.mucang.jiakaoyi.uilib.splash;

import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.activate.ActivateModel;
import com.tencent.tauth.AuthActivity;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000bR \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", AuthActivity.ACTION_KEY, "Landroidx/lifecycle/MutableLiveData;", "", "getAction", "()Landroidx/lifecycle/MutableLiveData;", "setAction", "(Landroidx/lifecycle/MutableLiveData;)V", "tipLiveData", "", "getTipLiveData", "deviceCanUse", "", "model", "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;", "startVerify", "hardwareNumber", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CheckViewModel extends LoadingViewModel {
    private z<Integer> c = new z<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z<String> f9706d = new z<>();

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(ActivateModel activateModel) {
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new CheckViewModel$deviceCanUse$1(activateModel, this, null), 2, null);
    }

    public final z<Integer> k() {
        return this.c;
    }

    public final z<String> l() {
        return this.f9706d;
    }

    public final void m(String str) {
        if (n0.e(str)) {
            cn.mucang.android.core.utils.u.h("硬件编号错误");
        } else {
            kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new CheckViewModel$startVerify$1(str, this, null), 2, null);
        }
    }
}

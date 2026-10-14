package cn.mucang.jiakaoyi.uilib.sso;

import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000C\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0013\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\b\u0010\u0017\u001a\u00020\u0016H\u0014J\b\u0010\u0018\u001a\u00020\u0016H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\tR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\tR\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014¨\u0006\u0019"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "duration", "", "errorStatusLiveData", "Landroidx/lifecycle/MutableLiveData;", "Lcn/mucang/jiakaoyi/uilib/sso/ErrorStatus;", "getErrorStatusLiveData", "()Landroidx/lifecycle/MutableLiveData;", "handler", "Landroid/os/Handler;", "loginModelLiveData", "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;", "getLoginModelLiveData", "queryStatusLiveData", "Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;", "getQueryStatusLiveData", "runnable", "cn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$runnable$1", "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$runnable$1;", "loadQrCode", "", "onCleared", "startQuery", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SsoLoginViewModel extends LoadingViewModel {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f9743f;
    private final z<SsoLoginModel> c = new z<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z<ErrorStatus> f9741d = new z<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z<SsoUserModel> f9742e = new z<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Handler f9744g = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a f9745h = new a();

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$runnable$1", "Ljava/lang/Runnable;", "run", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements Runnable {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(SsoLoginViewModel this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            try {
                SsoLoginApi ssoLoginApi = new SsoLoginApi();
                SsoLoginModel ssoLoginModelE = this$0.n().e();
                SsoUserModel ssoUserModelB = ssoLoginApi.b(ssoLoginModelE == null ? null : ssoLoginModelE.getToken());
                if (ssoUserModelB.getStatus() == 2 || ssoUserModelB.getStatus() == 3 || ssoUserModelB.getStatus() == 4) {
                    this$0.f9744g.removeCallbacksAndMessages(null);
                }
                this$0.o().l(ssoUserModelB);
            } catch (Exception unused) {
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            final SsoLoginViewModel ssoLoginViewModel = SsoLoginViewModel.this;
            n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.sso.p
                @Override // java.lang.Runnable
                public final void run() {
                    SsoLoginViewModel.a.b(ssoLoginViewModel);
                }
            });
            SsoLoginViewModel.this.f9744g.postDelayed(this, SsoLoginViewModel.this.f9743f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q() {
        this.f9744g.postDelayed(this.f9745h, this.f9743f);
    }

    public final z<ErrorStatus> m() {
        return this.f9741d;
    }

    public final z<SsoLoginModel> n() {
        return this.c;
    }

    public final z<SsoUserModel> o() {
        return this.f9742e;
    }

    @Override // androidx.lifecycle.j0
    protected void onCleared() {
        super.onCleared();
        this.f9744g.removeCallbacksAndMessages(null);
    }

    public final void p() {
        this.f9744g.removeCallbacksAndMessages(null);
        LoadingViewModel.f(this, false, null, 2, null);
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new SsoLoginViewModel$loadQrCode$1(this, null), 2, null);
    }
}

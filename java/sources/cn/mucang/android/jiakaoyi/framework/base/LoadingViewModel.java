package cn.mucang.android.jiakaoyi.framework.base;

import androidx.lifecycle.j0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u001a\u0010\u0010\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u001a\u0010\u0011\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000fR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "actionState", "Landroidx/lifecycle/MutableLiveData;", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "getActionState", "()Landroidx/lifecycle/MutableLiveData;", "pageState", "getPageState", "showFail", "", "isPage", "", SocialConstants.PARAM_SEND_MSG, "", "showLoading", "showSuccess", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class LoadingViewModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<LoadingState> f3354a = new z<>();
    private final z<LoadingState> b = new z<>();

    public static /* synthetic */ void d(LoadingViewModel loadingViewModel, boolean z, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showFail");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            str = "网络异常";
        }
        loadingViewModel.c(z, str);
    }

    public static /* synthetic */ void f(LoadingViewModel loadingViewModel, boolean z, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLoading");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            str = "加载中...";
        }
        loadingViewModel.e(z, str);
    }

    public static /* synthetic */ void h(LoadingViewModel loadingViewModel, boolean z, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showSuccess");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            str = "";
        }
        loadingViewModel.g(z, str);
    }

    public final z<LoadingState> a() {
        return this.b;
    }

    public final z<LoadingState> b() {
        return this.f3354a;
    }

    public final void c(boolean z, String msg) {
        r.e(msg, "msg");
        (z ? this.f3354a : this.b).l(LoadingState.Fail.buildMsg(msg));
    }

    public final void e(boolean z, String msg) {
        r.e(msg, "msg");
        (z ? this.f3354a : this.b).l(LoadingState.Loading.buildMsg(msg));
    }

    public final void g(boolean z, String msg) {
        r.e(msg, "msg");
        (z ? this.f3354a : this.b).l(LoadingState.Success.buildMsg(msg));
    }
}

package cn.mucang.android.jiakaoyi.framework.p002e.intercept;

import android.app.Application;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.request.MucangRequest;
import cn.mucang.android.core.api.request.d.b;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.dataprovider.AbsLogoutDataProvider;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import com.tencent.open.SocialConstants;
import java.net.URL;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.e.r.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/api/intercept/GlobalResponseInterceptor;", "Lcn/mucang/android/core/api/request/interceptor/ResponseInterceptor;", "()V", "interceptResponse", "", "response", "Lcn/mucang/android/core/api/ApiResponse;", SocialConstants.TYPE_REQUEST, "Lcn/mucang/android/core/api/request/MucangRequest;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GlobalResponseInterceptor implements b {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void b() {
        AbsLogoutDataProvider absLogoutDataProvider = (AbsLogoutDataProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsLogoutDataProvider.class, null, 2, null);
        if (absLogoutDataProvider != null) {
            absLogoutDataProvider.handleLogout();
        }
        Application context = MucangConfig.getContext();
        r.d(context, "getContext()");
        AppUtils.s(context);
    }

    @Override // cn.mucang.android.core.api.request.d.b
    public void a(ApiResponse apiResponse, MucangRequest mucangRequest) {
        String path;
        if (!(apiResponse != null && apiResponse.getErrorCode() == 44)) {
            if (!(apiResponse != null && apiResponse.getErrorCode() == 2)) {
                if (!(apiResponse != null && apiResponse.getErrorCode() == 403)) {
                    if ((apiResponse != null && apiResponse.getErrorCode() == 40) && !AppUtils.k() && AccountManager.h().l()) {
                        u.h(apiResponse.getMessage());
                        Application context = MucangConfig.getContext();
                        r.d(context, "getContext()");
                        AppUtils.r(context);
                        return;
                    }
                    return;
                }
            }
        }
        try {
            path = new URL(mucangRequest == null ? null : mucangRequest.d()).getPath();
            r.d(path, "url.path");
        } catch (Exception e2) {
            e2.printStackTrace();
            path = "";
        }
        f.o("登录失效,回到首页:errorCode= " + apiResponse.getErrorCode() + " ,msg= " + ((Object) apiResponse.getMessage()) + " ,path = " + path);
        if (AppUtils.k()) {
            return;
        }
        u.j(apiResponse.getMessage());
        if (AccountManager.h().l()) {
            LiveBus.d(b.class).l(new b());
            u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.e.r.a
                @Override // java.lang.Runnable
                public final void run() {
                    GlobalResponseInterceptor.b();
                }
            }, 1000L);
        }
    }
}

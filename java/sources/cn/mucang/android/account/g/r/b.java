package cn.mucang.android.account.g.r;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import cn.mucang.android.account.activity.n1;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;
import cn.mucang.android.account.h.d;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.request.MucangRequest;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.n;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public class b implements cn.mucang.android.core.api.request.d.b {

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ApiResponse f2167a;
        final /* synthetic */ Activity b;

        a(b bVar, ApiResponse apiResponse, Activity activity) {
            this.f2167a = apiResponse;
            this.b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                PopupCaptchaResponse popupCaptchaResponse = (PopupCaptchaResponse) this.f2167a.getData(PopupCaptchaResponse.class);
                if (popupCaptchaResponse == null) {
                    return;
                }
                ComponentCallbacks2 componentCallbacks2 = this.b;
                if (componentCallbacks2 instanceof n1) {
                    ((n1) componentCallbacks2).a(popupCaptchaResponse);
                } else if (componentCallbacks2 instanceof n) {
                    d.A(((n) componentCallbacks2).getSupportFragmentManager(), popupCaptchaResponse);
                }
            } catch (Exception e2) {
                t.c("Exception", e2);
            }
        }
    }

    @Override // cn.mucang.android.core.api.request.d.b
    public void a(ApiResponse apiResponse, MucangRequest mucangRequest) throws Exception {
        Activity activityI;
        if (apiResponse.isSuccess() || apiResponse.getErrorCode() != 30000 || (activityI = MucangConfig.i()) == null) {
            return;
        }
        u.c(new a(this, apiResponse, activityI));
    }
}

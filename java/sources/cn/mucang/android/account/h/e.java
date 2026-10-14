package cn.mucang.android.account.h;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import cn.mucang.android.account.api.data.CaptchaResponse;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;
import cn.mucang.android.account.g.k;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public class e extends d {
    private boolean j;
    private String k;
    private b l;

    public interface b {
        void a(CheckSmsResponse checkSmsResponse);
    }

    private static class c extends cn.mucang.android.core.api.c.d<Activity, CheckSmsResponse> {
        e b;
        private k c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2181d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CaptchaResponse f2182e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f2183f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f2184g;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ApiException f2185a;

            a(ApiException apiException) {
                this.f2185a = apiException;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.b.u(this.f2185a.getMessage());
            }
        }

        @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void a() {
            super.a();
            this.b.w().b("正在验证...");
        }

        @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            this.b.t();
            if (!(exc instanceof ApiException)) {
                u.h("网络连接失败");
                return;
            }
            ApiException apiException = (ApiException) exc;
            if (apiException.getErrorCode() == 20011) {
                u.c(new a(apiException));
            } else {
                u.h(apiException.getApiResponse().getMessage());
                this.b.dismiss();
            }
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void b(CheckSmsResponse checkSmsResponse) {
            if (this.b.l != null) {
                this.b.l.a(checkSmsResponse);
            }
            this.b.t();
            this.b.dismiss();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public CheckSmsResponse request() throws Exception {
            return this.c.f(this.f2183f, this.f2182e.getCaptchaId(), this.f2181d, this.f2184g);
        }

        private c(e eVar, Activity activity, CaptchaResponse captchaResponse, String str, String str2, boolean z) {
            super(activity);
            this.c = new k();
            this.b = eVar;
            this.f2182e = captchaResponse;
            this.f2181d = str2;
            this.f2183f = str;
            this.f2184g = z;
        }
    }

    public static void D(FragmentManager fragmentManager, PopupCaptchaResponse popupCaptchaResponse, String str, boolean z, b bVar) {
        if (popupCaptchaResponse == null) {
            u.h("非法的验证码弹框请求");
            return;
        }
        e eVar = new e();
        eVar.f2175g = popupCaptchaResponse;
        eVar.j = z;
        eVar.k = str;
        eVar.l = bVar;
        eVar.show(fragmentManager, (String) null);
    }

    @Override // cn.mucang.android.account.h.d, androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        if (!this.j) {
            return super.onCreateDialog(bundle);
        }
        Dialog dialog = new Dialog(getContext(), R.style.Account__Dialog_Transparent);
        cn.mucang.android.core.api.c.b.b(x(""));
        return dialog;
    }

    @Override // cn.mucang.android.account.h.d
    protected cn.mucang.android.core.api.c.a x(String str) {
        return new c(MucangConfig.i(), this.f2175g, this.k, str, this.j);
    }
}

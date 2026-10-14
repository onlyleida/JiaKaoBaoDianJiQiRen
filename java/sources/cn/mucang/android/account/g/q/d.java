package cn.mucang.android.account.g.q;

import android.app.Activity;
import cn.mucang.android.account.api.data.CaptchaResponse;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.g.g;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public class d extends cn.mucang.android.core.api.c.d<Activity, CheckSmsResponse> {
    cn.mucang.android.account.h.c b;
    private g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2162d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CaptchaResponse f2163e;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ApiException f2164a;

        a(ApiException apiException) {
            this.f2164a = apiException;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.b.u(this.f2164a.getMessage());
        }
    }

    public d(cn.mucang.android.account.h.c cVar, Activity activity, CaptchaResponse captchaResponse, String str) {
        super(activity);
        this.c = new g();
        this.b = cVar;
        this.f2163e = captchaResponse;
        this.f2162d = str;
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
        if (this.b.C() != null) {
            this.b.C().a(checkSmsResponse);
        }
        this.b.t();
        this.b.dismiss();
    }

    @Override // cn.mucang.android.core.api.c.a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public CheckSmsResponse request() throws Exception {
        return this.c.g(CheckType.FALSE, this.f2163e.getCaptchaId(), this.f2162d);
    }
}

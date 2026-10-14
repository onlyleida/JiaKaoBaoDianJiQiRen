package cn.mucang.android.account.g.q;

import android.app.Activity;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.g.g;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public class c extends cn.mucang.android.core.api.c.d<Activity, CheckSmsResponse> {
    cn.mucang.android.account.h.b b;
    private g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2158f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f2159g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f2160h;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ApiException f2161a;

        a(ApiException apiException) {
            this.f2161a = apiException;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.b.u(this.f2161a.getMessage());
        }
    }

    public c(cn.mucang.android.account.h.b bVar, Activity activity, String str, String str2, String str3, String str4, int i) {
        super(activity);
        this.c = new g();
        this.f2156d = str;
        this.f2157e = str2;
        this.f2158f = str3;
        this.f2159g = str4;
        this.f2160h = i;
        this.b = bVar;
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
        return this.c.f(this.f2156d, this.f2157e, CheckType.FALSE, this.f2158f, this.f2159g, this.f2160h);
    }
}

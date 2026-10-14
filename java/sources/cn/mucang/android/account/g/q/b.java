package cn.mucang.android.account.g.q;

import android.content.Intent;
import cn.mucang.android.account.activity.AuthRealNameActivity;
import cn.mucang.android.account.f;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;

/* JADX INFO: loaded from: classes.dex */
public class b extends a<AuthRealNameActivity, Boolean> {
    cn.mucang.android.account.g.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2153d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2155f;

    public b(AuthRealNameActivity authRealNameActivity, String str, String str2, String str3) {
        super(authRealNameActivity, "实名认证");
        this.c = new cn.mucang.android.account.g.e();
        this.f2153d = str;
        this.f2154e = str2;
        this.f2155f = str3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.core.api.c.a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void b(Boolean bool) {
        AuthRealNameActivity authRealNameActivity = (AuthRealNameActivity) f();
        f.h(bool.booleanValue());
        if (n0.g(this.f2155f)) {
            Intent intent = new Intent(this.f2155f);
            intent.putExtra("__account_login_extra_data__", this.f2153d + "," + this.f2154e);
            MucangConfig.q().d(intent);
        }
        authRealNameActivity.setResult(-1);
        authRealNameActivity.finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.core.api.c.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public Boolean request() throws Exception {
        return ((AuthRealNameActivity) f()).getF1987e() ? Boolean.valueOf(this.c.f(this.f2153d, this.f2154e)) : Boolean.valueOf(this.c.g(this.f2153d, this.f2154e));
    }
}

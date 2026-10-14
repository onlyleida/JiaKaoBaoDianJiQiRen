package cn.mucang.android.account.activity.o1;

import android.content.Intent;
import android.view.View;
import cn.mucang.android.account.activity.SetPasswordActivity;
import cn.mucang.android.account.activity.ValidationActivity;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.g.m;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public class f extends g {
    private m b;

    class a extends cn.mucang.android.account.g.q.a<ValidationActivity, CheckSmsResponse> {
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f2116d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ValidationActivity validationActivity, String str, String str2, View view) {
            super(validationActivity, str);
            this.c = str2;
            this.f2116d = view;
        }

        @Override // cn.mucang.android.account.g.q.a, cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            super.c(exc);
            this.f2116d.setEnabled(true);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(CheckSmsResponse checkSmsResponse) {
            ((ValidationActivity) f()).Q(checkSmsResponse);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public CheckSmsResponse request() throws Exception {
            return f.this.b.f(this.c);
        }
    }

    class b extends cn.mucang.android.account.g.q.a<ValidationActivity, String> {
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f2118d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ValidationActivity validationActivity, String str, String str2, String str3) {
            super(validationActivity, str);
            this.c = str2;
            this.f2118d = str3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(String str) {
            f.this.g();
            ValidationActivity validationActivity = (ValidationActivity) f();
            SetPasswordActivity.b bVar = new SetPasswordActivity.b(validationActivity);
            bVar.c(this.c);
            bVar.d(str);
            bVar.b(2);
            validationActivity.startActivityForResult(bVar.a(), 1500);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public String request() throws Exception {
            return f.this.b.h(this.c, this.f2118d);
        }
    }

    public f(ValidationActivity validationActivity) {
        super(validationActivity);
        this.b = new m();
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void c(int i, int i2, Intent intent) {
        if (i == 1500 && i2 == -1) {
            ValidationActivity validationActivityA = a();
            validationActivityA.setResult(-1);
            validationActivityA.finish();
        }
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void d(View view) {
        view.setEnabled(false);
        String strZ = a().z();
        if (n0.e(strZ)) {
            u.h("请输入手机号码");
        } else if (strZ.length() != 11) {
            u.h("手机号格式错误，请重新输入");
        } else {
            cn.mucang.android.core.api.c.b.b(new a(a(), "请求短信", strZ, view));
        }
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void f(String str, String str2) {
        cn.mucang.android.core.api.c.b.b(new b(a(), "请求验证", str, str2));
    }
}

package cn.mucang.android.account.activity.o1;

import android.content.Intent;
import android.view.View;
import cn.mucang.android.account.activity.SetPasswordActivity;
import cn.mucang.android.account.activity.ValidationActivity;
import cn.mucang.android.account.api.data.CheckSmsResponse;

/* JADX INFO: loaded from: classes.dex */
public class e extends g {
    private cn.mucang.android.account.g.i b;

    class a extends cn.mucang.android.account.g.q.a<ValidationActivity, CheckSmsResponse> {
        final /* synthetic */ View c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ValidationActivity validationActivity, String str, View view) {
            super(validationActivity, str);
            this.c = view;
        }

        @Override // cn.mucang.android.account.g.q.a, cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            super.c(exc);
            this.c.setEnabled(true);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(CheckSmsResponse checkSmsResponse) {
            ((ValidationActivity) f()).Q(checkSmsResponse);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public CheckSmsResponse request() throws Exception {
            return e.this.b.g(((ValidationActivity) f()).getF2053f().getSmsId());
        }
    }

    class b extends cn.mucang.android.account.g.q.a<ValidationActivity, String> {
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f2114d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ValidationActivity validationActivity, String str, String str2, String str3) {
            super(validationActivity, str);
            this.c = str2;
            this.f2114d = str3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(String str) {
            ValidationActivity validationActivity = (ValidationActivity) f();
            SetPasswordActivity.b bVar = new SetPasswordActivity.b(validationActivity);
            bVar.d(str);
            bVar.c(validationActivity.getF2053f().getSmsId());
            bVar.b(1);
            validationActivity.startActivityForResult(bVar.a(), 1316);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public String request() throws Exception {
            return e.this.b.i(this.c, this.f2114d);
        }
    }

    public e(ValidationActivity validationActivity) {
        super(validationActivity);
        this.b = new cn.mucang.android.account.g.i();
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void c(int i, int i2, Intent intent) {
        if (i == 1316 && i2 == -1) {
            ValidationActivity validationActivityA = a();
            validationActivityA.setResult(-1);
            validationActivityA.finish();
        }
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void d(View view) {
        view.setEnabled(false);
        cn.mucang.android.core.api.c.b.b(new a(a(), "发送短信", view));
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void f(String str, String str2) {
        cn.mucang.android.core.api.c.b.b(new b(a(), "验证短信", str, str2));
    }
}

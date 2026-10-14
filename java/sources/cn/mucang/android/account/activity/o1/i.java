package cn.mucang.android.account.activity.o1;

import android.content.Intent;
import android.view.View;
import cn.mucang.android.account.activity.ValidationActivity;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.g.p;
import cn.mucang.android.core.api.exception.ApiException;

/* JADX INFO: loaded from: classes.dex */
public class i extends g {
    private p b;

    class a extends cn.mucang.android.account.g.q.a<ValidationActivity, CheckSmsResponse> {
        a(ValidationActivity validationActivity, String str) {
            super(validationActivity, str);
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
            try {
                return i.this.b.f();
            } catch (ApiException e2) {
                if (e2.getErrorCode() != 20023) {
                    throw e2;
                }
                CheckType checkType = CheckType.TRUE;
                cn.mucang.android.account.f.i(checkType);
                ValidationActivity validationActivity = (ValidationActivity) f();
                validationActivity.setResult(-1);
                validationActivity.finish();
                return CheckSmsResponse.getMockResponse(checkType);
            }
        }
    }

    class b extends cn.mucang.android.account.g.q.a<ValidationActivity, Boolean> {
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f2122d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ValidationActivity validationActivity, String str, String str2, String str3) {
            super(validationActivity, str);
            this.c = str2;
            this.f2122d = str3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(Boolean bool) {
            if (bool == null || !bool.booleanValue()) {
                return;
            }
            i.this.g();
            ValidationActivity validationActivity = (ValidationActivity) f();
            validationActivity.setResult(-1);
            validationActivity.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Boolean request() throws Exception {
            i.this.b.g(this.c, this.f2122d);
            return Boolean.TRUE;
        }
    }

    public i(ValidationActivity validationActivity) {
        super(validationActivity);
        this.b = new p();
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void c(int i, int i2, Intent intent) {
        if (i == 1317 && i2 == -1) {
            g();
            ValidationActivity validationActivityA = a();
            validationActivityA.setResult(-1);
            validationActivityA.finish();
        }
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void d(View view) {
        cn.mucang.android.core.api.c.b.b(new a(a(), "请求短信"));
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void f(String str, String str2) {
        cn.mucang.android.core.api.c.b.b(new b(a(), "验证短信", str, str2));
    }
}

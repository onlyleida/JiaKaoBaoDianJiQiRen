package cn.mucang.android.account.activity.o1;

import android.view.View;
import cn.mucang.android.account.activity.ValidationActivity;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public class d extends g {
    private cn.mucang.android.account.g.g b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2111d;

    class a extends cn.mucang.android.account.g.q.a<ValidationActivity, PopupCaptchaResponse> {
        a(ValidationActivity validationActivity, String str) {
            super(validationActivity, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void h(CheckSmsResponse checkSmsResponse) {
            ((ValidationActivity) f()).Q(checkSmsResponse);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void b(PopupCaptchaResponse popupCaptchaResponse) {
            cn.mucang.android.account.h.b.D(((ValidationActivity) f()).getSupportFragmentManager(), popupCaptchaResponse, ((ValidationActivity) f()).z(), d.this.c, d.this.f2111d, new cn.mucang.android.account.h.e.b() { // from class: cn.mucang.android.account.activity.o1.a
                @Override // cn.mucang.android.account.h.e.b
                public final void a(CheckSmsResponse checkSmsResponse) {
                    this.f2103a.h(checkSmsResponse);
                }
            });
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public PopupCaptchaResponse request() throws Exception {
            return (PopupCaptchaResponse) new cn.mucang.android.account.g.a().b(d.this.f2111d == 0 ? "/api/open/v3/change-phone-by-certified/request-captcha.htm" : "/api/open/v3/change-phone/request-captcha.htm").getData(PopupCaptchaResponse.class);
        }
    }

    class b extends cn.mucang.android.account.g.q.a<ValidationActivity, String> {
        final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ValidationActivity validationActivity, String str, String str2) {
            super(validationActivity, str);
            this.c = str2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(String str) {
            if (n0.g(str)) {
                d.this.g();
                cn.mucang.android.account.f.l(str);
                ValidationActivity validationActivity = (ValidationActivity) f();
                validationActivity.setResult(-1);
                validationActivity.finish();
            }
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public String request() throws Exception {
            return d.this.b.i(d.this.c, this.c, d.this.f2111d);
        }
    }

    public d(ValidationActivity validationActivity, String str, int i) {
        super(validationActivity);
        this.b = new cn.mucang.android.account.g.g();
        this.c = str;
        this.f2111d = i;
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void d(View view) {
        String strZ = a().z();
        if (n0.e(strZ)) {
            u.h("请输入手机号");
        } else if (strZ.length() != 11) {
            u.h("手机号格式错误，请重新输入");
        } else {
            cn.mucang.android.core.api.c.b.b(new a(a(), "获取图片验证码"));
        }
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void f(String str, String str2) {
        cn.mucang.android.core.api.c.b.b(new b(a(), "提交数据", str2));
    }
}

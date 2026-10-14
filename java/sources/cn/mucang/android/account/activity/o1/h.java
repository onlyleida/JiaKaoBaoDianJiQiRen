package cn.mucang.android.account.activity.o1;

import android.content.Intent;
import android.view.View;
import cn.mucang.android.account.activity.ValidationActivity;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;

/* JADX INFO: loaded from: classes.dex */
public class h extends g {

    class a extends cn.mucang.android.account.g.q.a<ValidationActivity, PopupCaptchaResponse> {
        a(h hVar, ValidationActivity validationActivity, String str) {
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
            cn.mucang.android.account.h.c.D(((ValidationActivity) f()).getSupportFragmentManager(), popupCaptchaResponse, new cn.mucang.android.account.h.e.b() { // from class: cn.mucang.android.account.activity.o1.b
                @Override // cn.mucang.android.account.h.e.b
                public final void a(CheckSmsResponse checkSmsResponse) {
                    this.f2104a.h(checkSmsResponse);
                }
            });
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public PopupCaptchaResponse request() throws Exception {
            return (PopupCaptchaResponse) new cn.mucang.android.account.g.a().b("/api/open/v3/change-phone/request-captcha.htm").getData(PopupCaptchaResponse.class);
        }
    }

    class b extends cn.mucang.android.account.g.q.a<ValidationActivity, String> {
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f2121d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(h hVar, ValidationActivity validationActivity, String str, String str2, String str3) {
            super(validationActivity, str);
            this.c = str2;
            this.f2121d = str3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(String str) {
            ValidationActivity validationActivity = (ValidationActivity) f();
            Intent intent = new Intent();
            intent.putExtra("__change_phone_session_id__", str);
            validationActivity.setResult(-1, intent);
            validationActivity.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public String request() throws Exception {
            return new cn.mucang.android.account.g.g().j(this.c, this.f2121d);
        }
    }

    public h(ValidationActivity validationActivity) {
        super(validationActivity);
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void d(View view) {
        cn.mucang.android.core.api.c.b.b(new a(this, a(), "获取图片验证码"));
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void f(String str, String str2) {
        cn.mucang.android.core.api.c.b.b(new b(this, a(), "验证验证码", str, str2));
    }
}

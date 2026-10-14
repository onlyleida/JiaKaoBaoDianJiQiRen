package cn.mucang.android.account.activity.o1;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.account.activity.ValidationActivity;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public class c extends g {
    private cn.mucang.android.account.g.c b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2105d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2106e;

    class a extends cn.mucang.android.account.g.q.a<ValidationActivity, CheckSmsResponse> {
        final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ValidationActivity validationActivity, String str, String str2) {
            super(validationActivity, str);
            this.c = str2;
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
            return c.this.b.f(c.this.c, c.this.f2105d, c.this.f2106e, this.c, ((ValidationActivity) f()).getF2053f().getCheckType());
        }
    }

    class b extends cn.mucang.android.account.g.q.a<ValidationActivity, CheckSmsResponse> {
        final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ValidationActivity validationActivity, String str, String str2) {
            super(validationActivity, str);
            this.c = str2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [android.app.Activity, cn.mucang.android.core.config.n] */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(CheckSmsResponse checkSmsResponse) {
            ((ValidationActivity) f()).S(checkSmsResponse);
            c.this.m(f());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public CheckSmsResponse request() throws Exception {
            return c.this.b.g(c.this.c, c.this.f2105d, c.this.f2106e, this.c, ((ValidationActivity) f()).getF2053f().getCheckType());
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.account.activity.o1.c$c, reason: collision with other inner class name */
    class C0056c extends cn.mucang.android.account.g.q.a<ValidationActivity, UserInfoResponse> {
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f2109d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0056c(ValidationActivity validationActivity, String str, String str2, String str3) {
            super(validationActivity, str);
            this.c = str2;
            this.f2109d = str3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(UserInfoResponse userInfoResponse) {
            ValidationActivity validationActivity = (ValidationActivity) f();
            cn.mucang.android.account.f.e(userInfoResponse, validationActivity.h());
            cn.mucang.android.account.utils.a.onEvent("第三方登录绑定手机号成功");
            validationActivity.setResult(-1);
            validationActivity.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public UserInfoResponse request() throws Exception {
            return c.this.b.h(this.c, this.f2109d);
        }
    }

    public c(ValidationActivity validationActivity) {
        super(validationActivity);
        this.b = new cn.mucang.android.account.g.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("获取语音验证码").setMessage("我们将以语音电话的形式告知您验证码，请留意接听呦~");
        builder.setPositiveButton("知道了", (DialogInterface.OnClickListener) null);
        builder.create().show();
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public boolean b(Intent intent) {
        this.c = intent.getStringExtra("__open_id__");
        this.f2105d = intent.getStringExtra("__union_id__");
        this.f2106e = intent.getStringExtra("__third_party__");
        if (!n0.e(this.c) && !n0.e(this.f2106e)) {
            return true;
        }
        u.h("非法的绑定请求");
        return false;
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void d(View view) {
        String strZ = a().z();
        if (n0.e(strZ)) {
            u.h("请输入手机号码");
        } else if (strZ.length() != 11) {
            u.h("手机号码格式不正确");
        } else {
            cn.mucang.android.core.api.c.b.b(new a(a(), "请求验证", strZ));
        }
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void e(View view) {
        String strZ = a().z();
        if (n0.e(strZ)) {
            u.h("请输入手机号码");
        } else if (strZ.length() != 11) {
            u.h("手机号码格式不正确");
        } else {
            cn.mucang.android.core.api.c.b.b(new b(a(), "请求验证码", strZ));
        }
    }

    @Override // cn.mucang.android.account.activity.o1.g
    public void f(String str, String str2) {
        cn.mucang.android.core.api.c.b.b(new C0056c(a(), "提交验证", str, str2));
    }
}

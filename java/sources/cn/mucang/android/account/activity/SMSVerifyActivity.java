package cn.mucang.android.account.activity;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.verify.ErrorAction;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.api.verify.SmsCheckInfo;
import cn.mucang.android.framework.account.databinding.AccountApiVerifyActivitySmsBinding;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;

/* JADX INFO: loaded from: classes.dex */
public class SMSVerifyActivity extends cn.mucang.android.core.config.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ProgressDialog f2027a;
    private CountDownTimer b;
    private final cn.mucang.android.core.api.verify.d c = new cn.mucang.android.core.api.verify.d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2028d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AccountApiVerifyActivitySmsBinding f2029e;

    class a implements cn.mucang.android.core.api.c.a<SmsCheckInfo> {
        a() {
        }

        @Override // cn.mucang.android.core.api.c.a
        public void a() {
            if (SMSVerifyActivity.this.b != null) {
                SMSVerifyActivity.this.b.cancel();
            }
            SMSVerifyActivity.this.f2029e.codeInput.setText("");
            SMSVerifyActivity.this.f2029e.sendSms.setVisibility(8);
            SMSVerifyActivity.this.f2029e.sendSms.setEnabled(false);
        }

        @Override // cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            if (exc instanceof ApiException) {
                SMSVerifyActivity.this.f2029e.verifyError.setText("获取验证码失败,请重试");
                SMSVerifyActivity.this.f2029e.verifyError.setVisibility(0);
            }
            SMSVerifyActivity.this.f2029e.sendSms.setText("再次发送");
            SMSVerifyActivity.this.f2029e.sendSms.setEnabled(true);
        }

        @Override // cn.mucang.android.core.api.c.a
        public void d() {
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(SmsCheckInfo smsCheckInfo) {
            SMSVerifyActivity.this.f2028d = smsCheckInfo.getSmsId();
            SMSVerifyActivity.this.b = SMSVerifyActivity.this.new c(smsCheckInfo.getRestSeconds() * 1000);
            SMSVerifyActivity.this.b.start();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public SmsCheckInfo request() throws Exception {
            return SMSVerifyActivity.this.c.b();
        }
    }

    class b implements cn.mucang.android.core.api.c.a<Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2031a;

        b(String str) {
            this.f2031a = str;
        }

        @Override // cn.mucang.android.core.api.c.a
        public void a() {
            SMSVerifyActivity.this.f2029e.verifyError.setVisibility(8);
            SMSVerifyActivity.this.f2027a.setTitle("正在验证");
            SMSVerifyActivity.this.f2027a.show();
        }

        @Override // cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            if (exc instanceof ApiException) {
                SMSVerifyActivity.this.f2029e.verifyError.setText(((ApiException) exc).getApiResponse().getMessage());
                SMSVerifyActivity.this.f2029e.verifyError.setVisibility(0);
            }
        }

        @Override // cn.mucang.android.core.api.c.a
        public void d() {
            cn.mucang.android.core.utils.k.b(SMSVerifyActivity.this.f2027a);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(Void r3) {
            cn.mucang.android.core.api.verify.e eVarO = SMSVerifyActivity.this.o();
            if (eVarO != null) {
                eVarO.c(true, null);
            }
            SMSVerifyActivity.this.finish();
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Void request() throws Exception {
            SMSVerifyActivity.this.c.d(SMSVerifyActivity.this.f2028d, this.f2031a);
            return null;
        }
    }

    private class c extends CountDownTimer {
        public c(int i) {
            super(i > 0 ? i : DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS, 1000L);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (SMSVerifyActivity.this.f2029e.sendSms != null) {
                SMSVerifyActivity.this.f2029e.sendSms.setText("再次发送");
                SMSVerifyActivity.this.f2029e.sendSms.setEnabled(true);
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            if (SMSVerifyActivity.this.f2029e.sendSms != null) {
                SMSVerifyActivity.this.f2029e.sendSms.setText(String.format("%ds", Long.valueOf(j / 1000)));
                SMSVerifyActivity.this.f2029e.sendSms.setEnabled(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public cn.mucang.android.core.api.verify.e o() {
        f.a.a.a.activity.c cVarA = f.a.a.a.activity.h.a(ErrorAction.VERIFY_SMS.url);
        if (cVarA instanceof cn.mucang.android.core.api.verify.e) {
            return (cn.mucang.android.core.api.verify.e) cVarA;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q(View view) {
        String string = this.f2029e.codeInput.getText().toString();
        if (cn.mucang.android.core.utils.n0.e(string)) {
            return;
        }
        x(string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(View view) {
        w();
    }

    public static void v(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SMSVerifyActivity.class);
        intent.putExtra(ErrorDialogParams.EXTRA_MESSAGE, str);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
    }

    private void w() {
        cn.mucang.android.core.api.c.b.b(new a());
    }

    private void x(String str) {
        cn.mucang.android.core.api.c.b.b(new b(str));
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "短信验证";
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AccountApiVerifyActivitySmsBinding accountApiVerifyActivitySmsBindingInflate = AccountApiVerifyActivitySmsBinding.inflate(getLayoutInflater());
        this.f2029e = accountApiVerifyActivitySmsBindingInflate;
        setContentView(accountApiVerifyActivitySmsBindingInflate.getRoot());
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        if (AccountManager.h().g() == null) {
            finish();
            return;
        }
        String stringExtra = intent.getStringExtra(ErrorDialogParams.EXTRA_MESSAGE);
        this.f2027a = new ProgressDialog(this);
        this.f2029e.message.setText(stringExtra);
        this.f2029e.phone.setText(String.format("注册手机号：%s", AccountManager.h().g().getPhone()));
        this.f2029e.ok.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2135a.q(view);
            }
        });
        this.f2029e.cancel.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2137a.s(view);
            }
        });
        this.f2029e.sendSms.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.w0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2139a.u(view);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.core.api.verify.e eVarO = o();
        if (eVarO != null) {
            eVarO.c(false, null);
        }
        CountDownTimer countDownTimer = this.b;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }
}

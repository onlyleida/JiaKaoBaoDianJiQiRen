package cn.mucang.android.account.k;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.text.Html;
import android.view.View;
import android.view.animation.AnimationUtils;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.account.g.k;
import cn.mucang.android.account.h.d;
import cn.mucang.android.account.ui.LoginSmsCommonView;
import cn.mucang.android.account.utils.AccountProtocolUtils;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.framework.account.R;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;

/* JADX INFO: loaded from: classes.dex */
public class c extends cn.mucang.android.account.k.b<LoginSmsCommonView, LoginSmsModel> {
    private LoginSmsModel m;
    private boolean n;
    private long o;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (((LoginSmsCommonView) ((cn.mucang.android.ui.framework.mvp.a) c.this).f8977a).getCheckBox() == null || ((LoginSmsCommonView) ((cn.mucang.android.ui.framework.mvp.a) c.this).f8977a).getCheckBox().isChecked()) {
                c.this.D(view);
                cn.mucang.android.account.utils.a.onEvent("手机号短信登录页-点击语音验证");
            } else {
                View view2 = c.this.f2225g;
                view2.startAnimation(AnimationUtils.loadAnimation(view2.getContext(), R.anim.core__account_protocol));
                u.h(n0.c(R.string.account__disagree_protocol_tip));
            }
        }
    }

    class b implements d.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f2236a;

        b(d dVar) {
            this.f2236a = dVar;
        }

        @Override // cn.mucang.android.account.h.d.b
        public void a(PopupCaptchaResponse popupCaptchaResponse, String str) {
            c.this.C(this.f2236a, popupCaptchaResponse, str);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.account.k.c$c, reason: collision with other inner class name */
    private static class C0060c extends cn.mucang.android.core.api.c.d<Activity, CheckSmsResponse> {
        private k b;
        private PopupCaptchaResponse c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2237d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f2238e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f2239f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private d f2240g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private c f2241h;

        /* JADX INFO: renamed from: cn.mucang.android.account.k.c$c$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ApiException f2242a;

            a(ApiException apiException) {
                this.f2242a = apiException;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0060c.this.f2240g.u(this.f2242a.getMessage());
            }
        }

        C0060c(c cVar, d dVar, Activity activity, PopupCaptchaResponse popupCaptchaResponse, String str, String str2, boolean z) {
            super(activity);
            this.b = new k();
            this.c = popupCaptchaResponse;
            this.f2237d = str;
            this.f2238e = str2;
            this.f2239f = z;
            this.f2240g = dVar;
            this.f2241h = cVar;
        }

        @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void a() {
            super.a();
            d dVar = this.f2240g;
            if (dVar != null) {
                dVar.w().b("正在请求验证码...");
            }
        }

        @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            d dVar = this.f2240g;
            if (dVar != null) {
                dVar.t();
                if (exc instanceof ApiException) {
                    ApiException apiException = (ApiException) exc;
                    if (apiException.getErrorCode() == 20011) {
                        u.c(new a(apiException));
                    }
                }
            }
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void b(CheckSmsResponse checkSmsResponse) {
            this.f2241h.o = System.currentTimeMillis();
            d dVar = this.f2240g;
            if (dVar != null) {
                dVar.t();
                this.f2240g.dismiss();
            }
            this.f2241h.u(checkSmsResponse);
            this.f2241h.E(e());
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public CheckSmsResponse request() throws Exception {
            PopupCaptchaResponse popupCaptchaResponse = this.c;
            return this.b.g(this.f2238e, popupCaptchaResponse != null ? popupCaptchaResponse.getCaptchaId() : "", n0.g(this.f2237d) ? this.f2237d : "", this.f2239f);
        }
    }

    public c(LoginSmsCommonView loginSmsCommonView) {
        super(loginSmsCommonView);
        this.o = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(d dVar, PopupCaptchaResponse popupCaptchaResponse, String str) {
        cn.mucang.android.core.api.c.b.b(new C0060c(this, dVar, MucangConfig.i(), popupCaptchaResponse, str, ((LoginSmsCommonView) this.f8977a).getUsernameInput().getText().toString(), this.m.getSkipCaptcha().isSkipCaptcha()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(View view) {
        if (System.currentTimeMillis() - this.o < SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US) {
            u.h("您操作太频繁了，请稍后再试");
            return;
        }
        String string = ((LoginSmsCommonView) this.f8977a).getUsernameInput().getText().toString();
        if (n0.e(string)) {
            u.h("请输入手机号码");
            return;
        }
        if (string.length() != 11) {
            u.h("请输入合法的手机号码");
        } else if (this.m.getSkipCaptcha().isSkipCaptcha()) {
            C(null, null, null);
        } else {
            this.n = true;
            r(string);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle("获取语音验证码").setMessage("我们将以语音电话的形式告知您验证码，请留意接听呦~");
        builder.setPositiveButton("知道了", (DialogInterface.OnClickListener) null);
        builder.create().show();
    }

    private void F(int i) {
        if (((LoginSmsCommonView) this.f8977a).getBtnSendSmsCode() != null) {
            if (i >= 30) {
                if (((LoginSmsCommonView) this.f8977a).getBtnSendSmsCode().getVisibility() != 8) {
                    ((LoginSmsCommonView) this.f8977a).getBtnSendSmsCode().setVisibility(8);
                }
            } else if (((LoginSmsCommonView) this.f8977a).getBtnSendSmsCode().getVisibility() != 0) {
                ((LoginSmsCommonView) this.f8977a).getBtnSendSmsCode().setVisibility(0);
                cn.mucang.android.account.utils.a.onEvent("手机号短信登录页-出现语音验证");
            }
        }
    }

    @Override // cn.mucang.android.account.k.b, cn.mucang.android.account.utils.c
    public void c(int i) {
        super.c(i);
        F(i);
    }

    @Override // cn.mucang.android.account.k.b, cn.mucang.android.account.utils.c
    public void f() {
        super.f();
        F(-1);
    }

    @Override // cn.mucang.android.account.k.b
    /* JADX INFO: renamed from: m */
    public void a(LoginSmsModel loginSmsModel) {
        super.a(loginSmsModel);
        this.m = loginSmsModel;
        if (((LoginSmsCommonView) this.f8977a).getBtnSendSmsCode() != null) {
            ((LoginSmsCommonView) this.f8977a).getBtnSendSmsCode().setText(Html.fromHtml("收不到验证码？试试<font color='#1DACF9'><u>语音验证码</u></font>"));
            ((LoginSmsCommonView) this.f8977a).getBtnSendSmsCode().setOnClickListener(new a());
        }
        AccountProtocolUtils.f2251a.a(((LoginSmsCommonView) this.f8977a).getProtocolTv());
    }

    @Override // cn.mucang.android.account.k.b
    protected void o() {
        super.o();
        this.n = false;
    }

    @Override // cn.mucang.android.account.k.b
    protected void v(PopupCaptchaResponse popupCaptchaResponse) {
        d dVarA;
        if (!this.n) {
            super.v(popupCaptchaResponse);
        } else {
            if (!(((LoginSmsCommonView) this.f8977a).getContext() instanceof androidx.fragment.app.d) || (dVarA = d.A(((androidx.fragment.app.d) ((LoginSmsCommonView) this.f8977a).getContext()).getSupportFragmentManager(), popupCaptchaResponse)) == null) {
                return;
            }
            dVarA.B(new b(dVarA));
        }
    }
}

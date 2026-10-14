package cn.mucang.android.account.k;

import android.app.Activity;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;
import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.account.g.k;
import cn.mucang.android.account.ui.LoginSmsCommonView;
import cn.mucang.android.account.ui.b;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public class b<V extends cn.mucang.android.account.ui.b, M extends LoginSmsModel> extends cn.mucang.android.ui.framework.mvp.a<V, M> implements cn.mucang.android.account.utils.c {
    private Button b;
    private EditText c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private EditText f2222d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Button f2223e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CheckBox f2224f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f2225g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private M f2226h;
    private e i;
    private CheckSmsResponse j;
    private cn.mucang.android.account.utils.d k;
    private d l;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.o();
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.account.k.b$b, reason: collision with other inner class name */
    class ViewOnClickListenerC0059b implements View.OnClickListener {
        ViewOnClickListenerC0059b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.l == null || !b.this.l.a()) {
                b.this.n();
            }
        }
    }

    class c implements cn.mucang.android.account.h.e.b {
        c() {
        }

        @Override // cn.mucang.android.account.h.e.b
        public void a(CheckSmsResponse checkSmsResponse) {
            b.this.s(checkSmsResponse);
        }
    }

    public interface d {
        boolean a();
    }

    public interface e {
        void a(UserInfoResponse userInfoResponse, String str);
    }

    private static class f extends cn.mucang.android.core.api.c.d<Activity, PopupCaptchaResponse> {
        private k b;
        private b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private cn.mucang.android.account.ui.a f2230d;

        /* synthetic */ f(b bVar, Activity activity, String str, a aVar) {
            this(bVar, activity, str);
        }

        @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void a() {
            super.a();
            this.f2230d.b("正在请求验证码...");
        }

        @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            super.c(exc);
            cn.mucang.android.core.utils.k.b(this.f2230d);
            String message = exc.getMessage();
            if (n0.e(message)) {
                message = "网络连接失败";
            }
            u.h(message);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void b(PopupCaptchaResponse popupCaptchaResponse) {
            cn.mucang.android.core.utils.k.b(this.f2230d);
            if (popupCaptchaResponse == null) {
                u.h("网络连接失败");
            } else {
                this.c.v(popupCaptchaResponse);
            }
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public PopupCaptchaResponse request() throws Exception {
            return this.b.h();
        }

        private f(b bVar, Activity activity, String str) {
            super(activity);
            this.b = new k();
            this.c = bVar;
            this.f2230d = new cn.mucang.android.account.ui.a(activity);
        }
    }

    private static class g extends cn.mucang.android.core.api.c.d<Activity, cn.mucang.android.account.api.data.b> {
        private k b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2231d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f2232e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private cn.mucang.android.account.ui.a f2233f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        b f2234g;

        g(b bVar, Activity activity, String str, String str2, String str3) {
            super(activity);
            this.b = new k();
            this.c = str;
            this.f2231d = str2;
            this.f2232e = str3;
            this.f2233f = new cn.mucang.android.account.ui.a(activity);
            this.f2234g = bVar;
        }

        @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void a() {
            super.a();
            this.f2233f.b("正在请求登录...");
        }

        @Override // cn.mucang.android.core.api.c.d, cn.mucang.android.core.api.c.a
        public void c(Exception exc) {
            super.c(exc);
            cn.mucang.android.core.utils.k.b(this.f2233f);
            String message = exc.getMessage();
            if (n0.e(message)) {
                message = "网络连接失败";
            }
            u.h(message);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void b(cn.mucang.android.account.api.data.b bVar) {
            cn.mucang.android.core.utils.k.b(this.f2233f);
            cn.mucang.android.account.f.e(bVar.f2147a, this.f2234g.f2226h);
            cn.mucang.android.account.utils.a.onEvent("手机号短信登录页-登录成功");
            if (this.f2234g.i != null) {
                this.f2234g.i.a(bVar.f2147a, this.c);
            }
            cn.mucang.android.account.f.d(e(), this.f2234g.f2226h, bVar);
        }

        @Override // cn.mucang.android.core.api.c.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public cn.mucang.android.account.api.data.b request() throws Exception {
            return cn.mucang.android.account.f.a(this.b.j(this.c, this.f2231d, this.f2232e));
        }
    }

    public b(V v) {
        super(v);
        this.k = new cn.mucang.android.account.utils.d(this);
        q(v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.j == null) {
            u.h("请先请求验证码");
            return;
        }
        String string = this.f2222d.getText().toString();
        String string2 = this.c.getText().toString();
        if (n0.e(string)) {
            u.h("请输入验证码");
            return;
        }
        CheckBox checkBox = this.f2224f;
        if (checkBox == null || checkBox.isChecked()) {
            cn.mucang.android.core.api.c.b.b(new g(this, MucangConfig.i(), this.j.getSmsId(), string, string2));
            cn.mucang.android.account.utils.a.onEvent("手机号短信登录页-点击登录");
        } else {
            View view = this.f2225g;
            view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.core__account_protocol));
            u.h(n0.c(R.string.account__disagree_protocol_tip));
        }
    }

    private void p() {
        this.k.d(this.j.getRestSeconds());
    }

    private void q(V v) {
        this.b = v.getResendInput();
        this.c = v.getUsernameInput();
        this.f2222d = v.getCodeInput();
        this.f2223e = v.getOkBtn();
        if (v instanceof LoginSmsCommonView) {
            LoginSmsCommonView loginSmsCommonView = (LoginSmsCommonView) v;
            this.f2224f = loginSmsCommonView.getCheckBox();
            this.f2225g = loginSmsCommonView.getProtocolIn();
        }
        EditText editText = this.c;
        editText.addTextChangedListener(new cn.mucang.android.account.utils.e(editText, this.f2223e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(CheckSmsResponse checkSmsResponse) {
        this.j = checkSmsResponse;
        p();
    }

    @Override // cn.mucang.android.account.utils.c
    public void c(int i) {
        t(i);
    }

    @Override // cn.mucang.android.account.utils.c
    public void f() {
        t(0);
    }

    @Override // cn.mucang.android.ui.framework.mvp.a
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public void a(M m) {
        this.f2226h = m;
        if (n0.g(m.getPhoneNumber())) {
            this.c.setText(m.getPhoneNumber());
            this.c.setSelection(m.getPhoneNumber().length());
        }
        this.b.setOnClickListener(new a());
        this.f2223e.setOnClickListener(new ViewOnClickListenerC0059b());
    }

    protected void o() {
        String string = this.c.getText().toString();
        if (n0.e(string)) {
            u.h("请输入手机号码");
            return;
        }
        if (string.length() != 11) {
            u.h("请输入合法的手机号码");
            return;
        }
        CheckBox checkBox = this.f2224f;
        if (checkBox == null || checkBox.isChecked()) {
            r(string);
            cn.mucang.android.account.utils.a.onEvent("手机号短信登录页-点击短信验证");
        } else {
            View view = this.f2225g;
            view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.core__account_protocol));
            u.h(n0.c(R.string.account__disagree_protocol_tip));
        }
    }

    void r(String str) {
        cn.mucang.android.core.api.c.b.b(new f(this, MucangConfig.i(), str, null));
    }

    protected void t(int i) {
        Button button = this.b;
        if (i <= 0) {
            button.setEnabled(true);
            button.setText("发送验证码");
            cn.mucang.android.account.utils.a.onEvent("登录_短信登录_停留超时");
        } else {
            button.setEnabled(false);
            button.setText("重新获取" + i + "s");
        }
    }

    protected void u(CheckSmsResponse checkSmsResponse) {
        this.j = checkSmsResponse;
    }

    protected void v(PopupCaptchaResponse popupCaptchaResponse) {
        String string = this.c.getText().toString();
        if (((cn.mucang.android.account.ui.b) this.f8977a).getContext() instanceof androidx.fragment.app.d) {
            cn.mucang.android.account.h.e.D(((androidx.fragment.app.d) ((cn.mucang.android.account.ui.b) this.f8977a).getContext()).getSupportFragmentManager(), popupCaptchaResponse, string, this.f2226h.getSkipCaptcha().isSkipCaptcha(), new c());
        }
    }
}

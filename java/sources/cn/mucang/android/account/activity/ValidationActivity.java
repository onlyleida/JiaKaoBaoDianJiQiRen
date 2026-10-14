package cn.mucang.android.account.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.utils.AccountProtocolUtils;
import cn.mucang.android.framework.account.R;
import cn.mucang.android.framework.account.databinding.AccountActivityValidationBinding;
import com.amap.api.fence.GeoFence;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import f.a.a.a.viewbinding.ViewBindingLazy;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 82\u00020\u00012\u00020\u0002:\u000289B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u0018\u001a\u00020\u0019J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010\u001b\u001a\u00020\u0019H\u0002J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\b\u0010\u001f\u001a\u0004\u0018\u00010\u0005J\b\u0010 \u001a\u0004\u0018\u00010\u000fJ\b\u0010!\u001a\u00020\u000fH\u0016J\b\u0010\"\u001a\u00020\u0019H\u0002J\b\u0010#\u001a\u00020\u0019H\u0002J\u0010\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\tH\u0002J\"\u0010&\u001a\u00020\u00192\u0006\u0010'\u001a\u00020\t2\u0006\u0010(\u001a\u00020\t2\b\u0010)\u001a\u0004\u0018\u00010*H\u0014J\u0012\u0010+\u001a\u00020\u00192\b\u0010,\u001a\u0004\u0018\u00010-H\u0014J\u0018\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\t2\u0006\u00101\u001a\u000202H\u0016J\b\u00103\u001a\u00020\u0019H\u0016J\u0010\u00104\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\tH\u0016J\u0010\u00105\u001a\u00020\u00192\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u00106\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\tH\u0002J\u0010\u00107\u001a\u00020\u00192\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015¨\u0006:"}, d2 = {"Lcn/mucang/android/account/activity/ValidationActivity;", "Lcn/mucang/android/account/activity/AccountBaseActivity;", "Lcn/mucang/android/account/utils/CountDownListener;", "()V", "checkSmsResponse", "Lcn/mucang/android/account/api/data/CheckSmsResponse;", "clickSendVoiceTime", "", "from", "", "handler", "Lcn/mucang/android/account/utils/CountDownTimeHandler;", "inputMethodManager", "Landroid/view/inputmethod/InputMethodManager;", "mobile", "", "validator", "Lcn/mucang/android/account/activity/handler/ValidateHandler;", "viewBinding", "Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;", "getViewBinding", "()Lcn/mucang/android/framework/account/databinding/AccountActivityValidationBinding;", "viewBinding$delegate", "Lkotlin/Lazy;", "afterViews", "", "doButtonLeft", "doOk", "doResend", "view", "Landroid/view/View;", "getCheckSmsResponse", "getMobile", "getStatName", "handleSmsResponse", "initValidator", "initVoiceCode", "restSeconds", "onActivityResult", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onKeyDown", "", "keyCode", GeoFence.BUNDLE_KEY_FENCESTATUS, "Landroid/view/KeyEvent;", "onTimeOver", "onTimeUpdate", "setCheckSmsResponse", "setCountDownTime", "setVoiceCodeCheckSmsResponse", "Companion", "IntentBuilder", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ValidationActivity extends l1 implements cn.mucang.android.account.utils.c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InputMethodManager f2052e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CheckSmsResponse f2053f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f2054g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f2055h;
    private cn.mucang.android.account.activity.o1.g i;
    private long j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f2051d = new ViewBindingLazy(AccountActivityValidationBinding.class, new b(this));
    private final cn.mucang.android.account.utils.d k = new cn.mucang.android.account.utils.d(this);

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\bR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/account/activity/ValidationActivity$IntentBuilder;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "checkSmsResponse", "Lcn/mucang/android/account/api/data/CheckSmsResponse;", SocialConstants.PARAM_COMMENT, "", "from", "", "mobile", "title", "build", "Landroid/content/Intent;", "setCheckSmsResponse", "setDescription", "setFrom", "setMobile", "setTitle", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f2056a;
        private CheckSmsResponse b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2057d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f2058e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f2059f;

        public a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            this.f2056a = context;
        }

        public final Intent a() {
            Intent intent = new Intent(this.f2056a, (Class<?>) ValidationActivity.class);
            CheckSmsResponse checkSmsResponse = this.b;
            if (checkSmsResponse != null) {
                intent.putExtra("__check_sms_response", checkSmsResponse);
            }
            intent.putExtra("__from__", this.c);
            if (cn.mucang.android.core.utils.n0.g(this.f2057d)) {
                intent.putExtra("__title__", this.f2057d);
            }
            if (cn.mucang.android.core.utils.n0.g(this.f2058e)) {
                intent.putExtra("__mobile__", this.f2058e);
            }
            if (cn.mucang.android.core.utils.n0.g(this.f2059f)) {
                intent.putExtra("__description__", this.f2059f);
            }
            return intent;
        }

        public final a b(CheckSmsResponse checkSmsResponse) {
            this.b = checkSmsResponse;
            return this;
        }

        public final a c(String str) {
            this.f2059f = str;
            return this;
        }

        public final a d(int i) {
            this.c = i;
            return this;
        }

        public final a e(String str) {
            this.f2058e = str;
            return this;
        }

        public final a f(String str) {
            this.f2057d = str;
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"cn/mucang/android/core/viewbinding/ViewBindingLazyKt$viewBinding$1", "Lcn/mucang/android/core/viewbinding/ViewBindingLazy$LayoutInflaterProvider;", "get", "Landroid/view/LayoutInflater;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements ViewBindingLazy.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f2060a;

        public b(Activity activity) {
            this.f2060a = activity;
        }

        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.f2060a.getLayoutInflater();
            kotlin.jvm.internal.r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    }

    private final AccountActivityValidationBinding A() {
        return (AccountActivityValidationBinding) this.f2051d.getValue();
    }

    private final void B() {
        CheckSmsResponse checkSmsResponse = this.f2053f;
        if ((checkSmsResponse == null ? null : checkSmsResponse.getCheckType()) != CheckType.TRUE) {
            CheckSmsResponse checkSmsResponse2 = this.f2053f;
            if (cn.mucang.android.core.utils.n0.e(checkSmsResponse2 != null ? checkSmsResponse2.getSmsCode() : null)) {
                return;
            }
            CheckSmsResponse checkSmsResponse3 = this.f2053f;
            cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.account.activity.e1
                @Override // java.lang.Runnable
                public final void run() {
                    ValidationActivity.C(this.f2075a);
                }
            }, (checkSmsResponse3 == null ? 0L : checkSmsResponse3.getDelay()) * 1000);
        }
        cn.mucang.android.account.utils.d dVar = this.k;
        CheckSmsResponse checkSmsResponse4 = this.f2053f;
        dVar.d(checkSmsResponse4 == null ? 0 : checkSmsResponse4.getRestSeconds());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(ValidationActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        CheckSmsResponse checkSmsResponse = this$0.f2053f;
        String smsCode = checkSmsResponse == null ? null : checkSmsResponse.getSmsCode();
        int length = smsCode == null ? 0 : smsCode.length();
        this$0.A().codeInput.setText(smsCode);
        this$0.A().codeInput.setSelection(length);
        this$0.A().checkFromForgetPassword.codeInputFromForgetPassword.setText(smsCode);
        this$0.A().checkFromForgetPassword.codeInputFromForgetPassword.setSelection(length);
    }

    private final void D() {
        switch (this.f2055h) {
            case 2:
                this.i = new cn.mucang.android.account.activity.o1.c(this);
                break;
            case 3:
                this.i = new cn.mucang.android.account.activity.o1.d(this, getIntent().getStringExtra("__change_phone_session_id__"), getIntent().getIntExtra("__change_phone_type__", 0));
                break;
            case 4:
                this.i = new cn.mucang.android.account.activity.o1.e(this);
                break;
            case 5:
                this.i = new cn.mucang.android.account.activity.o1.f(this);
                break;
            case 6:
                this.i = new cn.mucang.android.account.activity.o1.i(this);
                A().changeMobile.setVisibility(0);
                break;
            case 7:
                this.i = new cn.mucang.android.account.activity.o1.h(this);
                break;
        }
    }

    private final void E(int i) {
        if (this.f2055h != 2) {
            A().btnSendVoiceCode.setVisibility(8);
            return;
        }
        if (i >= 30) {
            if (A().btnSendVoiceCode.getVisibility() != 8) {
                A().btnSendVoiceCode.setVisibility(8);
            }
        } else if (A().btnSendVoiceCode.getVisibility() != 0) {
            A().btnSendVoiceCode.setText(Html.fromHtml("收不到验证码？试试<font color='#1DACF9'><u>语音验证码</u></font>"));
            A().btnSendVoiceCode.setVisibility(0);
            cn.mucang.android.account.utils.a.onEvent("绑定手机页-出现语音验证");
        }
    }

    private final void R(int i) {
        Button button = this.f2055h != 4 ? A().btnResendInput : A().checkFromForgetPassword.btnResendInputFromForgetPassword;
        kotlin.jvm.internal.r.d(button, "if (from != FROM_FORGOT_…mForgetPassword\n        }");
        if (i > 0) {
            button.setEnabled(false);
            button.setText("重新获取" + i + 's');
        } else {
            button.setEnabled(true);
            button.setText("发送验证码");
        }
        E(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(ValidationActivity this$0, EditText[] who) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(who, "$who");
        InputMethodManager inputMethodManager = this$0.f2052e;
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(who[0], 1);
        } else {
            kotlin.jvm.internal.r.u("inputMethodManager");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(ValidationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(ValidationActivity this$0, View it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.x(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(ValidationActivity this$0, View it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        this$0.x(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(ValidationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(ValidationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(ValidationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        AccountManager.h().E(this$0, 1317);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(ValidationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (System.currentTimeMillis() - this$0.j >= SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US) {
            cn.mucang.android.account.activity.o1.g gVar = this$0.i;
            if (gVar != null) {
                gVar.e(view);
            }
            this$0.j = System.currentTimeMillis();
        } else {
            cn.mucang.android.core.utils.u.h("您操作太频繁了，请稍后再试");
        }
        cn.mucang.android.account.utils.a.onEvent("绑定手机页-点击语音验证");
    }

    private final void t() {
        if (2 != this.f2055h) {
            finish();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("温馨提示").setMessage("为了您的账号安全建议绑定手机号");
        builder.setCancelable(false);
        builder.setPositiveButton("继续绑定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.account.activity.d1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ValidationActivity.v(dialogInterface, i);
            }
        });
        builder.setNegativeButton("重新登录", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.account.activity.c1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ValidationActivity.u(this.f2069a, dialogInterface, i);
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(ValidationActivity this$0, DialogInterface dialogInterface, int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.account.utils.a.onEvent("绑定手机页-弹窗-重新登录");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(DialogInterface dialogInterface, int i) {
        cn.mucang.android.account.utils.a.onEvent("绑定手机页-弹窗-继续绑定");
    }

    private final void w() {
        String string = this.f2055h != 4 ? A().codeInput.getText().toString() : A().checkFromForgetPassword.codeInputFromForgetPassword.getText().toString();
        CheckSmsResponse checkSmsResponse = this.f2053f;
        if (checkSmsResponse != null) {
            if (!cn.mucang.android.core.utils.n0.e(checkSmsResponse == null ? null : checkSmsResponse.getSmsId())) {
                if (cn.mucang.android.core.utils.n0.e(string)) {
                    cn.mucang.android.core.utils.u.h("请输入验证码");
                    return;
                }
                if (this.f2055h == 2 && !A().accountProtocolIn.checkBox.isChecked()) {
                    A().accountProtocolIn.getRoot().startAnimation(AnimationUtils.loadAnimation(this, R.anim.core__account_protocol));
                    cn.mucang.android.core.utils.u.h(cn.mucang.android.core.utils.n0.c(R.string.account__disagree_protocol_tip));
                    return;
                }
                cn.mucang.android.account.activity.o1.g gVar = this.i;
                if (gVar == null) {
                    return;
                }
                CheckSmsResponse checkSmsResponse2 = this.f2053f;
                gVar.f(checkSmsResponse2 != null ? checkSmsResponse2.getSmsId() : null, string);
                return;
            }
        }
        cn.mucang.android.core.utils.u.h("请先请求验证码");
    }

    private final void x(View view) {
        cn.mucang.android.account.activity.o1.g gVar = this.i;
        if (gVar != null) {
            gVar.d(view);
        }
        A().btnSendVoiceCode.setVisibility(8);
    }

    public final void Q(CheckSmsResponse checkSmsResponse) {
        this.f2053f = checkSmsResponse;
        B();
    }

    public final void S(CheckSmsResponse checkSmsResponse) {
        this.f2053f = checkSmsResponse;
    }

    @Override // cn.mucang.android.account.utils.c
    public void c(int i) {
        R(i);
    }

    @Override // cn.mucang.android.account.utils.c
    public void f() {
        R(0);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "验证手机页";
    }

    public final void k() {
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("__title__");
        if (cn.mucang.android.core.utils.n0.e(stringExtra)) {
            stringExtra = "验证手机";
        }
        A().titleBar.titleBarCenter.setText(stringExtra);
        this.f2055h = intent.getIntExtra("__from__", 2);
        CheckSmsResponse checkSmsResponse = (CheckSmsResponse) intent.getSerializableExtra("__check_sms_response");
        if (checkSmsResponse == null) {
            cn.mucang.android.core.utils.u.h("非法的请求");
            finish();
            return;
        }
        D();
        cn.mucang.android.account.activity.o1.g gVar = this.i;
        if (!(gVar == null ? false : gVar.b(intent))) {
            finish();
            return;
        }
        A().finishedText.setText(intent.getStringExtra("__description__"));
        Q(checkSmsResponse);
        String stringExtra2 = intent.getStringExtra("__mobile__");
        this.f2054g = stringExtra2;
        final EditText[] editTextArr = new EditText[1];
        if (cn.mucang.android.core.utils.n0.g(stringExtra2)) {
            A().panelShowUsername.setVisibility(0);
            A().panelInputUsername.setVisibility(8);
            A().regUsernameShow.setText(this.f2054g);
            editTextArr[0] = A().codeInput;
        } else {
            A().panelShowUsername.setVisibility(8);
            A().panelInputUsername.setVisibility(0);
            editTextArr[0] = A().codeInput;
        }
        if (this.f2055h != 6) {
            cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.account.activity.j1
                @Override // java.lang.Runnable
                public final void run() {
                    ValidationActivity.l(this.f2090a, editTextArr);
                }
            }, 500L);
        }
        if (this.f2055h != 4) {
            A().checkFromForgetPassword.getRoot().setVisibility(8);
            A().checkFromView.setVisibility(0);
        } else {
            A().checkFromForgetPassword.getRoot().setVisibility(0);
            A().checkFromView.setVisibility(8);
            A().checkFromForgetPassword.phoneNumberFromForgetPassword.setText(kotlin.jvm.internal.r.m("验证码已经下发至 ", this.f2054g));
        }
        if (this.f2055h != 2) {
            A().accountProtocolLl.setVisibility(8);
            A().bindTitleView.setVisibility(8);
        } else {
            A().accountProtocolLl.setVisibility(0);
            A().bindTitleView.setVisibility(0);
        }
        AccountProtocolUtils accountProtocolUtils = AccountProtocolUtils.f2251a;
        TextView textView = A().accountProtocolIn.tvProtocol;
        kotlin.jvm.internal.r.d(textView, "viewBinding.accountProtocolIn.tvProtocol");
        AccountProtocolUtils.c(accountProtocolUtils, textView, null, null, 6, null);
        A().titleBar.titleBarLeft.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.i1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ValidationActivity.m(this.f2087a, view);
            }
        });
        A().btnResendInput.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.k1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ValidationActivity.n(this.f2093a, view);
            }
        });
        A().checkFromForgetPassword.btnResendInputFromForgetPassword.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ValidationActivity.o(this.f2066a, view);
            }
        });
        A().okBtn.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.a1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ValidationActivity.p(this.f2063a, view);
            }
        });
        A().checkFromForgetPassword.btnOkFromForgetPassword.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.h1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ValidationActivity.q(this.f2084a, view);
            }
        });
        A().changeMobile.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.f1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ValidationActivity.r(this.f2078a, view);
            }
        });
        A().btnSendVoiceCode.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ValidationActivity.s(this.f2081a, view);
            }
        });
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        cn.mucang.android.account.activity.o1.g gVar = this.i;
        if (gVar == null) {
            return;
        }
        gVar.c(requestCode, resultCode, data);
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(A().getRoot());
        Object systemService = getSystemService("input_method");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        this.f2052e = (InputMethodManager) systemService;
        k();
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        kotlin.jvm.internal.r.e(event, "event");
        if (keyCode != 4) {
            return super.onKeyDown(keyCode, event);
        }
        t();
        return true;
    }

    /* JADX INFO: renamed from: y, reason: from getter */
    public final CheckSmsResponse getF2053f() {
        return this.f2053f;
    }

    public final String z() {
        return cn.mucang.android.core.utils.n0.e(this.f2054g) ? A().usernameInput.getText().toString() : this.f2054g;
    }
}

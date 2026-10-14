package cn.mucang.android.account.p001qrcode.activity;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.account.p001qrcode.model.QrAppModel;
import cn.mucang.android.account.qrcode.api.QrCodeApi;
import cn.mucang.android.account.utils.AccountProtocolUtils;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.n;
import cn.mucang.android.core.utils.d;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.u0;
import cn.mucang.android.framework.account.R;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 .2\u00020\u0001:\u0001.B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0002J\b\u0010 \u001a\u00020\u001bH\u0016J\b\u0010!\u001a\u00020\u001fH\u0003J\b\u0010\"\u001a\u00020\u001fH\u0002J\b\u0010#\u001a\u00020\u001fH\u0002J\b\u0010$\u001a\u00020\u001fH\u0002J\u0012\u0010%\u001a\u00020\u001f2\b\u0010&\u001a\u0004\u0018\u00010'H\u0014J\b\u0010(\u001a\u00020\u001fH\u0014J\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u001bH\u0002J\u0012\u0010+\u001a\u00020\u001f2\b\u0010,\u001a\u0004\u0018\u00010\u001bH\u0002J\b\u0010-\u001a\u00020\u001fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity;", "Lcn/mucang/android/core/config/MucangActivity;", "()V", "agreePrivacyCheckBox", "Landroid/widget/CheckBox;", "protocolLayout", "Landroid/view/View;", "qrCodeApi", "Lcn/mucang/android/account/qrcode/api/QrCodeApi;", "qrCodeApply", "Landroid/widget/TextView;", "qrCodeAvatar", "Landroid/widget/ImageView;", "qrcodeBottom", "Landroid/widget/LinearLayout;", "qrcodeCancel", "qrcodeErrorMsg", "qrcodeErrorView", "qrcodeLogin", "Landroid/widget/Button;", "qrcodeTop", SocialConstants.PARAM_RECEIVER, "Landroid/content/BroadcastReceiver;", "securityTip", "titleBarCenter", "titleBarLeft", "token", "", "userAvatar", "userName", "cancelLogin", "", "getStatName", "initData", "initListener", "initTitleBar", "initView", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "showErrorView", "errorMsg", "showProtocolIfNeed", Constant.PROTOCOL_WEBVIEW_NAME, "updateUserInfo", "Companion", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class QrCodeAuthActivity extends n {
    public static final a s = new a(null);
    private ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f2264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f2265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinearLayout f2266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinearLayout f2267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinearLayout f2268h;
    private TextView i;
    private TextView j;
    private ImageView k;
    private Button l;
    private TextView m;
    private TextView n;
    private LinearLayout o;
    private CheckBox p;
    private View q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final QrCodeApi f2263a = new QrCodeApi();
    private String b = "";
    private final BroadcastReceiver r = new b();

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcn/mucang/android/account/qrcode/activity/QrCodeAuthActivity$Companion;", "", "()V", "TOKEN_EXTRA", "", "launch", "", "context", "Landroid/content/Context;", "token", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, String str) {
            if (context == null) {
                return;
            }
            Intent intent = new Intent(context, (Class<?>) QrCodeAuthActivity.class);
            if (!d.c(context)) {
                intent.setFlags(268435456);
            }
            intent.putExtra("token", str);
            context.startActivity(intent);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/account/qrcode/activity/QrCodeAuthActivity$receiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            r.e(context, "context");
            r.e(intent, "intent");
            if (r.a("cn.mucang.android.account.ACTION_LOGINED", intent.getAction())) {
                QrCodeAuthActivity.this.F();
            }
        }
    }

    public static final void B(Context context, String str) {
        s.a(context, str);
    }

    private final void C(final String str) {
        u.c(new Runnable() { // from class: cn.mucang.android.account.qrcode.activity.e
            @Override // java.lang.Runnable
            public final void run() {
                QrCodeAuthActivity.D(this.f2274a, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(QrCodeAuthActivity this$0, String errorMsg) {
        r.e(this$0, "this$0");
        r.e(errorMsg, "$errorMsg");
        LinearLayout linearLayout = this$0.f2266f;
        if (linearLayout == null) {
            r.u("qrcodeTop");
            throw null;
        }
        linearLayout.setVisibility(8);
        LinearLayout linearLayout2 = this$0.f2268h;
        if (linearLayout2 == null) {
            r.u("qrcodeBottom");
            throw null;
        }
        linearLayout2.setVisibility(8);
        LinearLayout linearLayout3 = this$0.f2267g;
        if (linearLayout3 == null) {
            r.u("qrcodeErrorView");
            throw null;
        }
        linearLayout3.setVisibility(0);
        TextView textView = this$0.i;
        if (textView != null) {
            textView.setText(errorMsg);
        } else {
            r.u("qrcodeErrorMsg");
            throw null;
        }
    }

    private final void E(String str) {
        if (str == null) {
            return;
        }
        String[] stringArray = getResources().getStringArray(R.array.account__scan_login_app_name);
        r.d(stringArray, "resources.getStringArray…unt__scan_login_app_name)");
        final int iD = ArraysKt___ArraysKt.D(stringArray, str);
        if (iD < 0) {
            return;
        }
        View view = this.q;
        if (view == null) {
            r.u("protocolLayout");
            throw null;
        }
        view.setVisibility(0);
        AccountProtocolUtils accountProtocolUtils = AccountProtocolUtils.f2251a;
        View viewFindViewById = findViewById(R.id.tv_protocol);
        r.d(viewFindViewById, "findViewById(R.id.tv_protocol)");
        accountProtocolUtils.b((TextView) viewFindViewById, new Function0<v>() { // from class: cn.mucang.android.account.qrcode.activity.QrCodeAuthActivity$showProtocolIfNeed$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                QrCodeAuthActivity qrCodeAuthActivity = this.this$0;
                u0.g(qrCodeAuthActivity, qrCodeAuthActivity.getResources().getStringArray(R.array.account__scan_login_app_user_protocol)[iD]);
            }
        }, new Function0<v>() { // from class: cn.mucang.android.account.qrcode.activity.QrCodeAuthActivity$showProtocolIfNeed$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                QrCodeAuthActivity qrCodeAuthActivity = this.this$0;
                u0.g(qrCodeAuthActivity, qrCodeAuthActivity.getResources().getStringArray(R.array.account__scan_login_app_privacy_protocol)[iD]);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
        TextView textView = this.j;
        if (textView == null) {
            r.u("userName");
            throw null;
        }
        textView.setText(AccountManager.h().g().getNickname());
        ImageView imageView = this.k;
        if (imageView == null) {
            r.u("userAvatar");
            throw null;
        }
        String avatar = AccountManager.h().g().getAvatar();
        int i = R.drawable.account__qrcode_default_avatar;
        f.a.a.b.a.a.g(imageView, avatar, i, i, null);
    }

    private final void h() {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.qrcode.activity.d
            @Override // java.lang.Runnable
            public final void run() {
                QrCodeAuthActivity.i(this.f2273a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(QrCodeAuthActivity this$0) {
        r.e(this$0, "this$0");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m139constructorimpl(Boolean.valueOf(this$0.f2263a.f(this$0.b)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
        this$0.finish();
    }

    @SuppressLint({"SetTextI18n"})
    private final void initData() {
        String stringExtra = getIntent().getStringExtra("token");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.b = stringExtra;
        if (t.r(stringExtra)) {
            C("二维码信息不匹配，请稍后再试");
        } else {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.qrcode.activity.c
                @Override // java.lang.Runnable
                public final void run() {
                    QrCodeAuthActivity.j(this.f2272a);
                }
            });
        }
    }

    private final void initView() {
        View viewFindViewById = findViewById(R.id.account__qrcode_logo);
        r.d(viewFindViewById, "findViewById(R.id.account__qrcode_logo)");
        this.c = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.account__qrcode_apply);
        r.d(viewFindViewById2, "findViewById(R.id.account__qrcode_apply)");
        this.f2264d = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.account__qrcode_security_tip);
        r.d(viewFindViewById3, "findViewById(R.id.account__qrcode_security_tip)");
        this.f2265e = (TextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.account__qrcode_top);
        r.d(viewFindViewById4, "findViewById(R.id.account__qrcode_top)");
        this.f2266f = (LinearLayout) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.account__qrcode_error);
        r.d(viewFindViewById5, "findViewById(R.id.account__qrcode_error)");
        this.f2267g = (LinearLayout) viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.account__qrcode_bottom);
        r.d(viewFindViewById6, "findViewById(R.id.account__qrcode_bottom)");
        this.f2268h = (LinearLayout) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.account__qrcode_error_msg);
        r.d(viewFindViewById7, "findViewById(R.id.account__qrcode_error_msg)");
        this.i = (TextView) viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.account__qrcode_user_avatar);
        r.d(viewFindViewById8, "findViewById(R.id.account__qrcode_user_avatar)");
        this.k = (ImageView) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.account__qrcode_user_name);
        r.d(viewFindViewById9, "findViewById(R.id.account__qrcode_user_name)");
        this.j = (TextView) viewFindViewById9;
        View viewFindViewById10 = findViewById(R.id.account__qrcode_login);
        r.d(viewFindViewById10, "findViewById(R.id.account__qrcode_login)");
        this.l = (Button) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.account__qrcode_cancel);
        r.d(viewFindViewById11, "findViewById(R.id.account__qrcode_cancel)");
        this.m = (TextView) viewFindViewById11;
        View viewFindViewById12 = findViewById(R.id.title_bar_center);
        r.d(viewFindViewById12, "findViewById(R.id.title_bar_center)");
        this.n = (TextView) viewFindViewById12;
        View viewFindViewById13 = findViewById(R.id.title_bar_left);
        r.d(viewFindViewById13, "findViewById(R.id.title_bar_left)");
        this.o = (LinearLayout) viewFindViewById13;
        View viewFindViewById14 = findViewById(R.id.check_box);
        r.d(viewFindViewById14, "findViewById(R.id.check_box)");
        this.p = (CheckBox) viewFindViewById14;
        View viewFindViewById15 = findViewById(R.id.account_protocol);
        r.d(viewFindViewById15, "findViewById(R.id.account_protocol)");
        this.q = viewFindViewById15;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(final QrCodeAuthActivity this$0) {
        Object objM139constructorimpl;
        r.e(this$0, "this$0");
        try {
            Result.Companion companion = Result.INSTANCE;
            final QrAppModel qrAppModelI = this$0.f2263a.i(this$0.b);
            if (qrAppModelI == null) {
                this$0.C("二维码信息不匹配，请稍后再试");
                return;
            }
            u.c(new Runnable() { // from class: cn.mucang.android.account.qrcode.activity.i
                @Override // java.lang.Runnable
                public final void run() {
                    QrCodeAuthActivity.l(this.f2278a, qrAppModelI);
                }
            });
            if (!this$0.f2263a.k(this$0.b)) {
                this$0.C("扫码失败，请稍后再试");
                return;
            }
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
            Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
            if (thM142exceptionOrNullimpl != null && (thM142exceptionOrNullimpl instanceof ApiException) && ((ApiException) thM142exceptionOrNullimpl).getErrorCode() == 20040) {
                this$0.C("二维码已超时，请刷新后再试");
            } else {
                u.c(new Runnable() { // from class: cn.mucang.android.account.qrcode.activity.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        QrCodeAuthActivity.k(this.f2271a);
                    }
                });
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(QrCodeAuthActivity this$0) {
        r.e(this$0, "this$0");
        if (AccountManager.h().l()) {
            this$0.F();
        } else {
            AccountManager.h().H(this$0, new LoginSmsModel(this$0.getStatName()).setCheckType(CheckType.FALSE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(QrCodeAuthActivity this$0, QrAppModel qrAppModel) {
        r.e(this$0, "this$0");
        ImageView imageView = this$0.c;
        if (imageView == null) {
            r.u("qrCodeAvatar");
            throw null;
        }
        f.a.a.b.a.a.i(imageView, qrAppModel.getLogo(), R.drawable.account_qrcode_empty_logo);
        int color = Color.parseColor("#999999");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(qrAppModel.getName());
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) " 正在申请登录");
        spannableStringBuilder.setSpan(new ForegroundColorSpan(color), length, spannableStringBuilder.length(), 33);
        TextView textView = this$0.f2264d;
        if (textView == null) {
            r.u("qrCodeApply");
            throw null;
        }
        textView.setMovementMethod(new LinkMovementMethod());
        TextView textView2 = this$0.f2264d;
        if (textView2 == null) {
            r.u("qrCodeApply");
            throw null;
        }
        textView2.setText(spannableStringBuilder);
        TextView textView3 = this$0.f2265e;
        if (textView3 == null) {
            r.u("securityTip");
            throw null;
        }
        textView3.setText("您正在尝试登录" + ((Object) qrAppModel.getName()) + "，请确认环境安全");
        this$0.E(qrAppModel.getName());
    }

    private final void m() {
        Button button = this.l;
        if (button == null) {
            r.u("qrcodeLogin");
            throw null;
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.qrcode.activity.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QrCodeAuthActivity.n(this.f2270a, view);
            }
        });
        TextView textView = this.m;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.qrcode.activity.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    QrCodeAuthActivity.p(this.f2275a, view);
                }
            });
        } else {
            r.u("qrcodeCancel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(final QrCodeAuthActivity this$0, View view) {
        r.e(this$0, "this$0");
        View view2 = this$0.q;
        if (view2 == null) {
            r.u("protocolLayout");
            throw null;
        }
        if (view2.getVisibility() == 0) {
            CheckBox checkBox = this$0.p;
            if (checkBox == null) {
                r.u("agreePrivacyCheckBox");
                throw null;
            }
            if (!checkBox.isChecked()) {
                View view3 = this$0.q;
                if (view3 == null) {
                    r.u("protocolLayout");
                    throw null;
                }
                view3.startAnimation(AnimationUtils.loadAnimation(this$0, R.anim.core__account_protocol));
                u.h(this$0.getResources().getString(R.string.account__disagree_protocol_tip));
                return;
            }
        }
        if (!AccountManager.h().l()) {
            AccountManager.h().H(this$0, new LoginSmsModel(this$0.getStatName()).setCheckType(CheckType.FALSE));
        } else if (t.r(this$0.b)) {
            u.h("授权登录失败！");
        } else {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.qrcode.activity.g
                @Override // java.lang.Runnable
                public final void run() {
                    QrCodeAuthActivity.o(this.f2276a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(QrCodeAuthActivity this$0) {
        r.e(this$0, "this$0");
        try {
            QrCodeApi qrCodeApi = this$0.f2263a;
            String str = this$0.b;
            String authToken = AccountManager.h().g().getAuthToken();
            if (authToken == null) {
                authToken = "";
            }
            if (!qrCodeApi.g(str, authToken)) {
                u.h("授权登录失败！");
            } else {
                u.h("授权登录成功！");
                this$0.finish();
            }
        } catch (Exception e2) {
            if ((e2 instanceof ApiException) && ((ApiException) e2).getErrorCode() == 20040) {
                this$0.C("二维码已超时，请刷新后再试");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(QrCodeAuthActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.h();
    }

    private final void q() {
        TextView textView = this.n;
        if (textView == null) {
            r.u("titleBarCenter");
            throw null;
        }
        textView.setText("授权登录");
        TextView textView2 = this.n;
        if (textView2 == null) {
            r.u("titleBarCenter");
            throw null;
        }
        textView2.setTextColor(Color.parseColor("#333333"));
        LinearLayout linearLayout = this.o;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.qrcode.activity.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    QrCodeAuthActivity.r(this.f2277a, view);
                }
            });
        } else {
            r.u("titleBarLeft");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(QrCodeAuthActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.h();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "二维码授权页面";
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.account__activity_qrcode_auth);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("cn.mucang.android.account.ACTION_LOGINED");
        MucangConfig.q().c(this.r, intentFilter);
        initView();
        q();
        initData();
        m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MucangConfig.q().e(this.r);
    }
}

package com.cmic.sso.sdk.activity;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import cn.mucang.sundial.android.tcp.data.gnss.AlarmInfo;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.cmic.sso.sdk.AuthThemeConfig;
import com.iflytek.speech.VoiceWakeuperAidl;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.k.n;
import com.mobile.auth.k.u;
import com.mobile.auth.k.w;
import com.mobile.auth.k.y;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class LoginAuthActivity extends Activity implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final String f11631a = LoginAuthActivity.class.getSimpleName();
    private Handler b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RelativeLayout f11632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.cmic.sso.sdk.widget.a f11633e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.cmic.sso.sdk.widget.a f11634f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.cmic.sso.sdk.widget.a f11635g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.cmic.sso.sdk.a f11636h;
    private com.mobile.auth.e.f i;
    private CheckBox k;
    private LinearLayout l;
    private RelativeLayout m;
    private com.mobile.auth.e.e q;
    private LinearLayout s;
    private String t;
    private AuthThemeConfig u;
    private int v;
    private int w;
    private boolean x;
    private Dialog y;
    private String j = "";
    private long n = 0;
    private int o = 0;
    private g p = null;
    private boolean r = true;

    class a implements DialogInterface.OnKeyListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                LoginAuthActivity.this.f11633e.dismiss();
            }
            return true;
        }
    }

    class b implements DialogInterface.OnKeyListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                LoginAuthActivity.this.f11634f.dismiss();
            }
            return true;
        }
    }

    class c implements DialogInterface.OnKeyListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                LoginAuthActivity.this.f11635g.dismiss();
            }
            return true;
        }
    }

    class d implements com.mobile.auth.k.g.a {
        d() {
        }
    }

    class e implements CompoundButton.OnCheckedChangeListener {
        e() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            CheckBox checkBox;
            LoginAuthActivity loginAuthActivity;
            String str;
            if (z) {
                LoginAuthActivity.this.f11632d.setEnabled(true);
                try {
                    CheckBox checkBox2 = LoginAuthActivity.this.k;
                    LoginAuthActivity loginAuthActivity2 = LoginAuthActivity.this;
                    checkBox2.setBackgroundResource(n.b(loginAuthActivity2, loginAuthActivity2.u.getCheckedImgPath()));
                    return;
                } catch (Exception unused) {
                    checkBox = LoginAuthActivity.this.k;
                    loginAuthActivity = LoginAuthActivity.this;
                    str = "umcsdk_check_image";
                }
            } else {
                LoginAuthActivity.this.f11632d.setEnabled(true ^ TextUtils.isEmpty(LoginAuthActivity.this.u.getCheckTipText()));
                try {
                    CheckBox checkBox3 = LoginAuthActivity.this.k;
                    LoginAuthActivity loginAuthActivity3 = LoginAuthActivity.this;
                    checkBox3.setBackgroundResource(n.b(loginAuthActivity3, loginAuthActivity3.u.getUncheckedImgPath()));
                    return;
                } catch (Exception unused2) {
                    checkBox = LoginAuthActivity.this.k;
                    loginAuthActivity = LoginAuthActivity.this;
                    str = "umcsdk_uncheck_image";
                }
            }
            checkBox.setBackgroundResource(n.b(loginAuthActivity, str));
        }
    }

    class f implements DialogInterface.OnKeyListener {
        f(LoginAuthActivity loginAuthActivity) {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            return i == 4;
        }
    }

    private static class g extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<LoginAuthActivity> f11642a;

        g(LoginAuthActivity loginAuthActivity) {
            this.f11642a = new WeakReference<>(loginAuthActivity);
        }

        private void a(Message message) {
            LoginAuthActivity loginAuthActivity = this.f11642a.get();
            if (loginAuthActivity == null || message.what != 13) {
                return;
            }
            loginAuthActivity.c();
            loginAuthActivity.k();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                a(message);
            } catch (Exception e2) {
                com.mobile.auth.j.a.f13479a.add(e2);
                e2.printStackTrace();
            }
        }
    }

    private static class h extends u.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<LoginAuthActivity> f11643a;
        WeakReference<i> b;

        class a implements com.mobile.auth.e.g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ LoginAuthActivity f11644a;

            /* JADX INFO: renamed from: com.cmic.sso.sdk.activity.LoginAuthActivity$h$a$a, reason: collision with other inner class name */
            class C0194a implements com.mobile.auth.e.g {
                C0194a() {
                }

                @Override // com.mobile.auth.e.g
                public void a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
                    if (h.this.b()) {
                        long jB = aVar.b("loginTime");
                        if (jB != 0) {
                            aVar.b("loginTime", System.currentTimeMillis() - jB);
                        }
                        String strC = aVar.c("phonescrip");
                        if (!"103000".equals(str) || TextUtils.isEmpty(strC)) {
                            a.this.f11644a.r = false;
                            com.mobile.auth.k.c.a("authClickFailed");
                        } else {
                            com.mobile.auth.k.c.a("authClickSuccess");
                            a.this.f11644a.r = true;
                        }
                        a.this.f11644a.a(str, str2, aVar, jSONObject);
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                        a.this.f11644a.p.sendEmptyMessage(13);
                    }
                }
            }

            a(LoginAuthActivity loginAuthActivity) {
                this.f11644a = loginAuthActivity;
            }

            @Override // com.mobile.auth.e.g
            public void a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
                if (h.this.b()) {
                    if ("103000".equals(str)) {
                        this.f11644a.i.a(this.f11644a.f11636h, new C0194a());
                        return;
                    }
                    this.f11644a.r = false;
                    this.f11644a.a(str, str2, aVar, jSONObject);
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    this.f11644a.p.sendEmptyMessage(13);
                }
            }
        }

        class b implements com.mobile.auth.e.g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ LoginAuthActivity f11646a;

            b(LoginAuthActivity loginAuthActivity) {
                this.f11646a = loginAuthActivity;
            }

            @Override // com.mobile.auth.e.g
            public void a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
                if (h.this.b()) {
                    long jB = aVar.b("loginTime");
                    String strC = aVar.c("phonescrip");
                    if (jB != 0) {
                        aVar.b("loginTime", System.currentTimeMillis() - jB);
                    }
                    if (!"103000".equals(str) || TextUtils.isEmpty(strC)) {
                        this.f11646a.r = false;
                        com.mobile.auth.k.c.a("authClickFailed");
                    } else {
                        com.mobile.auth.k.c.a("authClickSuccess");
                        this.f11646a.r = true;
                    }
                    this.f11646a.a(str, str2, aVar, jSONObject);
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    this.f11646a.p.sendEmptyMessage(13);
                }
            }
        }

        protected h(LoginAuthActivity loginAuthActivity, i iVar) {
            this.f11643a = new WeakReference<>(loginAuthActivity);
            this.b = new WeakReference<>(iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b() {
            i iVar = this.b.get();
            if (this.f11643a.get() == null || iVar == null) {
                return false;
            }
            return iVar.a(false);
        }

        @Override // com.mobile.auth.k.u.a
        protected void a() {
            LoginAuthActivity loginAuthActivity = this.f11643a.get();
            if (loginAuthActivity.r) {
                loginAuthActivity.i.a(loginAuthActivity.f11636h, new b(loginAuthActivity));
            } else {
                loginAuthActivity.i.a(loginAuthActivity.f11636h, String.valueOf(3), new a(loginAuthActivity));
            }
        }
    }

    private class i implements Runnable {
        private com.cmic.sso.sdk.a b;
        private boolean c;

        i(com.cmic.sso.sdk.a aVar) {
            this.b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean a(boolean z) {
            boolean z2;
            z2 = this.c;
            this.c = z;
            return !z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a(true)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("resultCode", "102507");
                    jSONObject.put("resultString", "请求超时");
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                LoginAuthActivity.this.r = false;
                com.mobile.auth.k.c.a("authClickFailed");
                LoginAuthActivity.this.p.sendEmptyMessage(13);
                long jB = this.b.b("loginTime");
                if (jB != 0) {
                    this.b.b("loginTime", System.currentTimeMillis() - jB);
                }
                LoginAuthActivity.this.a("102507", "请求超时", this.b, jSONObject);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, com.cmic.sso.sdk.a aVar, JSONObject jSONObject) {
        try {
            this.b.removeCallbacksAndMessages(null);
            if ("103000".equals(str)) {
                if (com.mobile.auth.e.a.a(this) == null || com.mobile.auth.k.i.c(aVar.c("traceId")) == null) {
                    return;
                }
                com.mobile.auth.e.a.a(this).a(str, str2, aVar, jSONObject, (Throwable) null, true);
                return;
            }
            if (!"200020".equals(str)) {
                com.mobile.auth.e.a.a(this).a(str, str2, aVar, jSONObject, (Throwable) null, true);
            } else if (com.mobile.auth.e.a.a(this) != null) {
                if (com.mobile.auth.k.i.c(aVar.c("traceId")) != null) {
                    com.mobile.auth.e.a.a(this).a(str, str2, aVar, jSONObject, null);
                }
                a();
            }
        } catch (Exception e2) {
            com.mobile.auth.k.f.a(f11631a, "CallbackResult:未知错误");
            e2.printStackTrace();
        }
    }

    private void a(boolean z) {
        try {
            com.mobile.auth.k.c.a("authPageOut");
            a("200020", "登录页面关闭", this.f11636h, null);
        } catch (Exception e2) {
            com.mobile.auth.j.a.f13479a.add(e2);
            e2.printStackTrace();
        }
    }

    private void d() {
        String str;
        com.cmic.sso.sdk.a aVarD = com.mobile.auth.k.i.d(getIntent().getStringExtra("traceId"));
        this.f11636h = aVarD;
        if (aVarD == null) {
            this.f11636h = new com.cmic.sso.sdk.a(0);
        }
        this.q = com.mobile.auth.k.i.c(this.f11636h.a("traceId", ""));
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.b = new Handler(getMainLooper());
        this.p = new g(this);
        this.j = this.f11636h.c("securityphone");
        String str2 = f11631a;
        com.mobile.auth.k.f.b(str2, "mSecurityPhone value is " + this.j);
        String strA = this.f11636h.a("operatorType", "");
        com.mobile.auth.k.f.b(str2, "operator value is " + strA);
        if (strA.equals("1")) {
            this.t = Constant.CMCC_PROTOCOL;
            str = "http://wap.cmpassport.com/resources/html/contract.html";
        } else if (strA.equals("3")) {
            this.t = "中国电信天翼账号服务条款";
            str = "https://e.189.cn/sdk/agreement/detail.do";
        } else {
            this.t = "中国联通认证服务协议";
            str = Constant.CUCC_PROTOCOL_URL;
        }
        com.cmic.sso.sdk.widget.a aVar = new com.cmic.sso.sdk.widget.a(this.c, R.style.Theme.Translucent.NoTitleBar, null, str);
        this.f11633e = aVar;
        aVar.setOnKeyListener(new a());
        if (!TextUtils.isEmpty(this.u.getClauseUrl())) {
            com.cmic.sso.sdk.widget.a aVar2 = new com.cmic.sso.sdk.widget.a(this.c, R.style.Theme.Translucent.NoTitleBar, this.u.getClauseName(), this.u.getClauseUrl());
            this.f11634f = aVar2;
            aVar2.setOnKeyListener(new b());
        }
        if (!TextUtils.isEmpty(this.u.getClauseUrl2())) {
            com.cmic.sso.sdk.widget.a aVar3 = new com.cmic.sso.sdk.widget.a(this.c, R.style.Theme.Translucent.NoTitleBar, this.u.getClauseName2(), this.u.getClauseUrl2());
            this.f11635g = aVar3;
            aVar3.setOnKeyListener(new c());
        }
        com.mobile.auth.k.g.a().a(new d());
    }

    private void e() {
        int privacyMarginLeft;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.m.getLayoutParams();
        if (this.u.getNumFieldOffsetY() > 0 || this.u.getNumFieldOffsetY_B() < 0) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            this.m.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            String str = f11631a;
            com.mobile.auth.k.f.b(str, "mPhoneLayout.getMeasuredHeight()=" + this.m.getMeasuredHeight());
            if (this.u.getNumFieldOffsetY() <= 0 || (this.v - this.m.getMeasuredHeight()) - w.a(this.c, this.u.getNumFieldOffsetY()) <= 0) {
                layoutParams.addRule(12, -1);
            } else {
                com.mobile.auth.k.f.b(str, "numberField_top");
                layoutParams.addRule(10, -1);
                layoutParams.setMargins(0, w.a(this.c, this.u.getNumFieldOffsetY()), 0, 0);
            }
        } else if (this.u.getNumFieldOffsetY_B() <= 0 || (this.v - this.m.getMeasuredHeight()) - w.a(this.c, this.u.getNumFieldOffsetY_B()) <= 0) {
            layoutParams.addRule(10, -1);
        } else {
            com.mobile.auth.k.f.b(f11631a, "numberField_bottom");
            layoutParams.addRule(12, -1);
            layoutParams.setMargins(0, 0, 0, w.a(this.c, this.u.getNumFieldOffsetY_B()));
        }
        this.m.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f11632d.getLayoutParams();
        int iMax = Math.max(this.u.getLogBtnMarginLeft(), 0);
        int iMax2 = Math.max(this.u.getLogBtnMarginRight(), 0);
        if (this.u.getLogBtnOffsetY() > 0 || this.u.getLogBtnOffsetY_B() < 0) {
            if (this.u.getLogBtnOffsetY() <= 0 || this.v - w.a(this.c, this.u.getLogBtnHeight() + this.u.getLogBtnOffsetY()) <= 0) {
                layoutParams2.addRule(12, -1);
                layoutParams2.setMargins(w.a(this.c, iMax), 0, w.a(this.c, iMax2), 0);
            } else {
                com.mobile.auth.k.f.b(f11631a, "logBtn_top");
                layoutParams2.addRule(10, -1);
                layoutParams2.setMargins(w.a(this.c, iMax), w.a(this.c, this.u.getLogBtnOffsetY()), w.a(this.c, iMax2), 0);
            }
        } else if (this.u.getLogBtnOffsetY_B() <= 0 || this.v - w.a(this.c, this.u.getLogBtnHeight() + this.u.getLogBtnOffsetY_B()) <= 0) {
            layoutParams2.addRule(10, -1);
            layoutParams2.setMargins(w.a(this.c, iMax), 0, w.a(this.c, iMax2), 0);
        } else {
            com.mobile.auth.k.f.b(f11631a, "logBtn_bottom");
            layoutParams2.addRule(12, -1);
            layoutParams2.setMargins(w.a(this.c, iMax), 0, w.a(this.c, iMax2), w.a(this.c, this.u.getLogBtnOffsetY_B()));
        }
        this.f11632d.setLayoutParams(layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.l.getLayoutParams();
        if (this.u.getPrivacyMarginLeft() >= 0) {
            privacyMarginLeft = this.u.getCheckedImgWidth() > 30 ? this.u.getPrivacyMarginLeft() : this.u.getPrivacyMarginLeft() - (30 - this.u.getCheckedImgWidth());
        } else {
            privacyMarginLeft = this.u.getCheckedImgWidth() > 30 ? 0 : -(30 - this.u.getCheckedImgWidth());
        }
        int iMax3 = Math.max(this.u.getPrivacyMarginRight(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.l.measure(iMakeMeasureSpec2, iMakeMeasureSpec2);
        if (this.u.getPrivacyOffsetY() > 0 || this.u.getPrivacyOffsetY_B() < 0) {
            if (this.u.getPrivacyOffsetY() <= 0 || (this.v - this.l.getMeasuredHeight()) - w.a(this.c, this.u.getPrivacyOffsetY()) <= 0) {
                com.mobile.auth.k.f.b(f11631a, "privacy_bottom=" + privacyMarginLeft);
                layoutParams3.addRule(12, -1);
                layoutParams3.setMargins(w.a(this.c, (float) privacyMarginLeft), 0, w.a(this.c, (float) iMax3), 0);
            } else {
                com.mobile.auth.k.f.b(f11631a, "privacy_top = " + this.l.getMeasuredHeight());
                layoutParams3.addRule(10, -1);
                layoutParams3.setMargins(w.a(this.c, (float) privacyMarginLeft), w.a(this.c, (float) this.u.getPrivacyOffsetY()), w.a(this.c, (float) iMax3), 0);
            }
        } else if (this.u.getPrivacyOffsetY_B() <= 0 || (this.v - this.l.getMeasuredHeight()) - w.a(this.c, this.u.getPrivacyOffsetY_B()) <= 0) {
            layoutParams3.addRule(10, -1);
            layoutParams3.setMargins(w.a(this.c, privacyMarginLeft), 0, w.a(this.c, iMax3), 0);
            com.mobile.auth.k.f.b(f11631a, "privacy_top");
        } else {
            com.mobile.auth.k.f.b(f11631a, "privacy_bottom=" + this.l.getMeasuredHeight());
            layoutParams3.addRule(12, -1);
            layoutParams3.setMargins(w.a(this.c, (float) privacyMarginLeft), 0, w.a(this.c, (float) iMax3), w.a(this.c, (float) this.u.getPrivacyOffsetY_B()));
        }
        this.l.setLayoutParams(layoutParams3);
    }

    /* JADX INFO: Removed unreachable split cross block B:52:0x022c */
    private void f() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            getWindow().addFlags(AlarmInfo.VEHICLE_STOLEN);
            getWindow().addFlags(134217728);
            if (this.u.getStatusBarColor() != 0) {
                getWindow().addFlags(Integer.MIN_VALUE);
                getWindow().clearFlags(AlarmInfo.VEHICLE_STOLEN);
                getWindow().setStatusBarColor(this.u.getStatusBarColor());
                getWindow().setNavigationBarColor(this.u.getStatusBarColor());
            }
        }
        if (i2 >= 23) {
            if (this.u.isLightColor()) {
                getWindow().getDecorView().setSystemUiVisibility(8192);
            } else {
                getWindow().getDecorView().setSystemUiVisibility(0);
            }
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        View contentView = this.u.getContentView();
        if (contentView != null) {
            ViewParent parent = contentView.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(contentView);
            }
            relativeLayout.addView(contentView);
        } else if (this.u.getLayoutResID() != -1) {
            getLayoutInflater().inflate(this.u.getLayoutResID(), relativeLayout);
        }
        setContentView(relativeLayout);
        int requestedOrientation = getRequestedOrientation();
        this.v = w.b(this.c);
        int iA = w.a(this.c);
        this.w = iA;
        if ((requestedOrientation == 1 && iA > this.v) || (requestedOrientation == 0 && iA < this.v)) {
            this.w = this.v;
            this.v = iA;
        }
        com.mobile.auth.k.f.d(f11631a, "orientation = " + requestedOrientation + "--screenWidth = " + this.w + "--screenHeight = " + this.v);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (this.u.getWindowWidth() != 0) {
            getWindow().getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
            getWindowManager().getDefaultDisplay().getSize(new Point());
            attributes.width = w.a(this.c, this.u.getWindowWidth());
            int iA2 = w.a(this.c, this.u.getWindowHeight());
            attributes.height = iA2;
            this.w = attributes.width;
            this.v = iA2;
            attributes.x = w.a(this.c, this.u.getWindowX());
            if (this.u.getWindowBottom() == 1) {
                getWindow().setGravity(80);
            } else {
                attributes.y = w.a(this.c, this.u.getWindowY());
            }
            getWindow().setAttributes(attributes);
        }
        relativeLayout.setFitsSystemWindows(true);
        relativeLayout.setClipToPadding(true);
        try {
            g();
            relativeLayout.addView(this.m);
            relativeLayout.addView(h());
            relativeLayout.addView(i());
            e();
            this.f11632d.setOnClickListener(this);
            this.s.setOnClickListener(this);
            this.k.setOnCheckedChangeListener(new e());
            k();
            try {
                if (this.u.isPrivacyState()) {
                    this.k.setChecked(true);
                    this.k.setBackgroundResource(n.b(this, this.u.getCheckedImgPath()));
                    this.f11632d.setEnabled(true);
                } else {
                    this.k.setChecked(false);
                    this.f11632d.setEnabled(!TextUtils.isEmpty(this.u.getCheckTipText()));
                    this.k.setBackgroundResource(n.b(this, this.u.getUncheckedImgPath()));
                }
            } catch (Exception unused) {
                this.k.setChecked(false);
            }
        } catch (Exception e2) {
            com.mobile.auth.j.a.f13479a.add(e2);
            e2.printStackTrace();
            com.mobile.auth.k.f.a(f11631a, e2.toString());
            a("200040", "UI资源加载异常", this.f11636h, null);
        }
    }

    private void g() {
        int i2;
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.m = relativeLayout;
        relativeLayout.setId(13107);
        this.m.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        TextView textView = new TextView(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        textView.setGravity(15);
        int numberOffsetX = this.u.getNumberOffsetX();
        try {
            try {
                if (numberOffsetX != 0) {
                    if (numberOffsetX > 0) {
                        float f2 = numberOffsetX;
                        if ((this.w - textView.getWidth()) - w.a(this.c, f2) > 0) {
                            layoutParams.setMargins(w.a(this.c, f2), 0, 0, 0);
                        } else {
                            com.mobile.auth.k.f.b(f11631a, "RelativeLayout.ALIGN_PARENT_RIGHT");
                            i2 = 11;
                        }
                    }
                    textView.setTextSize(2, this.u.getNumberSize());
                    textView.setText(this.j);
                    textView.setId(30583);
                    this.m.addView(textView, layoutParams);
                    textView.setTextColor(this.u.getNumberColor());
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                    this.m.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    com.mobile.auth.k.f.b(f11631a, "mPhoneLayout.getMeasuredHeight()=" + this.m.getMeasuredHeight());
                }
                i2 = 13;
                textView.setTextColor(this.u.getNumberColor());
            } catch (Exception unused) {
                textView.setTextColor(-13421773);
            }
            textView.setTextSize(2, this.u.getNumberSize());
        } catch (Exception unused2) {
            textView.setTextSize(2, 18.0f);
        }
        layoutParams.addRule(i2);
        textView.setText(this.j);
        textView.setId(30583);
        this.m.addView(textView, layoutParams);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.m.measure(iMakeMeasureSpec2, iMakeMeasureSpec2);
        com.mobile.auth.k.f.b(f11631a, "mPhoneLayout.getMeasuredHeight()=" + this.m.getMeasuredHeight());
    }

    private RelativeLayout h() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.f11632d = relativeLayout;
        relativeLayout.setId(17476);
        this.f11632d.setLayoutParams(new RelativeLayout.LayoutParams(w.a(this.c, this.u.getLogBtnWidth()), w.a(this.c, this.u.getLogBtnHeight())));
        TextView textView = new TextView(this);
        textView.setTextSize(2, this.u.getLogBtnTextSize());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        textView.setLayoutParams(layoutParams);
        this.f11632d.addView(textView);
        textView.setText(this.u.getLogBtnText());
        try {
            textView.setTextColor(this.u.getLogBtnTextColor());
        } catch (Exception unused) {
            textView.setTextColor(-1);
        }
        try {
            this.f11632d.setBackgroundResource(n.b(this.c, this.u.getLogBtnBackgroundPath()));
        } catch (Exception e2) {
            e2.printStackTrace();
            this.f11632d.setBackgroundResource(n.b(this.c, "umcsdk_login_btn_bg"));
        }
        return this.f11632d;
    }

    private LinearLayout i() {
        LinearLayout linearLayout = new LinearLayout(this);
        this.l = linearLayout;
        linearLayout.setOrientation(0);
        this.l.setHorizontalGravity(1);
        this.l.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        int checkedImgWidth = this.u.getCheckedImgWidth();
        int checkedImgHeight = this.u.getCheckedImgHeight();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(w.a(this.c, checkedImgWidth > 30 ? checkedImgWidth : 30.0f), w.a(this.c, checkedImgHeight > 30 ? checkedImgHeight : 30.0f));
        LinearLayout linearLayout2 = new LinearLayout(this);
        this.s = linearLayout2;
        linearLayout2.setOrientation(0);
        this.s.setId(34952);
        this.s.setLayoutParams(layoutParams);
        CheckBox checkBox = new CheckBox(this);
        this.k = checkBox;
        checkBox.setChecked(false);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(w.a(this.c, this.u.getCheckedImgWidth()), w.a(this.c, this.u.getCheckedImgHeight()));
        layoutParams2.setMargins(w.a(this.c, checkedImgWidth > 30 ? BitmapDescriptorFactory.HUE_RED : 30 - checkedImgWidth), 0, 0, 0);
        this.k.setLayoutParams(layoutParams2);
        this.s.addView(this.k);
        this.l.addView(this.s);
        TextView textView = new TextView(this);
        textView.setTextSize(2, this.u.getPrivacyTextSize());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(w.a(this.c, 5.0f), 0, 0, w.a(this.c, 5.0f));
        textView.setLayoutParams(layoutParams3);
        this.l.addView(textView);
        textView.setTextColor(this.u.getClauseBaseColor());
        textView.setText(w.a(this, j(), this.t, this.f11633e, this.f11634f, this.f11635g));
        textView.setLineSpacing(8.0f, 1.0f);
        textView.setIncludeFontPadding(false);
        if (this.u.isPrivacyTextGravityCenter()) {
            textView.setGravity(17);
        }
        textView.setHighlightColor(getResources().getColor(R.color.transparent));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        this.k.setButtonDrawable(new ColorDrawable());
        try {
            this.k.setBackgroundResource(n.b(this, this.u.getUncheckedImgPath()));
        } catch (Exception unused) {
            this.k.setBackgroundResource(n.b(this, "umcsdk_uncheck_image"));
        }
        return this.l;
    }

    private String j() {
        if (!this.u.getPrivacy().contains(AuthThemeConfig.PLACEHOLDER2)) {
            return this.u.getPrivacy().replace(AuthThemeConfig.PLACEHOLDER, this.t);
        }
        this.t = "《" + this.t + "》";
        return this.u.getPrivacy().replace(AuthThemeConfig.PLACEHOLDER2, this.t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        this.f11632d.setClickable(true);
        this.k.setClickable(true);
    }

    private void l() {
        this.f11632d.setClickable(false);
        this.k.setClickable(false);
    }

    private void m() {
        try {
            if (this.o >= 5) {
                Toast.makeText(this.c, "网络不稳定,请返回重试其他登录方式", 1).show();
                this.f11632d.setClickable(true);
                return;
            }
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            StringBuilder sb = new StringBuilder();
            for (StackTraceElement stackTraceElement : stackTrace) {
                com.mobile.auth.k.f.a("stack", stackTraceElement.getClassName());
                String className = stackTraceElement.getClassName();
                if (!TextUtils.isEmpty(className) && className.contains("com.cmic.sso.sdk.activity") && !sb.toString().contains(className)) {
                    sb.append(className);
                    sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                }
            }
            this.f11636h.b("caller", sb.toString());
            this.f11636h.b("loginTime", System.currentTimeMillis());
            String strA = this.f11636h.a("traceId", "");
            if (!TextUtils.isEmpty(strA) && com.mobile.auth.k.i.a(strA)) {
                String strB = y.b();
                this.f11636h.b("traceId", strB);
                com.mobile.auth.k.i.a(strB, this.q);
            }
            b();
            l();
            i iVar = new i(this.f11636h);
            this.b.postDelayed(iVar, com.mobile.auth.e.a.a(this).b());
            u.a(new h(this, iVar));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a() {
        this.b.removeCallbacksAndMessages(null);
        com.cmic.sso.sdk.widget.a aVar = this.f11633e;
        if (aVar != null && aVar.isShowing()) {
            this.f11633e.dismiss();
        }
        com.cmic.sso.sdk.widget.a aVar2 = this.f11634f;
        if (aVar2 != null && aVar2.isShowing()) {
            this.f11634f.dismiss();
        }
        c();
        this.y = null;
        finish();
        if (this.u.getAuthPageActOut() == null || this.u.getActivityIn() == null) {
            return;
        }
        overridePendingTransition(n.c(this, this.u.getActivityIn()), n.c(this, this.u.getAuthPageActOut()));
    }

    public void b() {
        com.mobile.auth.k.f.a(f11631a, "loginClickStart");
        try {
            this.x = true;
            if (this.u.getLoginClickListener() != null) {
                this.u.getLoginClickListener().a(this.c, null);
            } else {
                Dialog dialog = this.y;
                if (dialog != null) {
                    dialog.show();
                    return;
                }
                AlertDialog alertDialogCreate = new AlertDialog.Builder(this).create();
                this.y = alertDialogCreate;
                alertDialogCreate.setCancelable(false);
                this.y.setCanceledOnTouchOutside(false);
                this.y.setOnKeyListener(new f(this));
                RelativeLayout relativeLayout = new RelativeLayout(this.y.getContext());
                relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                ImageView imageView = new ImageView(this.y.getContext());
                imageView.setImageResource(n.b(this.c, "dialog_loading"));
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(80, 80);
                layoutParams.addRule(13, -1);
                relativeLayout.addView(imageView, layoutParams);
                if (this.y.getWindow() != null) {
                    this.y.getWindow().setDimAmount(BitmapDescriptorFactory.HUE_RED);
                }
                this.y.show();
                this.y.setContentView(relativeLayout);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.mobile.auth.k.f.a(f11631a, "loginClickStart");
    }

    public void c() {
        try {
            com.mobile.auth.k.f.a(f11631a, "loginClickComplete");
            if (this.u.getLoginClickListener() == null || !this.x) {
                Dialog dialog = this.y;
                if (dialog != null && dialog.isShowing()) {
                    this.y.dismiss();
                }
            } else {
                this.x = false;
                this.u.getLoginClickListener().b(this.c, null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            int id = view.getId();
            if (id == 17476) {
                if (!this.k.isChecked() && !TextUtils.isEmpty(this.u.getCheckTipText())) {
                    Toast.makeText(this.c, this.u.getCheckTipText(), 1).show();
                    return;
                } else {
                    this.o++;
                    m();
                    return;
                }
            }
            if (id == 26214) {
                a(false);
            } else {
                if (id != 34952) {
                    return;
                }
                if (this.k.isChecked()) {
                    this.k.setChecked(false);
                } else {
                    this.k.setChecked(true);
                }
            }
        } catch (Exception e2) {
            com.mobile.auth.j.a.f13479a.add(e2);
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            if (bundle != null) {
                finish();
            }
            this.c = this;
            AuthThemeConfig authThemeConfigA = com.mobile.auth.e.a.a(this).a();
            this.u = authThemeConfigA;
            if (authThemeConfigA != null) {
                if (authThemeConfigA.getThemeId() != -1) {
                    setTheme(this.u.getThemeId());
                }
                if (this.u.getAuthPageActIn() != null && this.u.getActivityOut() != null) {
                    overridePendingTransition(n.c(this, this.u.getAuthPageActIn()), n.c(this, this.u.getActivityOut()));
                }
            }
            com.mobile.auth.k.c.a("authPageIn");
            this.n = System.currentTimeMillis();
            this.i = com.mobile.auth.e.f.a(this);
            d();
            f();
        } catch (Exception e2) {
            com.mobile.auth.j.a.f13479a.add(e2);
            com.mobile.auth.k.f.a(f11631a, e2.toString());
            e2.printStackTrace();
            a("200025", "发生未知错误", this.f11636h, null);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            this.b.removeCallbacksAndMessages(null);
            com.mobile.auth.k.c.a("timeOnAuthPage", (System.currentTimeMillis() - this.n) + "");
            com.mobile.auth.k.c.a("authPrivacyState", this.k.isChecked() ? "1" : "0");
            if (!this.f11636h.a("isLoginSwitch", false)) {
                com.mobile.auth.k.c.a("timeOnAuthPage", (System.currentTimeMillis() - this.n) + "");
                com.mobile.auth.k.c.a(this.c.getApplicationContext(), this.f11636h);
                com.mobile.auth.k.c.a();
            }
            this.y = null;
            com.mobile.auth.k.g.a().b();
            this.p.removeCallbacksAndMessages(null);
        } catch (Exception e2) {
            com.mobile.auth.k.f.a(f11631a, "LoginAuthActivity clear failed");
            com.mobile.auth.j.a.f13479a.add(e2);
            e2.printStackTrace();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4 || keyEvent.isCanceled() || keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (this.u.getBackPressedListener() != null) {
            this.u.getBackPressedListener().a();
        }
        a(false);
        return true;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            com.cmic.sso.sdk.a aVar = this.f11636h;
            if (aVar != null) {
                aVar.b("loginMethod", "loginAuth");
            }
            com.mobile.auth.e.a.a(this).a("200087", null);
        } catch (Exception e2) {
            com.mobile.auth.j.a.f13479a.add(e2);
            a("200025", "发生未知错误", this.f11636h, null);
        }
    }
}

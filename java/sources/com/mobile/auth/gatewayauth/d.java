package com.mobile.auth.gatewayauth;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.mobile.auth.gatewayauth.activity.AuthWebVeiwActivity;
import com.mobile.auth.gatewayauth.manager.SystemManager;
import com.mobile.auth.gatewayauth.manager.compat.ResultCodeProcessor;
import com.mobile.auth.gatewayauth.model.TokenRet;
import com.mobile.auth.gatewayauth.model.UStruct;
import com.mobile.auth.gatewayauth.utils.ReflectionUtils;
import com.mobile.auth.gatewayauth.utils.f;
import com.mobile.auth.gatewayauth.utils.i;
import com.nirvana.tools.core.AppUtils;
import com.nirvana.tools.core.SupportJarUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AuthUIControlClickListener f13305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile WeakReference<Activity> f13306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AuthUIConfig f13307f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinkedHashMap<String, AuthRegisterViewConfig> f13308g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<AuthRegisterXmlConfig> f13309h;
    private ArrayList<Object> i;
    private com.mobile.auth.o.a k;
    private WeakReference<Activity> l;
    private TokenResultListener m;
    private ActivityResultListener n;
    private PhoneNumberAuthHelper o;
    private SystemManager p;
    private ResultCodeProcessor q;
    private com.mobile.auth.gatewayauth.manager.d r;
    private long s;
    private long t;
    private static final ConcurrentHashMap<Integer, d> b = new ConcurrentHashMap<>(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AuthUIConfig f13304a = new AuthUIConfig.Builder().create();
    private volatile boolean u = false;
    private Application.ActivityLifecycleCallbacks v = new Application.ActivityLifecycleCallbacks() { // from class: com.mobile.auth.gatewayauth.d.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Intent intent;
            try {
                if ((activity instanceof LoginAuthActivity) && (intent = activity.getIntent()) != null && intent.getIntExtra(Constant.LOGIN_ACTIVITY_UI_MANAGER_ID, -1) == d.a(d.this)) {
                    d.a(d.this, new WeakReference(activity));
                }
            } catch (Throwable th) {
                a.a(th);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            Activity activity2;
            try {
                if ((activity instanceof LoginAuthActivity) && ((LoginAuthActivity) activity).getUIManagerID() == d.a(d.this) && d.b(d.this) != null && (activity2 = (Activity) d.b(d.this).get()) != null && activity2 == activity) {
                    Application application = ReflectionUtils.getApplication();
                    if (application != null) {
                        application.unregisterActivityLifecycleCallbacks(d.c(d.this));
                    }
                    d.a(d.this, (WeakReference) null);
                }
            } catch (Throwable th) {
                a.a(th);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            try {
                if ((activity instanceof LoginAuthActivity) && ((LoginAuthActivity) activity).getUIManagerID() == d.a(d.this)) {
                    d.a(d.this, false);
                }
            } catch (Throwable th) {
                a.a(th);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            try {
                if ((activity instanceof LoginAuthActivity) && ((LoginAuthActivity) activity).getUIManagerID() == d.a(d.this)) {
                    d.a(d.this, true);
                }
            } catch (Throwable th) {
                a.a(th);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    };
    private int j = hashCode();

    public d(Context context, com.mobile.auth.gatewayauth.manager.d dVar, SystemManager systemManager, PhoneNumberAuthHelper phoneNumberAuthHelper) {
        this.c = context.getApplicationContext();
        this.r = dVar;
        this.k = dVar.a();
        this.p = systemManager;
        this.o = phoneNumberAuthHelper;
    }

    static /* synthetic */ int a(d dVar) {
        try {
            return dVar.j;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public static d a(int i) {
        try {
            return b.get(Integer.valueOf(i));
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ WeakReference a(d dVar, WeakReference weakReference) {
        try {
            dVar.l = weakReference;
            return weakReference;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public static void a(AuthUIConfig authUIConfig, int i, Activity activity) {
        try {
            if (authUIConfig.isStatusBarHidden()) {
                i.a(activity);
            } else {
                i.c(activity, authUIConfig.getStatusBarUIFlag());
            }
            i.a(activity, i);
            i.a(activity, authUIConfig.isLightColor());
            i.b(activity, authUIConfig.getBottomNavBarColor());
        } catch (Throwable th) {
            a.a(th);
        }
    }

    private void a(final String str, final String str2, final String str3) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.d.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        d.d(d.this).a(d.h(d.this).b(str, str2, UStruct.newUStruct().startTime(d.j(d.this)).endTime(System.currentTimeMillis()).requestId(d.h(d.this).f()).sessionId(d.h(d.this).d()).authSdkCode(ResultCode.CODE_ERROR_USER_PROTOCOL_CONTROL).carrierUrl(str3).build(), ""), 2);
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            });
        } catch (Throwable th) {
            a.a(th);
        }
    }

    private void a(final String str, final String str2, final boolean z) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.d.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        d.d(d.this).a(d.h(d.this).b(str, str2, UStruct.newUStruct().startTime(d.j(d.this)).endTime(System.currentTimeMillis()).requestId(d.h(d.this).f()).sessionId(d.h(d.this).d()).authSdkCode(ResultCode.CODE_ERROR_USER_LOGIN_BTN).isAuthPageLegal(String.valueOf(z)).build(), ""), 2);
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            });
        } catch (Throwable th) {
            a.a(th);
        }
    }

    private void a(final boolean z, final String str, final String str2, final boolean z2) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.a() { // from class: com.mobile.auth.gatewayauth.d.3
                @Override // com.mobile.auth.gatewayauth.utils.b.a
                protected void a() {
                    Activity activity;
                    try {
                        if (d.b(d.this) != null && (activity = (Activity) d.b(d.this).get()) != null) {
                            activity.finish();
                            if (d.e(d.this).getAuthPageActOut() != null && d.e(d.this).getActivityIn() != null) {
                                activity.overridePendingTransition(AppUtils.getAnimResID(activity, d.e(d.this).getAuthPageActOut()), AppUtils.getAnimResID(activity, d.e(d.this).getActivityIn()));
                            }
                        }
                        d.this.k();
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }

                @Override // com.mobile.auth.gatewayauth.utils.b.a
                protected void a(Throwable th) {
                    try {
                        d.d(d.this).d("QuitActivity error!", com.mobile.auth.gatewayauth.utils.b.b(th));
                    } catch (Throwable th2) {
                        a.a(th2);
                    }
                }

                @Override // com.mobile.auth.gatewayauth.utils.b.a
                protected void b() {
                    try {
                        super.b();
                        if (z2 && d.f(d.this) != null && z) {
                            TokenRet tokenRetConvertErrorInfo = d.this.a().convertErrorInfo(str, str2, d.g(d.this).c());
                            tokenRetConvertErrorInfo.setVendorName(d.g(d.this).f());
                            tokenRetConvertErrorInfo.setRequestId(d.h(d.this).f());
                            d.f(d.this).onTokenFailed(tokenRetConvertErrorInfo.toJsonString());
                        }
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            });
        } catch (Throwable th) {
            a.a(th);
        }
    }

    static /* synthetic */ boolean a(d dVar, boolean z) {
        try {
            dVar.u = z;
            return z;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    static /* synthetic */ WeakReference b(d dVar) {
        try {
            return dVar.l;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    private void b(final String str, final String str2, final String str3) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.d.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        d.d(d.this).a(d.h(d.this).b(str, str2, UStruct.newUStruct().startTime(d.j(d.this)).endTime(System.currentTimeMillis()).requestId(d.h(d.this).f()).sessionId(d.h(d.this).d()).authSdkCode(d.i(d.this).convertCode(str3)).build(), ""), 2);
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            });
        } catch (Throwable th) {
            a.a(th);
        }
    }

    static /* synthetic */ Application.ActivityLifecycleCallbacks c(d dVar) {
        try {
            return dVar.v;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ com.mobile.auth.o.a d(d dVar) {
        try {
            return dVar.k;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ AuthUIConfig e(d dVar) {
        try {
            return dVar.f13307f;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ TokenResultListener f(d dVar) {
        try {
            return dVar.m;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ SystemManager g(d dVar) {
        try {
            return dVar.p;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ com.mobile.auth.gatewayauth.manager.d h(d dVar) {
        try {
            return dVar.r;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ ResultCodeProcessor i(d dVar) {
        try {
            return dVar.q;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    static /* synthetic */ long j(d dVar) {
        try {
            return dVar.s;
        } catch (Throwable th) {
            a.a(th);
            return -1L;
        }
    }

    public ResultCodeProcessor a() {
        try {
            if (this.q == null) {
                this.q = new com.mobile.auth.gatewayauth.manager.compat.b();
            }
            return this.q;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public void a(long j) {
        try {
            this.s = j;
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(long j, String str, String str2, ResultCodeProcessor resultCodeProcessor, e eVar) {
        Context context;
        try {
            this.t = j;
            Application application = ReflectionUtils.getApplication();
            if (application != null) {
                application.registerActivityLifecycleCallbacks(this.v);
            }
            Intent intent = new Intent(this.c, (Class<?>) LoginAuthActivity.class);
            intent.putExtra(Constant.LOGIN_ACTIVITY_NUMBER, str);
            intent.putExtra(Constant.LOGIN_ACTIVITY_VENDOR_KEY, str2);
            intent.putExtra(Constant.LOGIN_ACTIVITY_UI_MANAGER_ID, this.j);
            intent.putExtra(Constant.START_TIME, System.currentTimeMillis());
            try {
                a(resultCodeProcessor);
                b.put(Integer.valueOf(this.j), this);
                Activity activity = this.f13306e != null ? this.f13306e.get() : null;
                if (f().getAuthPageActIn() == null || f().getActivityOut() == null) {
                    if (activity != null) {
                        activity.startActivityForResult(intent, 1);
                    } else {
                        intent.addFlags(268435456);
                        context = this.c;
                        context.startActivity(intent);
                    }
                } else if (activity != null) {
                    String authPageActIn = f().getAuthPageActIn();
                    String activityOut = f().getActivityOut();
                    if (TextUtils.isEmpty(authPageActIn) || TextUtils.isEmpty(activityOut)) {
                        SupportJarUtils.startActivityForResult(activity, intent, 1, null, null);
                    } else {
                        SupportJarUtils.startActivityForResult(activity, intent, 1, authPageActIn, activityOut);
                    }
                } else {
                    intent.addFlags(268435456);
                    context = this.c;
                    context.startActivity(intent);
                }
                if (eVar != null) {
                    eVar.a(str2, str);
                }
            } catch (Exception e2) {
                String strB = com.mobile.auth.gatewayauth.utils.b.b(e2);
                f.c(strB);
                eVar.a(strB);
                k();
            }
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(Activity activity) {
        try {
            this.f13306e = new WeakReference<>(activity);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(ActivityResultListener activityResultListener) {
        try {
            this.n = activityResultListener;
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(AuthRegisterXmlConfig authRegisterXmlConfig) {
        try {
            try {
                if (this.f13309h == null) {
                    this.f13309h = new ArrayList<>();
                }
                this.f13309h.add(authRegisterXmlConfig);
                a((Object) authRegisterXmlConfig);
            } catch (Exception e2) {
                f.c(com.mobile.auth.gatewayauth.utils.b.b(e2));
                f.c("动态添加控件失败");
            }
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(AuthUIConfig authUIConfig) {
        try {
            this.f13307f = authUIConfig;
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(AuthUIControlClickListener authUIControlClickListener) {
        try {
            this.f13305d = authUIControlClickListener;
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(TokenResultListener tokenResultListener) {
        try {
            this.m = tokenResultListener;
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(ResultCodeProcessor resultCodeProcessor) {
        try {
            this.q = resultCodeProcessor;
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(Object obj) {
        try {
            if (this.i == null) {
                this.i = new ArrayList<>();
            }
            this.i.add(obj);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(String str) {
        try {
            AuthUIControlClickListener authUIControlClickListener = this.f13305d;
            if (authUIControlClickListener != null) {
                authUIControlClickListener.onClick(ResultCode.CODE_ERROR_USER_CANCEL, this.c, null);
            }
            b(str, this.p.i(str), Constant.CODE_ERROR_USER_CANCEL);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(final String str, final long j, final boolean z, final boolean z2) {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new Runnable() { // from class: com.mobile.auth.gatewayauth.d.4
                @Override // java.lang.Runnable
                public void run() {
                    ResultCodeProcessor resultCodeProcessorI;
                    String str2;
                    try {
                        com.mobile.auth.o.a aVarD = d.d(d.this);
                        com.mobile.auth.gatewayauth.manager.d dVarH = d.h(d.this);
                        String str3 = str;
                        String strL = d.g(d.this).l(str);
                        UStruct.Builder builderEndTime = UStruct.newUStruct().isSuccess(z2).isFullScreen(String.valueOf(!d.this.f().isDialog())).isVertical(String.valueOf(z)).isChecked(String.valueOf(d.this.f().isCheckboxHidden() || d.this.f().isPrivacyState())).isCheckboxHidden(String.valueOf(d.this.f().isCheckboxHidden())).requestId(d.h(d.this).f()).sessionId(d.h(d.this).d()).startTime(j).endTime(d.j(d.this));
                        if (z2) {
                            resultCodeProcessorI = d.i(d.this);
                            str2 = Constant.CODE_START_AUTHPAGE_SUCCESS;
                        } else {
                            resultCodeProcessorI = d.i(d.this);
                            str2 = Constant.CODE_ERROR_START_AUTHPAGE_FAIL;
                        }
                        aVarD.a(dVarH.b(str3, strL, builderEndTime.authSdkCode(resultCodeProcessorI.convertCode(str2)).build(), ""), 1);
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            });
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(String str, AuthRegisterViewConfig authRegisterViewConfig) {
        try {
            try {
                if (this.f13308g == null) {
                    this.f13308g = new LinkedHashMap<>();
                }
                this.f13308g.put(str, authRegisterViewConfig);
                if (authRegisterViewConfig.getRootViewId() == 0) {
                    a(authRegisterViewConfig);
                    return;
                }
                return;
            } catch (Exception e2) {
                f.c(com.mobile.auth.gatewayauth.utils.b.b(e2));
                f.c("动态添加控件失败");
                return;
            }
        } catch (Throwable th) {
            a.a(th);
        }
        a.a(th);
    }

    public void a(String str, String str2) {
        Activity activity;
        Intent intent;
        try {
            WeakReference<Activity> weakReference = this.l;
            if (weakReference == null || (activity = weakReference.get()) == null) {
                this.k.d("LoginAuthActivity实例被释放");
                return;
            }
            if (TextUtils.isEmpty(this.f13307f.getProtocolAction())) {
                intent = new Intent(activity, (Class<?>) AuthWebVeiwActivity.class);
                intent.putExtra("url", str2);
                intent.putExtra(Constant.PROTOCOL_WEBVIEW_NAME, str);
                intent.putExtra(Constant.PROTOCOL_WEBVIEW_ORIENTATION, f().getScreenOrientation());
                intent.putExtra(Constant.LOGIN_ACTIVITY_UI_MANAGER_ID, this.j);
            } else {
                intent = new Intent();
                intent.setAction(this.f13307f.getProtocolAction());
                if (!TextUtils.isEmpty(this.f13307f.getPackageName())) {
                    intent.setPackage(this.f13307f.getPackageName());
                }
                intent.putExtra("url", str2);
                intent.putExtra(Constant.PROTOCOL_WEBVIEW_NAME, str);
                intent.putExtra(Constant.PROTOCOL_WEBVIEW_ORIENTATION, f().getScreenOrientation());
            }
            activity.startActivity(intent);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(String str, String str2, String str3, boolean z) {
        try {
            if (this.f13305d != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(Constant.PROTOCOL_WEBVIEW_NAME, str2);
                    jSONObject.put("url", str3);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                this.f13305d.onClick(ResultCode.CODE_ERROR_USER_PROTOCOL_CONTROL, this.c, jSONObject.toString());
            }
            if (z) {
                a(str, this.p.k(str), str3);
            }
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(String str, boolean z, boolean z2) {
        try {
            if (this.f13305d != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("isChecked", z);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                this.f13305d.onClick(ResultCode.CODE_ERROR_USER_LOGIN_BTN, this.c, jSONObject.toString());
            }
            a(str, this.p.h(str), z2);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(boolean z) {
        try {
            if (this.f13305d != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("isChecked", z);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                this.f13305d.onClick(ResultCode.CODE_ERROR_USER_CHECKBOX, this.c, jSONObject.toString());
            }
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void a(boolean z, String str, String str2) {
        try {
            a(z, str, str2, true);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void b() {
        try {
            com.mobile.auth.gatewayauth.utils.b.a(new com.mobile.auth.gatewayauth.utils.b.a() { // from class: com.mobile.auth.gatewayauth.d.2
                @Override // com.mobile.auth.gatewayauth.utils.b.a
                protected void a() {
                    Activity activity;
                    try {
                        if (d.b(d.this) == null || (activity = (Activity) d.b(d.this).get()) == null) {
                            return;
                        }
                        ((LoginAuthActivity) activity).hideLoadingDialog();
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }

                @Override // com.mobile.auth.gatewayauth.utils.b.a
                protected void a(Throwable th) {
                    try {
                        d.d(d.this).d("Hide Loading error!", com.mobile.auth.gatewayauth.utils.b.b(th));
                    } catch (Throwable th2) {
                        a.a(th2);
                    }
                }
            });
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void b(ResultCodeProcessor resultCodeProcessor) {
        try {
            this.o.a(this.t, new TokenResultListener() { // from class: com.mobile.auth.gatewayauth.d.8
                @Override // com.mobile.auth.gatewayauth.TokenResultListener
                public void onTokenFailed(String str) {
                    try {
                        if (d.f(d.this) != null) {
                            d.f(d.this).onTokenFailed(str);
                        }
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }

                @Override // com.mobile.auth.gatewayauth.TokenResultListener
                public void onTokenSuccess(String str) {
                    try {
                        if (d.f(d.this) != null) {
                            d.f(d.this).onTokenSuccess(str);
                        }
                    } catch (Throwable th) {
                        a.a(th);
                    }
                }
            }, resultCodeProcessor);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void b(String str) {
        try {
            AuthUIControlClickListener authUIControlClickListener = this.f13305d;
            if (authUIControlClickListener != null) {
                authUIControlClickListener.onClick(ResultCode.CODE_ERROR_USER_SWITCH, this.c, null);
            }
            b(str, this.p.j(str), Constant.CODE_ERROR_USER_SWITCH);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void c() {
        try {
            a(false, (String) null, (String) null, false);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public ActivityResultListener d() {
        try {
            return this.n;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public void e() {
        try {
            if (this.m != null) {
                TokenRet tokenRet = new TokenRet();
                tokenRet.setVendorName(this.p.f());
                tokenRet.setCode(ResultCode.CODE_ERROR_LOAD_CUSTOM_VIEWS);
                tokenRet.setMsg(ResultCode.MSG_ERROR_LOAD_CUSTOM_VIEWS);
                this.m.onTokenFailed(tokenRet.toJsonString());
            }
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public AuthUIConfig f() {
        try {
            AuthUIConfig authUIConfig = this.f13307f;
            return authUIConfig == null ? f13304a : authUIConfig;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public LinkedHashMap<String, AuthRegisterViewConfig> g() {
        try {
            if (this.f13308g == null) {
                this.f13308g = new LinkedHashMap<>();
            }
            return this.f13308g;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public ArrayList<AuthRegisterXmlConfig> h() {
        try {
            if (this.f13309h == null) {
                this.f13309h = new ArrayList<>();
            }
            return this.f13309h;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public void i() {
        try {
            try {
                LinkedHashMap<String, AuthRegisterViewConfig> linkedHashMap = this.f13308g;
                if (linkedHashMap != null) {
                    ArrayList<Object> arrayList = this.i;
                    if (arrayList != null) {
                        arrayList.removeAll(linkedHashMap.values());
                    }
                    this.f13308g.clear();
                    this.f13308g = null;
                    return;
                }
                return;
            } catch (Exception e2) {
                f.c(com.mobile.auth.gatewayauth.utils.b.b(e2));
                f.c("动态控件清除失败");
                return;
            }
        } catch (Throwable th) {
            a.a(th);
        }
        a.a(th);
    }

    public void j() {
        try {
            try {
                ArrayList<AuthRegisterXmlConfig> arrayList = this.f13309h;
                if (arrayList != null) {
                    ArrayList<Object> arrayList2 = this.i;
                    if (arrayList2 != null) {
                        arrayList2.removeAll(arrayList);
                    }
                    this.f13309h.clear();
                    this.f13309h = null;
                }
            } catch (Exception e2) {
                f.c(com.mobile.auth.gatewayauth.utils.b.b(e2));
                f.c("动态控件清除失败");
            }
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void k() {
        try {
            b.remove(Integer.valueOf(this.j));
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public com.mobile.auth.o.a l() {
        try {
            return this.k;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public boolean m() {
        try {
            return this.u;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }
}

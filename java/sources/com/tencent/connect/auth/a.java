package com.tencent.connect.auth;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import com.tencent.open.a.g;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.l;
import com.tencent.open.web.security.JniInterface;
import com.tencent.open.web.security.SecureJsInterface;
import com.tencent.tauth.DefaultUiListener;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes6.dex */
public class a extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13964a;
    private b b;
    private IUiListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f13965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FrameLayout f13966e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinearLayout f13967f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private FrameLayout f13968g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ProgressBar f13969h;
    private Button i;
    private String j;
    private com.tencent.open.b.c k;
    private Context l;
    private com.tencent.open.web.security.b m;
    private boolean n;
    private int o;
    private String p;
    private String q;
    private long r;
    private long s;
    private HashMap<String, Runnable> t;

    /* JADX INFO: renamed from: com.tencent.connect.auth.a$a, reason: collision with other inner class name */
    private class C0276a extends WebViewClient {
        private C0276a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            SLog.v("openSDK_LOG.AuthDialog", "-->onPageFinished, url: " + str);
            a.this.f13968g.setVisibility(8);
            if (a.this.k != null) {
                a.this.k.setVisibility(0);
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            a.this.f13965d.removeCallbacks((Runnable) a.this.t.remove(str));
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            SLog.v("openSDK_LOG.AuthDialog", "-->onPageStarted, url: " + str);
            super.onPageStarted(webView, str, bitmap);
            a.this.f13968g.setVisibility(0);
            a.this.r = SystemClock.elapsedRealtime();
            if (!TextUtils.isEmpty(a.this.p)) {
                a.this.f13965d.removeCallbacks((Runnable) a.this.t.remove(a.this.p));
            }
            a.this.p = str;
            a aVar = a.this;
            d dVar = aVar.new d(aVar.p);
            a.this.t.put(str, dVar);
            a.this.f13965d.postDelayed(dVar, 120000L);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            SLog.i("openSDK_LOG.AuthDialog", "-->onReceivedError, errorCode: " + i + " | description: " + str);
            if (!l.b(a.this.l)) {
                a.this.b.onError(new UiError(Videoio.CAP_PROP_IOS_DEVICE_FOCUS, "当前网络不可用，请稍后重试！", str2));
                a.this.dismiss();
                return;
            }
            if (a.this.p.startsWith("https://login.imgcache.qq.com/ptlogin/static/qzsjump.html?")) {
                a.this.b.onError(new UiError(i, str, str2));
                a.this.dismiss();
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime() - a.this.r;
            if (a.this.o >= 1 || jElapsedRealtime >= a.this.s) {
                a.this.k.loadUrl(a.this.a());
            } else {
                a.m(a.this);
                a.this.f13965d.postDelayed(new Runnable() { // from class: com.tencent.connect.auth.a.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.k.loadUrl(a.this.p);
                    }
                }, 500L);
            }
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(8)
        public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
            String str;
            String str2;
            String str3;
            SLog.e("openSDK_LOG.AuthDialog", "-->onReceivedSslError " + sslError.getPrimaryError() + "请求不合法，请检查手机安全设置，如系统时间、代理等");
            if (Locale.getDefault().getLanguage().equals("zh")) {
                str = "ssl证书无效，是否继续访问？";
                str2 = "是";
                str3 = "否";
            } else {
                str = "The SSL certificate is invalid,do you countinue?";
                str2 = "yes";
                str3 = "no";
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(a.this.l);
            builder.setMessage(str);
            builder.setPositiveButton(str2, new DialogInterface.OnClickListener() { // from class: com.tencent.connect.auth.a.a.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    sslErrorHandler.proceed();
                }
            });
            builder.setNegativeButton(str3, new DialogInterface.OnClickListener() { // from class: com.tencent.connect.auth.a.a.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    sslErrorHandler.cancel();
                    a.this.dismiss();
                }
            });
            builder.create().show();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            SLog.v("openSDK_LOG.AuthDialog", "-->Redirect URL: " + str);
            if (str.startsWith("auth://browser")) {
                JSONObject jSONObjectC = l.c(str);
                a aVar = a.this;
                aVar.n = aVar.f();
                if (!a.this.n) {
                    if (jSONObjectC.optString("fail_cb", null) != null) {
                        a.this.a(jSONObjectC.optString("fail_cb"), "");
                    } else if (jSONObjectC.optInt("fall_to_wv") == 1) {
                        a aVar2 = a.this;
                        StringBuilder sb = new StringBuilder();
                        sb.append(a.this.f13964a);
                        sb.append(a.this.f13964a.indexOf("?") > -1 ? "&" : "?");
                        aVar2.f13964a = sb.toString();
                        a.this.f13964a = a.this.f13964a + "browser_error=1";
                        a.this.k.loadUrl(a.this.f13964a);
                    } else {
                        String strOptString = jSONObjectC.optString("redir", null);
                        if (strOptString != null) {
                            a.this.k.loadUrl(strOptString);
                        }
                    }
                }
                return true;
            }
            if (str.startsWith("auth://tauth.qq.com/")) {
                a.this.b.onComplete(l.c(str));
                a.this.dismiss();
                return true;
            }
            if (str.startsWith(Constants.CANCEL_URI)) {
                a.this.b.onCancel();
                a.this.dismiss();
                return true;
            }
            if (str.startsWith(Constants.CLOSE_URI)) {
                a.this.dismiss();
                return true;
            }
            if (str.startsWith(Constants.DOWNLOAD_URI) || str.endsWith(".apk")) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", str.startsWith(Constants.DOWNLOAD_URI) ? Uri.parse(Uri.decode(str.substring(11))) : Uri.parse(Uri.decode(str)));
                    intent.addFlags(268435456);
                    a.this.l.startActivity(intent);
                } catch (Exception e2) {
                    SLog.e("openSDK_LOG.AuthDialog", "-->start download activity exception, e: ", e2);
                }
                return true;
            }
            if (!str.startsWith("auth://progress")) {
                if (str.startsWith("auth://onLoginSubmit")) {
                    try {
                        List<String> pathSegments = Uri.parse(str).getPathSegments();
                        if (!pathSegments.isEmpty()) {
                            a.this.q = pathSegments.get(0);
                        }
                    } catch (Exception unused) {
                    }
                    return true;
                }
                if (a.this.m.a(a.this.k, str)) {
                    return true;
                }
                SLog.i("openSDK_LOG.AuthDialog", "-->Redirect URL: return false");
                return false;
            }
            try {
                List<String> pathSegments2 = Uri.parse(str).getPathSegments();
                if (pathSegments2.isEmpty()) {
                    return true;
                }
                int iIntValue = Integer.valueOf(pathSegments2.get(0)).intValue();
                if (iIntValue == 0) {
                    a.this.f13968g.setVisibility(8);
                    a.this.k.setVisibility(0);
                } else if (iIntValue == 1) {
                    a.this.f13968g.setVisibility(0);
                }
            } catch (Exception unused2) {
            }
            return true;
        }
    }

    private class b extends DefaultUiListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f13978a;
        String b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f13979d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private IUiListener f13980e;

        public b(String str, String str2, String str3, IUiListener iUiListener) {
            this.f13979d = str;
            this.f13978a = str2;
            this.b = str3;
            this.f13980e = iUiListener;
        }

        @Override // com.tencent.tauth.DefaultUiListener, com.tencent.tauth.IUiListener
        public void onCancel() {
            IUiListener iUiListener = this.f13980e;
            if (iUiListener != null) {
                iUiListener.onCancel();
                this.f13980e = null;
            }
        }

        @Override // com.tencent.tauth.DefaultUiListener, com.tencent.tauth.IUiListener
        public void onComplete(Object obj) {
            JSONObject jSONObject = (JSONObject) obj;
            g.a().a(this.f13979d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, jSONObject.optInt(SpeechUtility.TAG_RESOURCE_RET, -6), this.f13978a, false);
            IUiListener iUiListener = this.f13980e;
            if (iUiListener != null) {
                iUiListener.onComplete(jSONObject);
                this.f13980e = null;
            }
        }

        @Override // com.tencent.tauth.DefaultUiListener, com.tencent.tauth.IUiListener
        public void onError(UiError uiError) {
            String str;
            if (uiError.errorMessage != null) {
                str = uiError.errorMessage + this.f13978a;
            } else {
                str = this.f13978a;
            }
            g.a().a(this.f13979d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, uiError.errorCode, str, false);
            a.this.a(str);
            IUiListener iUiListener = this.f13980e;
            if (iUiListener != null) {
                iUiListener.onError(uiError);
                this.f13980e = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            try {
                onComplete(l.d(str));
            } catch (JSONException e2) {
                e2.printStackTrace();
                onError(new UiError(-4, Constants.MSG_JSON_ERROR, str));
            }
        }
    }

    private class c extends Handler {
        private b b;

        public c(b bVar, Looper looper) {
            super(looper);
            this.b = bVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                this.b.a((String) message.obj);
            } else if (i == 2) {
                this.b.onCancel();
            } else {
                if (i != 3) {
                    return;
                }
                a.b(a.this.l, (String) message.obj);
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f13982a;

        public d(String str) {
            this.f13982a = "";
            this.f13982a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SLog.v("openSDK_LOG.AuthDialog", "-->timeoutUrl: " + this.f13982a + " | mRetryUrl: " + a.this.p);
            if (this.f13982a.equals(a.this.p)) {
                a.this.b.onError(new UiError(Videoio.CAP_PROP_IOS_DEVICE_EXPOSURE, "请求页面超时，请稍后重试！", a.this.p));
                a.this.dismiss();
            }
        }
    }

    public a(Context context, String str, String str2, IUiListener iUiListener, QQToken qQToken) {
        super(context, R.style.Theme.Translucent.NoTitleBar);
        this.n = false;
        this.r = 0L;
        this.s = 30000L;
        this.l = context;
        this.f13964a = str2;
        this.b = new b(str, str2, qQToken.getAppId(), iUiListener);
        this.f13965d = new c(this.b, context.getMainLooper());
        this.c = iUiListener;
        this.j = str;
        this.m = new com.tencent.open.web.security.b();
        getWindow().setSoftInputMode(32);
    }

    static /* synthetic */ int m(a aVar) {
        int i = aVar.o;
        aVar.o = i + 1;
        return i;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.t.clear();
        this.f13965d.removeCallbacksAndMessages(null);
        try {
            Context context = this.l;
            if ((context instanceof Activity) && !((Activity) context).isFinishing() && isShowing()) {
                super.dismiss();
                SLog.i("openSDK_LOG.AuthDialog", "-->dismiss dialog");
            }
        } catch (Exception e2) {
            SLog.e("openSDK_LOG.AuthDialog", "-->dismiss dialog exception:", e2);
        }
        com.tencent.open.b.c cVar = this.k;
        if (cVar != null) {
            cVar.destroy();
            this.k = null;
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (!this.n) {
            this.b.onCancel();
        }
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        Window window = getWindow();
        if (window != null) {
            window.setFlags(1024, 1024);
        }
        super.onCreate(bundle);
        if (window != null) {
            View decorView = window.getDecorView();
            if (Build.VERSION.SDK_INT >= 16) {
                decorView.setSystemUiVisibility(1280);
            }
        }
        b();
        e();
        this.t = new HashMap<>();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void e() {
        this.k.setVerticalScrollBarEnabled(false);
        this.k.setHorizontalScrollBarEnabled(false);
        this.k.setWebViewClient(new C0276a());
        this.k.setWebChromeClient(new WebChromeClient());
        this.k.clearFormData();
        this.k.clearSslPreferences();
        this.k.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.tencent.connect.auth.a.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                return true;
            }
        });
        this.k.setOnTouchListener(new View.OnTouchListener() { // from class: com.tencent.connect.auth.a.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if ((action != 0 && action != 1) || view.hasFocus()) {
                    return false;
                }
                view.requestFocus();
                return false;
            }
        });
        WebSettings settings = this.k.getSettings();
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        settings.setCacheMode(-1);
        settings.setNeedInitialFocus(false);
        settings.setBuiltInZoomControls(true);
        settings.setSupportZoom(true);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        settings.setJavaScriptEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDatabasePath(this.l.getDir("databases", 0).getPath());
        settings.setDomStorageEnabled(true);
        SLog.v("openSDK_LOG.AuthDialog", "-->mUrl : " + this.f13964a);
        String str = this.f13964a;
        this.p = str;
        this.k.loadUrl(str);
        this.k.setVisibility(4);
        this.k.getSettings().setSavePassword(false);
        this.m.a(new SecureJsInterface(), "SecureJsInterface");
        SecureJsInterface.isPWDEdit = false;
        super.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.tencent.connect.auth.a.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                try {
                    if (JniInterface.isJniOk) {
                        JniInterface.clearAllPWD();
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        com.tencent.connect.auth.b bVarA = com.tencent.connect.auth.b.a();
        String strC = bVarA.c();
        com.tencent.connect.auth.b.a aVar = new com.tencent.connect.auth.b.a();
        aVar.f13986a = this.c;
        aVar.b = this;
        aVar.c = strC;
        String strA = bVarA.a(aVar);
        String str = this.f13964a;
        String strSubstring = str.substring(0, str.indexOf("?"));
        Bundle bundleB = l.b(this.f13964a);
        bundleB.putString("token_key", strC);
        bundleB.putString("serial", strA);
        bundleB.putString("browser", "1");
        String str2 = strSubstring + "?" + HttpUtils.encodeUrl(bundleB);
        this.f13964a = str2;
        return l.a(this.l, str2);
    }

    private void b() {
        d();
        c();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        com.tencent.open.b.c cVar = new com.tencent.open.b.c(this.l);
        this.k = cVar;
        if (Build.VERSION.SDK_INT >= 11) {
            cVar.setLayerType(1, null);
        }
        this.k.setLayoutParams(layoutParams);
        FrameLayout frameLayout = new FrameLayout(this.l);
        this.f13966e = frameLayout;
        layoutParams.gravity = 17;
        frameLayout.setLayoutParams(layoutParams);
        this.f13966e.addView(this.k);
        this.f13966e.addView(this.f13968g);
        String string = l.b(this.f13964a).getString(TtmlNode.TAG_STYLE);
        if (string != null && "qr".equals(string)) {
            this.f13966e.addView(this.i);
        }
        setContentView(this.f13966e);
    }

    private void c() {
        Button button = new Button(this.l);
        this.i = button;
        button.setBackgroundDrawable(l.a("h5_qr_back.png", this.l));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = com.tencent.connect.avatar.a.a(this.l, 20.0f);
        layoutParams.topMargin = com.tencent.connect.avatar.a.a(this.l, 10.0f);
        this.i.setLayoutParams(layoutParams);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.connect.auth.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.dismiss();
                if (a.this.n || a.this.b == null) {
                    return;
                }
                a.this.b.onCancel();
            }
        });
    }

    private void d() {
        TextView textView;
        this.f13969h = new ProgressBar(this.l);
        this.f13969h.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f13967f = new LinearLayout(this.l);
        if (this.j.equals("action_login")) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 16;
            layoutParams.leftMargin = 5;
            textView = new TextView(this.l);
            if (Locale.getDefault().getLanguage().equals("zh")) {
                textView.setText("登录中...");
            } else {
                textView.setText("Logging in...");
            }
            textView.setTextColor(Color.rgb(255, 255, 255));
            textView.setTextSize(18.0f);
            textView.setLayoutParams(layoutParams);
        } else {
            textView = null;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        this.f13967f.setLayoutParams(layoutParams2);
        this.f13967f.addView(this.f13969h);
        if (textView != null) {
            this.f13967f.addView(textView);
        }
        this.f13968g = new FrameLayout(this.l);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams3.gravity = 17;
        this.f13968g.setLayoutParams(layoutParams3);
        this.f13968g.setBackgroundColor(Color.parseColor("#B3000000"));
        this.f13968g.addView(this.f13967f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        StringBuilder sb = new StringBuilder(str);
        if (!TextUtils.isEmpty(this.q) && this.q.length() >= 4) {
            String str2 = this.q;
            String strSubstring = str2.substring(str2.length() - 4);
            sb.append("_u_");
            sb.append(strSubstring);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a() {
        String str = this.f13964a;
        String str2 = "https://login.imgcache.qq.com/ptlogin/static/qzsjump.html?" + str.substring(str.indexOf("?") + 1);
        SLog.i("openSDK_LOG.AuthDialog", "-->generateDownloadUrl, url: https://login.imgcache.qq.com/ptlogin/static/qzsjump.html?");
        return str2;
    }

    public void a(String str, String str2) {
        this.k.loadUrl("javascript:" + str + "(" + str2 + ");void(" + System.currentTimeMillis() + ");");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str) {
        try {
            JSONObject jSONObjectD = l.d(str);
            int i = jSONObjectD.getInt("type");
            Toast.makeText(context.getApplicationContext(), jSONObjectD.getString(SocialConstants.PARAM_SEND_MSG), i).show();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}

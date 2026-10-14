package com.unity3d.player;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.TypedValue;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.connect.common.Constants;
import com.unity3d.splash.UnityAds;
import com.unity3d.splash.services.core.device.Device;
import com.unity3d.splash.services.core.device.StorageManager;
import com.unity3d.splash.services.core.log.DeviceLog;
import com.unity3d.splash.services.core.request.WebRequest;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class UnityPlayer extends FrameLayout implements IUnityPlayerLifecycleEvents, com.unity3d.player.f {
    private static final int ANR_TIMEOUT_SECONDS = 4;
    private static final int RUN_STATE_CHANGED_MSG_CODE = 2269;
    private static final String SPLASH_ADS_GAME_ID = "unity.splash-ads-game-id";
    private static final String SPLASH_ADS_SLOGAN = "unity.splash-ads-slogan";
    private static final String SPLASH_ADS_SLOGAN_HEIGHT = "unity.splash-ads-slogan-height";
    private static final String SPLASH_ENABLE_METADATA_NAME = "unity.splash-enable";
    private static final String SPLASH_MODE_METADATA_NAME = "unity.splash-mode";
    private static final String TANGO_ENABLE_METADATA_NAME = "unity.tango-enable";
    private static final String UNITY_BUILDER_ID = "unity.builder";
    public static Activity currentActivity;
    AlertDialog ad;
    private boolean finishLaunchScreenAds;
    private Context mContext;
    private SurfaceView mGlView;
    private Handler mHanlder;
    private int mInitialScreenOrientation;
    private boolean mIsFullscreen;
    private BroadcastReceiver mKillingIsMyBusiness;
    private boolean mMainDisplayOverride;
    private int mNaturalOrientation;
    private OrientationEventListener mOrientationListener;
    private boolean mProcessKillRequested;
    private boolean mQuitting;
    k mSoftInputDialog;
    private p mState;
    private s mVideoPlayerProxy;
    private GoogleARCoreApi m_ARCoreApi;
    private boolean m_AddPhoneCallListener;
    private AudioVolumeHandler m_AudioVolumeHandler;
    private Camera2Wrapper m_Camera2Wrapper;
    private ClipboardManager m_ClipboardManager;
    private final ConcurrentLinkedQueue m_Events;
    private a m_FakeListener;
    private HFPStatus m_HFPStatus;
    f m_MainThread;
    private NetworkConnectivity m_NetworkConnectivity;
    private c m_PhoneCallListener;
    private n m_SplashScreen;
    private TelephonyManager m_TelephonyManager;
    private IUnityPlayerLifecycleEvents m_UnityPlayerLifecycleEvents;
    private Uri m_launchUri;
    private m m_splashAdsScreen;
    private boolean shouldShowLaunchScreenAds;
    private Timer timer;
    private TimerTask timerTask;

    class a implements SensorEventListener {
        a() {
        }

        @Override // android.hardware.SensorEventListener
        public final void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public final void onSensorChanged(SensorEvent sensorEvent) {
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f14263a = 1;
        public static final int b = 2;
        public static final int c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final /* synthetic */ int[] f14264d = {1, 2, 3};
    }

    private class c extends PhoneStateListener {
        private c() {
        }

        /* synthetic */ c(UnityPlayer unityPlayer, byte b) {
            this();
        }

        @Override // android.telephony.PhoneStateListener
        public final void onCallStateChanged(int i, String str) {
            UnityPlayer.this.nativeMuteMasterAudio(i == 1);
        }
    }

    class d extends AsyncTask {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public final Void doInBackground(String... strArr) {
            try {
                String str = Build.MANUFACTURER + "/" + Build.MODEL + "/" + Build.DEVICE;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("game_bundle_id", strArr[0]);
                jSONObject.put("device_model", str);
                jSONObject.put(Constants.PARAM_PLATFORM, "android");
                jSONObject.put("device_id", UnityPlayer.this.getDeviceId());
                jSONObject.put("splash_sdk_version", "2019.4.8f1");
                jSONObject.put("mcc", strArr[1]);
                jSONObject.put("builder", UnityPlayer.this.getBuilderUserId());
                WebRequest webRequest = new WebRequest("https://splash.unity.cn/api/register-game-launch", Constants.HTTP_POST, null);
                webRequest.m(jSONObject.toString());
                String strK = webRequest.k();
                if (webRequest.h() == 200) {
                    JSONObject jSONObject2 = new JSONObject(strK);
                    Boolean boolValueOf = Boolean.valueOf(jSONObject2.optBoolean("blocked"));
                    Boolean boolValueOf2 = Boolean.valueOf(jSONObject2.optBoolean("show_ads"));
                    String strOptString = jSONObject2.optString("game_id");
                    if (UnityPlayer.currentActivity != null) {
                        String splashGameId = UnityPlayer.this.getSplashGameId();
                        if (splashGameId != null && splashGameId.length() > 0) {
                            boolValueOf2 = Boolean.TRUE;
                            strOptString = splashGameId;
                        }
                        SharedPreferences.Editor editorEdit = UnityPlayer.currentActivity.getSharedPreferences("game_detail", 0).edit();
                        editorEdit.putString("game_id", strOptString);
                        editorEdit.putBoolean("show_ads", boolValueOf2.booleanValue());
                        editorEdit.putBoolean("blocked", boolValueOf.booleanValue());
                        editorEdit.putString("url", jSONObject2.optString("url"));
                        editorEdit.putString("hash", jSONObject2.optString("hash"));
                        editorEdit.putString("version", jSONObject2.optString("version"));
                        editorEdit.commit();
                        if (!boolValueOf.booleanValue() && boolValueOf2.booleanValue() && strOptString != null && strOptString != "") {
                            UnityAds.a(UnityPlayer.currentActivity, strOptString, null);
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return null;
        }
    }

    enum e {
        PAUSE,
        RESUME,
        QUIT,
        SURFACE_LOST,
        SURFACE_ACQUIRED,
        FOCUS_LOST,
        FOCUS_GAINED,
        NEXT_FRAME,
        URL_ACTIVATED,
        ORIENTATION_ANGLE_CHANGE,
        SPLASH_ADS_DISMISS
    }

    private class f extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Handler f14273a;
        boolean b;
        boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f14274d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f14275e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f14276f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f14277g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f14278h;
        int i;
        int j;

        private f() {
            this.b = false;
            this.c = false;
            this.f14274d = b.b;
            this.f14275e = 0;
            this.f14278h = false;
            this.i = 5;
            this.j = 5;
        }

        /* synthetic */ f(UnityPlayer unityPlayer, byte b) {
            this();
        }

        private void a(e eVar) {
            Handler handler = this.f14273a;
            if (handler != null) {
                Message.obtain(handler, UnityPlayer.RUN_STATE_CHANGED_MSG_CODE, eVar).sendToTarget();
            }
        }

        public final void a() {
            a(e.QUIT);
        }

        public final void a(int i, int i2) {
            this.f14276f = i;
            this.f14277g = i2;
            a(e.ORIENTATION_ANGLE_CHANGE);
        }

        public final void a(Runnable runnable) {
            if (this.f14273a == null) {
                return;
            }
            a(e.PAUSE);
            Message.obtain(this.f14273a, runnable).sendToTarget();
        }

        public final void b() {
            a(e.RESUME);
        }

        public final void b(Runnable runnable) {
            if (this.f14273a == null) {
                return;
            }
            a(e.SURFACE_LOST);
            Message.obtain(this.f14273a, runnable).sendToTarget();
        }

        public final void c() {
            a(e.FOCUS_GAINED);
        }

        public final void c(Runnable runnable) {
            Handler handler = this.f14273a;
            if (handler == null) {
                return;
            }
            Message.obtain(handler, runnable).sendToTarget();
            a(e.SURFACE_ACQUIRED);
        }

        public final void d() {
            a(e.FOCUS_LOST);
        }

        public final void d(Runnable runnable) {
            Handler handler = this.f14273a;
            if (handler != null) {
                Message.obtain(handler, runnable).sendToTarget();
            }
        }

        public final void e() {
            a(e.URL_ACTIVATED);
        }

        public final void f() {
            a(e.SPLASH_ADS_DISMISS);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            setName("UnityMain");
            Looper.prepare();
            this.f14273a = new Handler(new Handler.Callback() { // from class: com.unity3d.player.UnityPlayer.f.1
                private void a() {
                    f fVar = f.this;
                    if (fVar.f14274d == b.c && fVar.c) {
                        UnityPlayer.this.nativeFocusChanged(true);
                        f.this.f14274d = b.f14263a;
                    }
                }

                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    int i;
                    if (message.what != UnityPlayer.RUN_STATE_CHANGED_MSG_CODE) {
                        return false;
                    }
                    e eVar = (e) message.obj;
                    e eVar2 = e.NEXT_FRAME;
                    if (eVar == eVar2) {
                        f fVar = f.this;
                        fVar.f14275e--;
                        UnityPlayer.this.executeGLThreadJobs();
                        f fVar2 = f.this;
                        if (!fVar2.b || !fVar2.c) {
                            return true;
                        }
                        int i2 = fVar2.i;
                        if (i2 >= 0) {
                            if (i2 == 0 && UnityPlayer.this.getSplashEnabled()) {
                                UnityPlayer.this.DisableStaticSplashScreen();
                            }
                            f.this.i--;
                        }
                        f fVar3 = f.this;
                        if (fVar3.i == 0 && UnityPlayer.this.shouldShowLaunchScreenAds) {
                            UnityPlayer.this.ShowSplashAdsScreen();
                        }
                        f fVar4 = f.this;
                        if (fVar4.f14278h && (i = fVar4.j) >= 0) {
                            if (i == 0) {
                                UnityPlayer.this.DisableSplashAdsScreen();
                            }
                            f.this.j--;
                        }
                        if (!UnityPlayer.this.isFinishing() && !UnityPlayer.this.nativeRender()) {
                            UnityPlayer.this.finish();
                        }
                    } else if (eVar == e.QUIT) {
                        Looper.myLooper().quit();
                    } else if (eVar == e.RESUME) {
                        f.this.b = true;
                    } else if (eVar == e.PAUSE) {
                        f.this.b = false;
                    } else if (eVar == e.SURFACE_LOST) {
                        f.this.c = false;
                    } else {
                        if (eVar == e.SURFACE_ACQUIRED) {
                            f.this.c = true;
                        } else if (eVar == e.FOCUS_LOST) {
                            f fVar5 = f.this;
                            if (fVar5.f14274d == b.f14263a) {
                                UnityPlayer.this.nativeFocusChanged(false);
                            }
                            f.this.f14274d = b.b;
                        } else if (eVar == e.FOCUS_GAINED) {
                            f.this.f14274d = b.c;
                        } else if (eVar == e.URL_ACTIVATED) {
                            UnityPlayer unityPlayer = UnityPlayer.this;
                            unityPlayer.nativeSetLaunchURL(unityPlayer.getLaunchURL());
                        } else if (eVar == e.ORIENTATION_ANGLE_CHANGE) {
                            f fVar6 = f.this;
                            UnityPlayer.this.nativeOrientationChanged(fVar6.f14276f, fVar6.f14277g);
                        } else if (eVar == e.SPLASH_ADS_DISMISS) {
                            f.this.f14278h = true;
                        }
                        a();
                    }
                    f fVar7 = f.this;
                    if (fVar7.b && fVar7.f14275e <= 0) {
                        Message.obtain(fVar7.f14273a, UnityPlayer.RUN_STATE_CHANGED_MSG_CODE, eVar2).sendToTarget();
                        f.this.f14275e++;
                    }
                    return true;
                }
            });
            Looper.loop();
        }
    }

    private abstract class g implements Runnable {
        private g() {
        }

        /* synthetic */ g(UnityPlayer unityPlayer, byte b) {
            this();
        }

        public abstract void a();

        @Override // java.lang.Runnable
        public final void run() {
            if (UnityPlayer.this.isFinishing()) {
                return;
            }
            a();
        }
    }

    static {
        new o().a();
        try {
            System.loadLibrary("main");
        } catch (UnsatisfiedLinkError e2) {
            com.unity3d.player.g.Log(6, "Failed to load 'libmain.so', the application will terminate.");
            throw e2;
        }
    }

    public UnityPlayer(Context context) {
        this(context, null);
    }

    public UnityPlayer(Context context, IUnityPlayerLifecycleEvents iUnityPlayerLifecycleEvents) throws JSONException {
        super(context);
        this.mInitialScreenOrientation = -1;
        byte b2 = 0;
        this.mMainDisplayOverride = false;
        this.mIsFullscreen = true;
        this.mState = new p();
        this.m_Events = new ConcurrentLinkedQueue();
        this.mKillingIsMyBusiness = null;
        this.mOrientationListener = null;
        this.m_MainThread = new f(this, b2);
        this.m_AddPhoneCallListener = false;
        this.m_PhoneCallListener = new c(this, b2);
        this.m_ARCoreApi = null;
        this.m_FakeListener = new a();
        this.m_Camera2Wrapper = null;
        this.m_HFPStatus = null;
        this.m_AudioVolumeHandler = null;
        this.m_launchUri = null;
        this.m_NetworkConnectivity = null;
        this.finishLaunchScreenAds = false;
        this.shouldShowLaunchScreenAds = false;
        this.m_UnityPlayerLifecycleEvents = null;
        this.mProcessKillRequested = true;
        this.mSoftInputDialog = null;
        this.ad = null;
        this.mHanlder = null;
        this.timer = new Timer();
        this.timerTask = null;
        this.m_UnityPlayerLifecycleEvents = iUnityPlayerLifecycleEvents;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            currentActivity = activity;
            this.mInitialScreenOrientation = activity.getRequestedOrientation();
            this.m_launchUri = currentActivity.getIntent().getData();
        }
        EarlyEnableFullScreenIfVrLaunched(currentActivity);
        this.mContext = context;
        this.mNaturalOrientation = getNaturalOrientation(getResources().getConfiguration().orientation);
        if (currentActivity != null && getSplashEnabled()) {
            n nVar = new n(this.mContext, n.a.a()[getSplashMode()]);
            this.m_SplashScreen = nVar;
            addView(nVar);
        }
        hideStatusBar();
        loadNative(this.mContext.getApplicationInfo());
        if (!p.c()) {
            AlertDialog alertDialogCreate = new AlertDialog.Builder(this.mContext).setTitle("Failure to initialize!").setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.unity3d.player.UnityPlayer.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    UnityPlayer.this.finish();
                }
            }).setMessage("Your hardware does not support this application, sorry!").create();
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.show();
            return;
        }
        initJni(context);
        this.mState.c(true);
        registerLaunch();
        SurfaceView surfaceViewCreateGlView = CreateGlView();
        this.mGlView = surfaceViewCreateGlView;
        surfaceViewCreateGlView.setContentDescription(GetGlViewContentDescription(context));
        addView(this.mGlView);
        if (this.shouldShowLaunchScreenAds) {
            m mVarGenerateSplashView = generateSplashView(this.mContext);
            this.m_splashAdsScreen = mVarGenerateSplashView;
            if (mVarGenerateSplashView != null) {
                addView(mVarGenerateSplashView);
            } else {
                this.finishLaunchScreenAds = true;
            }
        }
        View view = this.m_SplashScreen;
        if (view != null) {
            bringChildToFront(view);
        }
        this.mQuitting = false;
        hideStatusBar();
        this.m_TelephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        this.m_ClipboardManager = (ClipboardManager) this.mContext.getSystemService("clipboard");
        this.m_Camera2Wrapper = new Camera2Wrapper(this.mContext);
        this.m_HFPStatus = new HFPStatus(this.mContext);
        this.m_MainThread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SurfaceView CreateGlView() {
        SurfaceView surfaceView = new SurfaceView(this.mContext);
        surfaceView.setId(this.mContext.getResources().getIdentifier("unitySurfaceView", TtmlNode.ATTR_ID, this.mContext.getPackageName()));
        if (IsWindowTranslucent()) {
            surfaceView.getHolder().setFormat(-3);
            surfaceView.setZOrderOnTop(true);
        } else {
            surfaceView.getHolder().setFormat(-1);
        }
        surfaceView.getHolder().addCallback(new SurfaceHolder.Callback() { // from class: com.unity3d.player.UnityPlayer.30
            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                UnityPlayer.this.updateGLDisplay(0, surfaceHolder.getSurface());
                UnityPlayer.this.sendSurfaceChangedEvent();
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceCreated(SurfaceHolder surfaceHolder) {
                UnityPlayer.this.updateGLDisplay(0, surfaceHolder.getSurface());
            }

            @Override // android.view.SurfaceHolder.Callback
            public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                UnityPlayer.this.updateGLDisplay(0, null);
            }
        });
        surfaceView.setFocusable(true);
        surfaceView.setFocusableInTouchMode(true);
        return surfaceView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DisableSplashAdsScreen() {
        if (this.m_splashAdsScreen != null) {
            final AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, BitmapDescriptorFactory.HUE_RED);
            alphaAnimation.setDuration(500L);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.unity3d.player.UnityPlayer.28
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation) {
                    UnityPlayer.this.runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.28.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            UnityPlayer unityPlayer = UnityPlayer.this;
                            unityPlayer.removeView(unityPlayer.m_splashAdsScreen);
                        }
                    });
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation) {
                }
            });
            runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.29
                @Override // java.lang.Runnable
                public final void run() {
                    UnityPlayer.this.m_splashAdsScreen.startAnimation(alphaAnimation);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DisableStaticSplashScreen() {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.22
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer unityPlayer = UnityPlayer.this;
                unityPlayer.removeView(unityPlayer.m_SplashScreen);
                UnityPlayer.this.m_SplashScreen = null;
            }
        });
    }

    private void EarlyEnableFullScreenIfVrLaunched(Activity activity) {
        View decorView;
        if (activity == null || !activity.getIntent().getBooleanExtra("android.intent.extra.VR_LAUNCH", false) || activity.getWindow() == null || (decorView = activity.getWindow().getDecorView()) == null) {
            return;
        }
        decorView.setSystemUiVisibility(7);
    }

    private String GetGlViewContentDescription(Context context) {
        return context.getResources().getString(context.getResources().getIdentifier("game_view_content_description", "string", context.getPackageName()));
    }

    private boolean IsWindowTranslucent() {
        if (currentActivity == null) {
            return false;
        }
        TypedValue typedValue = new TypedValue();
        return currentActivity.getTheme().resolveAttribute(R.attr.windowIsTranslucent, typedValue, true) && typedValue.type == 18 && typedValue.data != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowSplashAdsScreen() {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.27
            @Override // java.lang.Runnable
            public final void run() {
                if (UnityPlayer.this.m_splashAdsScreen != null) {
                    UnityPlayer unityPlayer = UnityPlayer.this;
                    unityPlayer.bringChildToFront(unityPlayer.m_splashAdsScreen);
                    UnityPlayer.this.m_splashAdsScreen.a();
                }
            }
        });
    }

    public static void UnitySendMessage(String str, String str2, String str3) {
        if (p.c()) {
            try {
                nativeUnitySendMessage(str, str2, str3.getBytes("UTF-8"));
                return;
            } catch (UnsupportedEncodingException unused) {
                return;
            }
        }
        com.unity3d.player.g.Log(5, "Native libraries not loaded - dropping message for " + str + "." + str2);
    }

    private void checkResumePlayer() {
        if (this.mState.f()) {
            this.mState.d(true);
            queueGLThreadEvent(new Runnable() { // from class: com.unity3d.player.UnityPlayer.6
                @Override // java.lang.Runnable
                public final void run() {
                    UnityPlayer.this.nativeResume();
                }
            });
            this.m_MainThread.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish() {
        Context context = this.mContext;
        if (!(context instanceof Activity) || ((Activity) context).isFinishing()) {
            return;
        }
        ((Activity) this.mContext).finish();
    }

    private m generateSplashView(Context context) throws JSONException {
        StorageManager.d(context);
        com.unity3d.splash.services.core.device.a aVarB = StorageManager.b(StorageManager.StorageType.PRIVATE);
        if (aVarB == null) {
            return null;
        }
        Object objC = aVarB.c("splash-show");
        if (objC != null) {
            try {
                l lVar = new l(new JSONObject(objC.toString()));
                if (lVar.a()) {
                    DeviceLog.h("splash show");
                    if (lVar.g() >= System.currentTimeMillis()) {
                        DeviceLog.h("splash show");
                        aVarB.a("splash-show");
                        return new m(this.mContext, this, lVar);
                    }
                }
            } catch (JSONException unused) {
            }
        }
        Object objC2 = aVarB.c("splash-show-no-fill");
        if (objC2 != null) {
            try {
                DeviceLog.h("splash show no fill");
                l lVar2 = new l(new JSONObject(objC2.toString()));
                if (lVar2.a()) {
                    return new m(this.mContext, this, lVar2);
                }
            } catch (JSONException unused2) {
            }
        }
        DeviceLog.h("splash show nothing");
        return null;
    }

    private ApplicationInfo getApplicationInfo() {
        return this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 128);
    }

    private int getNaturalOrientation(int i) {
        int rotation = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getRotation();
        if ((rotation == 0 || rotation == 2) && i == 2) {
            return 0;
        }
        return ((rotation == 1 || rotation == 3) && i == 1) ? 0 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getSplashEnabled() {
        try {
            return getApplicationInfo().metaData.getBoolean(SPLASH_ENABLE_METADATA_NAME);
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSplashGameId() {
        try {
            return getApplicationInfo().metaData.getString(SPLASH_ADS_GAME_ID);
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean getTangoEnabled() {
        try {
            return getApplicationInfo().metaData.getBoolean(TANGO_ENABLE_METADATA_NAME);
        } catch (Exception unused) {
            return false;
        }
    }

    private void hideStatusBar() {
        Context context = this.mContext;
        if (context instanceof Activity) {
            ((Activity) context).getWindow().setFlags(1024, 1024);
        }
    }

    private final native void initJni(Context context);

    protected static boolean loadLibraryStatic(String str) {
        StringBuilder sb;
        try {
            System.loadLibrary(str);
            return true;
        } catch (Exception e2) {
            sb = new StringBuilder("Unknown error ");
            sb.append(e2);
            com.unity3d.player.g.Log(6, sb.toString());
            return false;
        } catch (UnsatisfiedLinkError unused) {
            sb = new StringBuilder("Unable to find ");
            sb.append(str);
            com.unity3d.player.g.Log(6, sb.toString());
            return false;
        }
    }

    private static void loadNative(ApplicationInfo applicationInfo) {
        if (NativeLoader.load(applicationInfo.nativeLibraryDir)) {
            p.a();
        } else {
            com.unity3d.player.g.Log(6, "NativeLoader.load failure, Unity libraries were not loaded.");
        }
    }

    private final native void nativeApplicationUnload();

    private final native boolean nativeDone();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeFocusChanged(boolean z);

    private final native boolean nativeInjectEvent(InputEvent inputEvent);

    /* JADX INFO: Access modifiers changed from: private */
    public final native boolean nativeIsAutorotationOn();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeLowMemory();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeMuteMasterAudio(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeOrientationChanged(int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public final native boolean nativePause();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeRecreateGfxState(int i, Surface surface);

    /* JADX INFO: Access modifiers changed from: private */
    public final native boolean nativeRender();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeReportKeyboardConfigChanged();

    private final native void nativeRestartActivityIndicator();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeResume();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSendSurfaceChangedEvent();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetInputArea(int i, int i2, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetInputSelection(int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetInputString(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetKeyboardIsVisible(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSetLaunchURL(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSoftInputCanceled();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSoftInputClosed();

    /* JADX INFO: Access modifiers changed from: private */
    public final native void nativeSoftInputLostFocus();

    private static native void nativeUnitySendMessage(String str, String str2, byte[] bArr);

    private void pauseUnity() {
        reportSoftInputStr(null, 1, true);
        if (this.mState.g()) {
            if (p.c()) {
                final Semaphore semaphore = new Semaphore(0);
                this.m_MainThread.a(isFinishing() ? new Runnable() { // from class: com.unity3d.player.UnityPlayer.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        UnityPlayer.this.shutdown();
                        semaphore.release();
                    }
                } : new Runnable() { // from class: com.unity3d.player.UnityPlayer.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!UnityPlayer.this.nativePause()) {
                            semaphore.release();
                            return;
                        }
                        UnityPlayer.this.mQuitting = true;
                        UnityPlayer.this.shutdown();
                        semaphore.release(2);
                    }
                });
                try {
                    if (!semaphore.tryAcquire(4L, TimeUnit.SECONDS)) {
                        com.unity3d.player.g.Log(5, "Timeout while trying to pause the Unity Engine.");
                    }
                } catch (InterruptedException unused) {
                    com.unity3d.player.g.Log(5, "UI thread got interrupted while trying to pause the Unity Engine.");
                }
                if (semaphore.drainPermits() > 0) {
                    destroy();
                }
            }
            this.mState.d(false);
            this.mState.b(true);
            if (this.m_AddPhoneCallListener) {
                this.m_TelephonyManager.listen(this.m_PhoneCallListener, 0);
            }
        }
    }

    private void queueGLThreadEvent(g gVar) {
        if (isFinishing()) {
            return;
        }
        queueGLThreadEvent((Runnable) gVar);
    }

    private void queueGLThreadEvent(Runnable runnable) {
        if (p.c()) {
            if (Thread.currentThread() == this.m_MainThread) {
                runnable.run();
            } else {
                this.m_Events.add(runnable);
            }
        }
    }

    private void registerLaunch() {
        Activity activity = currentActivity;
        if (activity != null) {
            SharedPreferences sharedPreferences = activity.getSharedPreferences("game_detail", 0);
            String string = sharedPreferences.getString("game_id", "");
            Boolean boolValueOf = Boolean.valueOf(sharedPreferences.getBoolean("show_ads", false));
            Boolean boolValueOf2 = Boolean.valueOf(sharedPreferences.getBoolean("blocked", false));
            if (boolValueOf2.booleanValue() || !boolValueOf.booleanValue() || string == "") {
                this.shouldShowLaunchScreenAds = false;
                if (boolValueOf2.booleanValue()) {
                    showBlockDialog();
                }
            } else {
                this.shouldShowLaunchScreenAds = true;
                UnityAds.a(currentActivity, string, null);
            }
        } else {
            this.shouldShowLaunchScreenAds = false;
        }
        new d().execute(getContext().getPackageName(), Device.a(getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSurfaceChangedEvent() {
        if (p.c() && this.mState.e()) {
            this.m_MainThread.d(new Runnable() { // from class: com.unity3d.player.UnityPlayer.31
                @Override // java.lang.Runnable
                public final void run() {
                    UnityPlayer.this.nativeSendSurfaceChangedEvent();
                }
            });
        }
    }

    private void showBlockDialog() {
        this.ad = new AlertDialog.Builder(this.mContext).setTitle("Sorry").setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.unity3d.player.UnityPlayer.23
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                UnityPlayer.this.mHanlder.sendEmptyMessage(1);
            }
        }).setMessage("The app is using unauthorized engine, please contact the publisher!").setCancelable(false).create();
        this.mHanlder = new Handler() { // from class: com.unity3d.player.UnityPlayer.24
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                AlertDialog alertDialog;
                int i = message.what;
                if (i == 0) {
                    AlertDialog alertDialog2 = UnityPlayer.this.ad;
                    if (alertDialog2 != null && !alertDialog2.isShowing()) {
                        UnityPlayer.this.ad.show();
                    }
                } else if (i == 1 && (alertDialog = UnityPlayer.this.ad) != null && alertDialog.isShowing()) {
                    UnityPlayer.this.ad.hide();
                }
                super.handleMessage(message);
            }
        };
        TimerTask timerTask = new TimerTask() { // from class: com.unity3d.player.UnityPlayer.25
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                UnityPlayer.this.mHanlder.sendEmptyMessage(0);
            }
        };
        this.timerTask = timerTask;
        this.timer.schedule(timerTask, 0L, 600000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shutdown() {
        this.mProcessKillRequested = nativeDone();
        this.mState.c(false);
    }

    private void swapViews(View view, View view2) {
        boolean z;
        if (this.mState.d()) {
            z = false;
        } else {
            pause();
            z = true;
        }
        if (view != null) {
            ViewParent parent = view.getParent();
            if (!(parent instanceof UnityPlayer) || ((UnityPlayer) parent) != this) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
                addView(view);
                bringChildToFront(view);
                view.setVisibility(0);
            }
        }
        if (view2 != null && view2.getParent() == this) {
            view2.setVisibility(8);
            removeView(view2);
        }
        if (z) {
            resume();
        }
    }

    private static void unloadNative() {
        if (p.c()) {
            if (!NativeLoader.unload()) {
                throw new UnsatisfiedLinkError("Unable to unload libraries from libmain.so");
            }
            p.b();
        }
    }

    private boolean updateDisplayInternal(final int i, final Surface surface) {
        if (!p.c() || !this.mState.e()) {
            return false;
        }
        final Semaphore semaphore = new Semaphore(0);
        Runnable runnable = new Runnable() { // from class: com.unity3d.player.UnityPlayer.32
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer.this.nativeRecreateGfxState(i, surface);
                semaphore.release();
            }
        };
        if (i == 0) {
            f fVar = this.m_MainThread;
            if (surface == null) {
                fVar.b(runnable);
            } else {
                fVar.c(runnable);
            }
        } else {
            runnable.run();
        }
        if (surface != null || i != 0) {
            return true;
        }
        try {
            if (semaphore.tryAcquire(4L, TimeUnit.SECONDS)) {
                return true;
            }
            com.unity3d.player.g.Log(5, "Timeout while trying detaching primary window.");
            return true;
        } catch (InterruptedException unused) {
            com.unity3d.player.g.Log(5, "UI thread got interrupted while trying to detach the primary window from the Unity Engine.");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGLDisplay(int i, Surface surface) {
        if (this.mMainDisplayOverride) {
            return;
        }
        updateDisplayInternal(i, surface);
    }

    public void NotifySplashAdsFinished() {
        this.finishLaunchScreenAds = true;
        this.m_MainThread.f();
    }

    protected void addPhoneCallListener() {
        this.m_AddPhoneCallListener = true;
        this.m_TelephonyManager.listen(this.m_PhoneCallListener, 32);
    }

    @Override // com.unity3d.player.f
    public boolean addViewToPlayer(View view, boolean z) {
        swapViews(view, z ? this.mGlView : null);
        boolean z2 = true;
        boolean z3 = view.getParent() == this;
        boolean z4 = z && this.mGlView.getParent() == null;
        boolean z5 = this.mGlView.getParent() == this;
        if (!z3 || (!z4 && !z5)) {
            z2 = false;
        }
        if (!z2) {
            if (!z3) {
                com.unity3d.player.g.Log(6, "addViewToPlayer: Failure adding view to hierarchy");
            }
            if (!z4 && !z5) {
                com.unity3d.player.g.Log(6, "addViewToPlayer: Failure removing old view from hierarchy");
            }
        }
        return z2;
    }

    public void configurationChanged(Configuration configuration) {
        SurfaceView surfaceView = this.mGlView;
        if (surfaceView instanceof SurfaceView) {
            surfaceView.getHolder().setSizeFromLayout();
        }
        s sVar = this.mVideoPlayerProxy;
        if (sVar != null) {
            sVar.c();
        }
        GoogleVrProxy googleVrProxyB = GoogleVrApi.b();
        if (googleVrProxyB != null) {
            googleVrProxyB.c();
        }
    }

    public void destroy() {
        if (GoogleVrApi.b() != null) {
            GoogleVrApi.a();
        }
        Camera2Wrapper camera2Wrapper = this.m_Camera2Wrapper;
        if (camera2Wrapper != null) {
            camera2Wrapper.a();
            this.m_Camera2Wrapper = null;
        }
        HFPStatus hFPStatus = this.m_HFPStatus;
        if (hFPStatus != null) {
            hFPStatus.a();
            this.m_HFPStatus = null;
        }
        NetworkConnectivity networkConnectivity = this.m_NetworkConnectivity;
        if (networkConnectivity != null) {
            networkConnectivity.b();
            this.m_NetworkConnectivity = null;
        }
        this.mQuitting = true;
        if (!this.mState.d()) {
            pause();
        }
        this.m_MainThread.a();
        try {
            this.m_MainThread.join(4000L);
        } catch (InterruptedException unused) {
            this.m_MainThread.interrupt();
        }
        BroadcastReceiver broadcastReceiver = this.mKillingIsMyBusiness;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
        }
        this.mKillingIsMyBusiness = null;
        if (p.c()) {
            removeAllViews();
        }
        if (this.mProcessKillRequested) {
            IUnityPlayerLifecycleEvents iUnityPlayerLifecycleEvents = this.m_UnityPlayerLifecycleEvents;
            if (iUnityPlayerLifecycleEvents != null) {
                iUnityPlayerLifecycleEvents.onUnityPlayerQuitted();
            } else {
                onUnityPlayerQuitted();
            }
            kill();
        }
        unloadNative();
    }

    protected void disableLogger() {
        com.unity3d.player.g.f14302a = true;
    }

    public boolean displayChanged(int i, Surface surface) {
        if (i == 0) {
            this.mMainDisplayOverride = surface != null;
            runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (UnityPlayer.this.mMainDisplayOverride) {
                        UnityPlayer unityPlayer = UnityPlayer.this;
                        unityPlayer.removeView(unityPlayer.mGlView);
                    } else {
                        UnityPlayer unityPlayer2 = UnityPlayer.this;
                        unityPlayer2.addView(unityPlayer2.mGlView);
                    }
                }
            });
        }
        return updateDisplayInternal(i, surface);
    }

    protected void executeGLThreadJobs() {
        while (true) {
            Runnable runnable = (Runnable) this.m_Events.poll();
            if (runnable == null) {
                return;
            } else {
                runnable.run();
            }
        }
    }

    protected String getBuilderUserId() {
        try {
            return getApplicationInfo().metaData.getString(UNITY_BUILDER_ID);
        } catch (Exception unused) {
            return null;
        }
    }

    protected String getClipboardText() {
        ClipData primaryClip = this.m_ClipboardManager.getPrimaryClip();
        return primaryClip != null ? primaryClip.getItemAt(0).coerceToText(this.mContext).toString() : "";
    }

    public String getDeviceId() {
        Activity activity = currentActivity;
        if (activity == null) {
            return "";
        }
        SharedPreferences sharedPreferences = activity.getSharedPreferences("device_detail", 0);
        String string = sharedPreferences.getString("device_id", null);
        if (string != null) {
            return string;
        }
        String strB = Device.b();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("device_id", strB);
        editorEdit.commit();
        return strB;
    }

    protected String getKeyboardLayout() {
        k kVar = this.mSoftInputDialog;
        if (kVar == null) {
            return null;
        }
        return kVar.a();
    }

    protected String getLaunchURL() {
        Uri uri = this.m_launchUri;
        if (uri != null) {
            return uri.toString();
        }
        return null;
    }

    protected int getNetworkConnectivity() {
        if (!j.c) {
            return 0;
        }
        if (this.m_NetworkConnectivity == null) {
            this.m_NetworkConnectivity = new NetworkConnectivity(this.mContext);
        }
        return this.m_NetworkConnectivity.a();
    }

    public String getNetworkProxySettings(String str) {
        String str2;
        String str3;
        if (!str.startsWith("http:")) {
            if (str.startsWith("https:")) {
                str2 = "https.proxyHost";
                str3 = "https.proxyPort";
            }
            return null;
        }
        str2 = "http.proxyHost";
        str3 = "http.proxyPort";
        String property = System.getProperties().getProperty(str2);
        if (property != null && !"".equals(property)) {
            StringBuilder sb = new StringBuilder(property);
            String property2 = System.getProperties().getProperty(str3);
            if (property2 != null && !"".equals(property2)) {
                sb.append(":");
                sb.append(property2);
            }
            String property3 = System.getProperties().getProperty("http.nonProxyHosts");
            if (property3 != null && !"".equals(property3)) {
                sb.append('\n');
                sb.append(property3);
            }
            return sb.toString();
        }
        return null;
    }

    public Bundle getSettings() {
        return Bundle.EMPTY;
    }

    protected Boolean getShowSplashSlogan() {
        try {
            return Boolean.valueOf(getApplicationInfo().metaData.getBoolean(SPLASH_ADS_SLOGAN));
        } catch (Exception unused) {
            return Boolean.FALSE;
        }
    }

    protected int getShowSplashSloganHeight() {
        try {
            return getApplicationInfo().metaData.getInt(SPLASH_ADS_SLOGAN_HEIGHT, 250);
        } catch (Exception unused) {
            return 150;
        }
    }

    protected int getSplashMode() {
        try {
            return getApplicationInfo().metaData.getInt(SPLASH_MODE_METADATA_NAME);
        } catch (Exception unused) {
            return 0;
        }
    }

    public View getView() {
        return this;
    }

    protected void hideSoftInput() {
        postOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.8
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer.this.reportSoftInputArea(new Rect());
                UnityPlayer.this.reportSoftInputIsVisible(false);
                k kVar = UnityPlayer.this.mSoftInputDialog;
                if (kVar != null) {
                    kVar.dismiss();
                    UnityPlayer unityPlayer = UnityPlayer.this;
                    unityPlayer.mSoftInputDialog = null;
                    unityPlayer.nativeReportKeyboardConfigChanged();
                }
            }
        });
    }

    public void init(int i, boolean z) {
    }

    protected boolean initializeGoogleAr() {
        if (this.m_ARCoreApi != null || currentActivity == null || !getTangoEnabled()) {
            return false;
        }
        GoogleARCoreApi googleARCoreApi = new GoogleARCoreApi();
        this.m_ARCoreApi = googleARCoreApi;
        googleARCoreApi.initializeARCore(currentActivity);
        if (this.mState.d()) {
            return false;
        }
        this.m_ARCoreApi.resumeARCore();
        return false;
    }

    protected boolean initializeGoogleVr() {
        final GoogleVrProxy googleVrProxyB = GoogleVrApi.b();
        if (googleVrProxyB == null) {
            GoogleVrApi.a(this);
            googleVrProxyB = GoogleVrApi.b();
            if (googleVrProxyB == null) {
                com.unity3d.player.g.Log(6, "Unable to create Google VR subsystem.");
                return false;
            }
        }
        final Semaphore semaphore = new Semaphore(0);
        final Runnable runnable = new Runnable() { // from class: com.unity3d.player.UnityPlayer.17
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer.this.injectEvent(new KeyEvent(0, 4));
                UnityPlayer.this.injectEvent(new KeyEvent(1, 4));
            }
        };
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.18
            @Override // java.lang.Runnable
            public final void run() {
                if (!googleVrProxyB.a(UnityPlayer.currentActivity, UnityPlayer.this.mContext, UnityPlayer.this.CreateGlView(), runnable)) {
                    com.unity3d.player.g.Log(6, "Unable to initialize Google VR subsystem.");
                }
                Activity activity = UnityPlayer.currentActivity;
                if (activity != null) {
                    googleVrProxyB.a(activity.getIntent());
                }
                semaphore.release();
            }
        });
        try {
            if (semaphore.tryAcquire(4L, TimeUnit.SECONDS)) {
                return googleVrProxyB.a();
            }
            com.unity3d.player.g.Log(5, "Timeout while trying to initialize Google VR.");
            return false;
        } catch (InterruptedException e2) {
            com.unity3d.player.g.Log(5, "UI thread was interrupted while initializing Google VR. " + e2.getLocalizedMessage());
            return false;
        }
    }

    public boolean injectEvent(InputEvent inputEvent) {
        if (p.c()) {
            return nativeInjectEvent(inputEvent);
        }
        return false;
    }

    protected boolean isFinishing() {
        if (!this.mQuitting) {
            Context context = this.mContext;
            boolean z = (context instanceof Activity) && ((Activity) context).isFinishing();
            this.mQuitting = z;
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public boolean isLaunchScreenAdsFinished() {
        return this.finishLaunchScreenAds || UnityAds.b();
    }

    public boolean isShouldShowLaunchScreenAds() {
        return this.shouldShowLaunchScreenAds;
    }

    protected void kill() {
        Process.killProcess(Process.myPid());
    }

    protected boolean loadLibrary(String str) {
        return loadLibraryStatic(str);
    }

    public void lowMemory() {
        if (p.c()) {
            queueGLThreadEvent(new Runnable() { // from class: com.unity3d.player.UnityPlayer.5
                @Override // java.lang.Runnable
                public final void run() {
                    UnityPlayer.this.nativeLowMemory();
                }
            });
        }
    }

    public void newIntent(Intent intent) {
        this.m_launchUri = intent.getData();
        this.m_MainThread.e();
    }

    protected void notifyOnUnityPlayerUnloaded() {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.21
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer.this.pause();
                UnityPlayer.this.windowFocusChanged(false);
                if (UnityPlayer.this.m_UnityPlayerLifecycleEvents != null) {
                    UnityPlayer.this.m_UnityPlayerLifecycleEvents.onUnityPlayerUnloaded();
                } else {
                    UnityPlayer.this.onUnityPlayerUnloaded();
                }
            }
        });
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return injectEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return injectEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return injectEvent(motionEvent);
    }

    @Override // com.unity3d.player.IUnityPlayerLifecycleEvents
    public void onUnityPlayerQuitted() {
    }

    @Override // com.unity3d.player.IUnityPlayerLifecycleEvents
    public void onUnityPlayerUnloaded() {
    }

    public void pause() {
        GoogleARCoreApi googleARCoreApi = this.m_ARCoreApi;
        if (googleARCoreApi != null) {
            googleARCoreApi.pauseARCore();
        }
        s sVar = this.mVideoPlayerProxy;
        if (sVar != null) {
            sVar.a();
        }
        GoogleVrProxy googleVrProxyB = GoogleVrApi.b();
        if (googleVrProxyB != null) {
            googleVrProxyB.pauseGvrLayout();
        }
        AudioVolumeHandler audioVolumeHandler = this.m_AudioVolumeHandler;
        if (audioVolumeHandler != null) {
            audioVolumeHandler.a();
            this.m_AudioVolumeHandler = null;
        }
        m mVar = this.m_splashAdsScreen;
        if (mVar != null) {
            mVar.b();
        }
        pauseUnity();
    }

    void postOnUiThread(Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(runnable);
    }

    public void quit() {
        destroy();
    }

    @Override // com.unity3d.player.f
    public void removeViewFromPlayer(View view) {
        swapViews(this.mGlView, view);
        boolean z = view.getParent() == null;
        boolean z2 = this.mGlView.getParent() == this;
        if (z && z2) {
            return;
        }
        if (!z) {
            com.unity3d.player.g.Log(6, "removeViewFromPlayer: Failure removing view from hierarchy");
        }
        if (z2) {
            return;
        }
        com.unity3d.player.g.Log(6, "removeVireFromPlayer: Failure agging old view to hierarchy");
    }

    @Override // com.unity3d.player.f
    public void reportError(String str, String str2) {
        com.unity3d.player.g.Log(6, str + ": " + str2);
    }

    protected void reportSoftInputArea(final Rect rect) {
        queueGLThreadEvent(new g() { // from class: com.unity3d.player.UnityPlayer.15
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(UnityPlayer.this, (byte) 0);
            }

            @Override // com.unity3d.player.UnityPlayer.g
            public final void a() {
                UnityPlayer unityPlayer = UnityPlayer.this;
                Rect rect2 = rect;
                unityPlayer.nativeSetInputArea(rect2.left, rect2.top, rect2.right, rect2.bottom);
            }
        });
    }

    protected void reportSoftInputIsVisible(final boolean z) {
        queueGLThreadEvent(new g() { // from class: com.unity3d.player.UnityPlayer.16
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(UnityPlayer.this, (byte) 0);
            }

            @Override // com.unity3d.player.UnityPlayer.g
            public final void a() {
                UnityPlayer.this.nativeSetKeyboardIsVisible(z);
            }
        });
    }

    protected void reportSoftInputSelection(final int i, final int i2) {
        queueGLThreadEvent(new g() { // from class: com.unity3d.player.UnityPlayer.14
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(UnityPlayer.this, (byte) 0);
            }

            @Override // com.unity3d.player.UnityPlayer.g
            public final void a() {
                UnityPlayer.this.nativeSetInputSelection(i, i2);
            }
        });
    }

    protected void reportSoftInputStr(final String str, final int i, final boolean z) {
        if (i == 1) {
            hideSoftInput();
        }
        queueGLThreadEvent(new g() { // from class: com.unity3d.player.UnityPlayer.13
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(UnityPlayer.this, (byte) 0);
            }

            @Override // com.unity3d.player.UnityPlayer.g
            public final void a() {
                if (z) {
                    UnityPlayer.this.nativeSoftInputCanceled();
                } else {
                    String str2 = str;
                    if (str2 != null) {
                        UnityPlayer.this.nativeSetInputString(str2);
                    }
                }
                if (i == 1) {
                    UnityPlayer.this.nativeSoftInputClosed();
                }
            }
        });
    }

    protected void requestUserAuthorization(String str) {
        if (!j.b || str == null || str.isEmpty() || currentActivity == null) {
            return;
        }
        j.f14304d.a(currentActivity, str);
    }

    public void resume() {
        GoogleARCoreApi googleARCoreApi = this.m_ARCoreApi;
        if (googleARCoreApi != null) {
            googleARCoreApi.resumeARCore();
        }
        this.mState.b(false);
        s sVar = this.mVideoPlayerProxy;
        if (sVar != null) {
            sVar.b();
        }
        m mVar = this.m_splashAdsScreen;
        if (mVar != null) {
            mVar.c();
        }
        checkResumePlayer();
        nativeRestartActivityIndicator();
        GoogleVrProxy googleVrProxyB = GoogleVrApi.b();
        if (googleVrProxyB != null) {
            googleVrProxyB.b();
        }
        this.m_AudioVolumeHandler = new AudioVolumeHandler(this.mContext);
    }

    void runOnAnonymousThread(Runnable runnable) {
        new Thread(runnable).start();
    }

    void runOnUiThread(Runnable runnable) {
        Context context = this.mContext;
        if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(runnable);
        } else {
            com.unity3d.player.g.Log(5, "Not running Unity from an Activity; ignored...");
        }
    }

    protected void setCharacterLimit(final int i) {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.10
            @Override // java.lang.Runnable
            public final void run() {
                k kVar = UnityPlayer.this.mSoftInputDialog;
                if (kVar != null) {
                    kVar.a(i);
                }
            }
        });
    }

    protected void setClipboardText(String str) {
        this.m_ClipboardManager.setPrimaryClip(ClipData.newPlainText("Text", str));
    }

    protected void setHideInputField(final boolean z) {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.11
            @Override // java.lang.Runnable
            public final void run() {
                k kVar = UnityPlayer.this.mSoftInputDialog;
                if (kVar != null) {
                    kVar.a(z);
                }
            }
        });
    }

    protected void setSelection(final int i, final int i2) {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.12
            @Override // java.lang.Runnable
            public final void run() {
                k kVar = UnityPlayer.this.mSoftInputDialog;
                if (kVar != null) {
                    kVar.a(i, i2);
                }
            }
        });
    }

    protected void setSoftInputStr(final String str) {
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.9
            @Override // java.lang.Runnable
            public final void run() {
                String str2;
                k kVar = UnityPlayer.this.mSoftInputDialog;
                if (kVar == null || (str2 = str) == null) {
                    return;
                }
                kVar.a(str2);
            }
        });
    }

    public boolean shouldRegisterLaunch(Context context) {
        return Arrays.asList("454", "455", "460", "461", "466").contains(Device.a(context));
    }

    protected void showSoftInput(final String str, final int i, final boolean z, final boolean z2, final boolean z3, final boolean z4, final String str2, final int i2, final boolean z5) {
        postOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.7
            @Override // java.lang.Runnable
            public final void run() {
                UnityPlayer.this.mSoftInputDialog = new k(UnityPlayer.this.mContext, this, str, i, z, z2, z3, str2, i2, z5);
                UnityPlayer.this.mSoftInputDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.unity3d.player.UnityPlayer.7.1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        UnityPlayer.this.nativeSoftInputLostFocus();
                        UnityPlayer.this.reportSoftInputStr(null, 1, false);
                    }
                });
                UnityPlayer.this.mSoftInputDialog.show();
                UnityPlayer.this.nativeReportKeyboardConfigChanged();
            }
        });
    }

    protected boolean showVideoPlayer(String str, int i, int i2, int i3, boolean z, int i4, int i5) {
        if (this.mVideoPlayerProxy == null) {
            this.mVideoPlayerProxy = new s(this);
        }
        boolean zA = this.mVideoPlayerProxy.a(this.mContext, str, i, i2, i3, z, i4, i5, new s.a() { // from class: com.unity3d.player.UnityPlayer.19
            @Override // com.unity3d.player.s.a
            public final void a() {
                UnityPlayer.this.mVideoPlayerProxy = null;
            }
        });
        if (zA) {
            runOnUiThread(new Runnable() { // from class: com.unity3d.player.UnityPlayer.20
                @Override // java.lang.Runnable
                public final void run() {
                    if (UnityPlayer.this.nativeIsAutorotationOn() && (UnityPlayer.this.mContext instanceof Activity)) {
                        ((Activity) UnityPlayer.this.mContext).setRequestedOrientation(UnityPlayer.this.mInitialScreenOrientation);
                    }
                }
            });
        }
        return zA;
    }

    protected boolean skipPermissionsDialog() {
        if (!j.b || currentActivity == null) {
            return false;
        }
        return j.f14304d.a(currentActivity);
    }

    public boolean startOrientationListener(int i) {
        String str;
        if (this.mOrientationListener != null) {
            str = "Orientation Listener already started.";
        } else {
            OrientationEventListener orientationEventListener = new OrientationEventListener(this.mContext, i) { // from class: com.unity3d.player.UnityPlayer.26
                @Override // android.view.OrientationEventListener
                public final void onOrientationChanged(int i2) {
                    UnityPlayer unityPlayer = UnityPlayer.this;
                    unityPlayer.m_MainThread.a(unityPlayer.mNaturalOrientation, i2);
                }
            };
            this.mOrientationListener = orientationEventListener;
            if (orientationEventListener.canDetectOrientation()) {
                this.mOrientationListener.enable();
                return true;
            }
            str = "Orientation Listener cannot detect orientation.";
        }
        com.unity3d.player.g.Log(5, str);
        return false;
    }

    public boolean stopOrientationListener() {
        OrientationEventListener orientationEventListener = this.mOrientationListener;
        if (orientationEventListener == null) {
            com.unity3d.player.g.Log(5, "Orientation Listener was not started.");
            return false;
        }
        orientationEventListener.disable();
        this.mOrientationListener = null;
        return true;
    }

    protected void toggleGyroscopeSensor(boolean z) {
        SensorManager sensorManager = (SensorManager) this.mContext.getSystemService("sensor");
        Sensor defaultSensor = sensorManager.getDefaultSensor(11);
        if (z) {
            sensorManager.registerListener(this.m_FakeListener, defaultSensor, 1);
        } else {
            sensorManager.unregisterListener(this.m_FakeListener);
        }
    }

    public void unload() {
        nativeApplicationUnload();
    }

    public void windowFocusChanged(boolean z) {
        this.mState.a(z);
        if (this.mState.e()) {
            if (z) {
                this.m_MainThread.c();
            } else {
                this.m_MainThread.d();
            }
            checkResumePlayer();
        }
    }
}

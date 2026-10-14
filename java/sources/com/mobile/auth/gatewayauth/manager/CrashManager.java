package com.mobile.auth.gatewayauth.manager;

import android.content.Context;
import android.util.Log;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import com.mobile.auth.gatewayauth.model.UStruct;
import com.mobile.auth.gatewayauth.utils.ReflectionUtils;
import com.nirvana.tools.crash.CrashSdk;
import com.nirvana.tools.crash.OnCrashCallback;
import com.nirvana.tools.crash.SdkInfo;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class CrashManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile CrashManager f13325a;
    private Context b;
    private d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private OnCrashCallback f13326d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SdkInfo f13327e;

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
    }

    private CrashManager(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        this.c = new d(applicationContext);
        this.f13326d = new OnCrashCallback() { // from class: com.mobile.auth.gatewayauth.manager.CrashManager.1
            @Override // com.nirvana.tools.crash.OnCrashCallback
            public void onCrashOccurred(String str, String str2, String str3, String str4, boolean z, String str5) {
                try {
                    UStruct uStructBuild = UStruct.newUStruct().crashId(str4).isAnnihilated(z).crashType(str5).crashThread(str).build();
                    uStructBuild.setIsSuccess(null);
                    uStructBuild.setEndTime(null);
                    uStructBuild.setStartTime(null);
                    uStructBuild.setWholeMS(null);
                    com.mobile.auth.o.a.a(CrashManager.a(CrashManager.this)).a(CrashManager.b(CrashManager.this).b(com.mobile.auth.gatewayauth.utils.c.b(CrashManager.a(CrashManager.this)), Constant.ACTION_SDK_CRASH_OCCURRED, uStructBuild, ""), 2);
                    com.mobile.auth.o.a.a(CrashManager.a(CrashManager.this)).a();
                } catch (Throwable th) {
                    try {
                        com.mobile.auth.gatewayauth.a.a(th);
                    } catch (Throwable th2) {
                        com.mobile.auth.gatewayauth.a.a(th2);
                    }
                }
            }

            @Override // com.nirvana.tools.crash.OnCrashCallback
            public void onCrashUploadFailed(String str, String str2, String str3) {
                try {
                    CrashManager.a(CrashManager.this, str, str3);
                } catch (Throwable th) {
                    try {
                        com.mobile.auth.gatewayauth.a.a(th);
                    } catch (Throwable th2) {
                        com.mobile.auth.gatewayauth.a.a(th2);
                    }
                }
            }
        };
    }

    static /* synthetic */ Context a(CrashManager crashManager) {
        try {
            return crashManager.b;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static CrashManager a(Context context) {
        try {
            if (f13325a == null) {
                synchronized (CrashManager.class) {
                    if (f13325a == null) {
                        f13325a = new CrashManager(context);
                    }
                }
            }
            return f13325a;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    static /* synthetic */ void a(CrashManager crashManager, String str, String str2) {
        try {
            crashManager.a(str, str2);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    private void a(String str, String str2) {
        try {
            com.mobile.auth.o.a aVarA = com.mobile.auth.o.a.a(ReflectionUtils.getApplication());
            if (aVarA != null) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                aVarA.e("Sdk_Crash![", str2, "]", str, "deviceId:", d.f13399a);
                aVarA.a(jCurrentTimeMillis, 1000000 + System.currentTimeMillis(), 6);
            } else {
                com.mobile.auth.gatewayauth.utils.f.c(str);
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    static /* synthetic */ d b(CrashManager crashManager) {
        try {
            return crashManager.c;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public void a(String str, String str2, String str3, boolean z, String str4) {
        try {
            this.f13326d.onCrashOccurred(str, "DYPNS", str2, str3, z, str4);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public void a(Thread thread, Throwable th, String str) {
        try {
            com.mobile.auth.gatewayauth.utils.f.c("UploadException[" + str + "]:" + Log.getStackTraceString(th));
            boolean zUploadException = false;
            if (FeatureManager.getInstance().get(FeatureManager.FEATURE_KEY_CRASH) == null) {
                HashMap map = new HashMap();
                map.put("uuid", str);
                map.put("deviceID", d.f13399a);
                zUploadException = CrashSdk.getInstance().uploadException(this.f13327e, thread, th, map);
            }
            if (zUploadException) {
                return;
            }
            a(Log.getStackTraceString(th), str);
        } catch (Throwable th2) {
            try {
                com.mobile.auth.gatewayauth.a.a(th2);
            } catch (Throwable th3) {
                com.mobile.auth.gatewayauth.a.a(th3);
            }
        }
    }

    @SafeProtector
    public native boolean loadCrashComponent();
}

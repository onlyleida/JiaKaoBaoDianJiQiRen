package com.unity3d.splash.services.core.configuration;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.ConditionVariable;
import com.tencent.connect.common.Constants;
import com.unity3d.splash.UnityAds;
import com.unity3d.splash.services.core.log.DeviceLog;
import com.unity3d.splash.services.core.request.WebRequest;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;

/* JADX INFO: loaded from: classes6.dex */
public class d extends Thread {
    private static d c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f14378a;
    private boolean b = false;

    private static abstract class b {
        private b() {
        }

        public abstract b b();
    }

    public static class c extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.unity3d.splash.services.core.configuration.a f14379a;

        public c(com.unity3d.splash.services.core.configuration.a aVar) {
            super();
            this.f14379a = aVar;
        }

        @Override // com.unity3d.splash.services.core.configuration.d.b
        public b b() {
            for (String str : this.f14379a.c()) {
                com.unity3d.splash.services.core.configuration.c cVarB = this.f14379a.b(str);
                if (cVarB != null) {
                    cVarB.b(this.f14379a);
                }
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.splash.services.core.configuration.d$d, reason: collision with other inner class name */
    public static class C0287d extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f14380a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.unity3d.splash.services.core.configuration.a f14381d;

        public C0287d(com.unity3d.splash.services.core.configuration.a aVar) {
            super();
            this.f14380a = 0;
            this.b = 6;
            this.c = 5;
            this.f14381d = aVar;
        }

        @Override // com.unity3d.splash.services.core.configuration.d.b
        public b b() {
            DeviceLog.h("Unity Ads init: load configuration from " + com.unity3d.splash.services.c.b.b.c());
            try {
                this.f14381d.i();
                return new h(this.f14381d);
            } catch (Exception e2) {
                int i = this.f14380a;
                if (i >= this.b) {
                    return new j(e2, this, this.f14381d);
                }
                int i2 = this.c * 2;
                this.c = i2;
                this.f14380a = i + 1;
                return new l(this, i2);
            }
        }
    }

    public static class e extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.unity3d.splash.services.core.configuration.a f14382a;
        private String b;

        public e(com.unity3d.splash.services.core.configuration.a aVar, String str) {
            super();
            this.f14382a = aVar;
            this.b = str;
        }

        @Override // com.unity3d.splash.services.core.configuration.d.b
        public b b() {
            DeviceLog.c("Unity Ads init: creating webapp");
            com.unity3d.splash.services.core.configuration.a aVar = this.f14382a;
            aVar.k(this.b);
            try {
                if (com.unity3d.splash.services.core.webview.b.b(aVar)) {
                    return new c(this.f14382a);
                }
                DeviceLog.e("Unity Ads WebApp creation failed!");
                return new f("create webapp", new Exception("Creation of WebApp failed!"), this.f14382a);
            } catch (IllegalThreadStateException e2) {
                DeviceLog.f("Illegal Thread", e2);
                return new f("create webapp", e2, this.f14382a);
            }
        }
    }

    public static class f extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f14383a;
        Exception b;
        protected com.unity3d.splash.services.core.configuration.a c;

        public f(String str, Exception exc, com.unity3d.splash.services.core.configuration.a aVar) {
            super();
            this.f14383a = str;
            this.b = exc;
            this.c = aVar;
        }

        @Override // com.unity3d.splash.services.core.configuration.d.b
        public b b() {
            DeviceLog.e("Unity Ads init: halting init in " + this.f14383a + ": " + this.b.getMessage());
            for (String str : this.c.c()) {
                com.unity3d.splash.services.core.configuration.c cVarB = this.c.b(str);
                if (cVarB != null) {
                    cVarB.e(this.c, this.f14383a, this.b.getMessage());
                }
            }
            return null;
        }
    }

    public static class g extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.unity3d.splash.services.core.configuration.a f14384a;

        public g(com.unity3d.splash.services.core.configuration.a aVar) {
            super();
            this.f14384a = aVar;
        }

        @Override // com.unity3d.splash.services.core.configuration.d.b
        public b b() {
            for (String str : this.f14384a.c()) {
                com.unity3d.splash.services.core.configuration.c cVarB = this.f14384a.b(str);
                if (cVarB != null && !cVarB.c(this.f14384a)) {
                    return null;
                }
            }
            return new C0287d(this.f14384a);
        }
    }

    public static class h extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.unity3d.splash.services.core.configuration.a f14385a;

        public h(com.unity3d.splash.services.core.configuration.a aVar) {
            super();
            this.f14385a = aVar;
        }

        @Override // com.unity3d.splash.services.core.configuration.d.b
        public b b() {
            DeviceLog.c("Unity Ads init: check if webapp can be loaded from local cache");
            try {
                byte[] bArrC = com.unity3d.splash.services.c.a.b.c(new File(com.unity3d.splash.services.c.b.b.g()));
                String strB = com.unity3d.splash.services.c.a.b.b(bArrC);
                if (strB == null || !strB.equals(this.f14385a.f())) {
                    UnityAds.c(true);
                    return new i(this.f14385a);
                }
                try {
                    String str = new String(bArrC, "UTF-8");
                    DeviceLog.h("Unity Ads init: webapp loaded from local cache");
                    return new e(this.f14385a, str);
                } catch (UnsupportedEncodingException e2) {
                    return new f("load cache", e2, this.f14385a);
                }
            } catch (IOException e3) {
                DeviceLog.c("Unity Ads init: webapp not found in local cache: " + e3.getMessage());
                return new i(this.f14385a);
            }
        }
    }

    public static class i extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.unity3d.splash.services.core.configuration.a f14386a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f14387d;

        public i(com.unity3d.splash.services.core.configuration.a aVar) {
            super();
            this.b = 0;
            this.c = 6;
            this.f14387d = 5;
            this.f14386a = aVar;
        }

        @Override // com.unity3d.splash.services.core.configuration.d.b
        public b b() throws Throwable {
            DeviceLog.h("Unity Ads init: loading webapp from " + this.f14386a.g());
            try {
                try {
                    String strK = new WebRequest(this.f14386a.g(), Constants.HTTP_GET, null).k();
                    String strF = this.f14386a.f();
                    if (strF != null && !com.unity3d.splash.services.c.a.b.a(strK).equals(strF)) {
                        return new f("load web", new Exception("Invalid webViewHash"), this.f14386a);
                    }
                    if (strF != null) {
                        com.unity3d.splash.services.c.a.b.g(new File(com.unity3d.splash.services.c.b.b.g()), strK);
                    }
                    return new e(this.f14386a, strK);
                } catch (Exception e2) {
                    if (this.b >= this.c) {
                        return new j(e2, this, this.f14386a);
                    }
                    int i = this.f14387d * 2;
                    this.f14387d = i;
                    this.b++;
                    return new l(this, i);
                }
            } catch (MalformedURLException e3) {
                DeviceLog.f("Malformed URL", e3);
                return new f("make webrequest", e3, this.f14386a);
            }
        }
    }

    public static class j extends f implements com.unity3d.splash.services.core.connectivity.d {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f14388f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static long f14389g;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private b f14390d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ConditionVariable f14391e;

        public j(Exception exc, b bVar, com.unity3d.splash.services.core.configuration.a aVar) {
            super("network error", exc, aVar);
            this.f14390d = bVar;
        }

        private boolean c() {
            return System.currentTimeMillis() - f14389g >= 10000 && f14388f <= 500;
        }

        @Override // com.unity3d.splash.services.core.connectivity.d
        public void a() {
            DeviceLog.c("Unity Ads init got disconnected event");
        }

        @Override // com.unity3d.splash.services.core.configuration.d.f, com.unity3d.splash.services.core.configuration.d.b
        public b b() {
            DeviceLog.e("Unity Ads init: network error, waiting for connection events");
            this.f14391e = new ConditionVariable();
            com.unity3d.splash.services.core.connectivity.b.a(this);
            boolean zBlock = this.f14391e.block(600000L);
            com.unity3d.splash.services.core.connectivity.b.f(this);
            return zBlock ? this.f14390d : new f("network error", new Exception("No connected events within the timeout!"), this.c);
        }

        @Override // com.unity3d.splash.services.core.connectivity.d
        public void onConnected() {
            f14388f++;
            DeviceLog.c("Unity Ads init got connected event");
            if (c()) {
                this.f14391e.open();
            }
            if (f14388f > 500) {
                com.unity3d.splash.services.core.connectivity.b.f(this);
            }
            f14389g = System.currentTimeMillis();
        }
    }

    public static class k extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.unity3d.splash.services.core.configuration.a f14392a;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.unity3d.splash.services.core.webview.b f14393a;
            final /* synthetic */ ConditionVariable b;

            a(k kVar, com.unity3d.splash.services.core.webview.b bVar, ConditionVariable conditionVariable) {
                this.f14393a = bVar;
                this.b = conditionVariable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f14393a.f().destroy();
                this.f14393a.p(null);
                this.b.open();
            }
        }

        public k(com.unity3d.splash.services.core.configuration.a aVar) {
            super();
            this.f14392a = aVar;
        }

        @TargetApi(14)
        private void c() {
            if (com.unity3d.splash.services.core.api.a.a() != null) {
                if (com.unity3d.splash.services.c.b.a.a() != null) {
                    com.unity3d.splash.services.c.b.a.a().unregisterActivityLifecycleCallbacks(com.unity3d.splash.services.core.api.a.a());
                }
                com.unity3d.splash.services.core.api.a.b(null);
            }
        }

        @Override // com.unity3d.splash.services.core.configuration.d.b
        public b b() {
            boolean zBlock;
            DeviceLog.c("Unity Ads init: starting init");
            ConditionVariable conditionVariable = new ConditionVariable();
            com.unity3d.splash.services.core.webview.b bVarE = com.unity3d.splash.services.core.webview.b.e();
            if (bVarE != null) {
                bVarE.o(false);
                bVarE.n(false);
                if (bVarE.f() != null) {
                    com.unity3d.splash.services.c.a.b.d(new a(this, bVarE, conditionVariable));
                    zBlock = conditionVariable.block(10000L);
                } else {
                    zBlock = true;
                }
                if (!zBlock) {
                    return new f("reset webapp", new Exception("Reset failed on opening ConditionVariable"), this.f14392a);
                }
            }
            if (Build.VERSION.SDK_INT > 13) {
                c();
            }
            com.unity3d.splash.services.c.b.b.j(null);
            if (com.unity3d.splash.services.c.b.b.a() == null) {
                return new f("reset webapp", new Exception("Cache directory is NULL"), this.f14392a);
            }
            com.unity3d.splash.services.c.b.b.m(false);
            this.f14392a.j(com.unity3d.splash.services.c.b.b.c());
            for (String str : this.f14392a.c()) {
                com.unity3d.splash.services.core.configuration.c cVarB = this.f14392a.b(str);
                if (cVarB != null) {
                    cVarB.d(this.f14392a);
                }
            }
            return new g(this.f14392a);
        }
    }

    public static class l extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        b f14394a;
        int b;

        public l(b bVar, int i) {
            super();
            this.f14394a = bVar;
            this.b = i;
        }

        @Override // com.unity3d.splash.services.core.configuration.d.b
        public b b() {
            DeviceLog.c("Unity Ads init: retrying in " + this.b + " seconds");
            try {
                Thread.sleep(((long) this.b) * 1000);
            } catch (InterruptedException e2) {
                DeviceLog.f("Init retry interrupted", e2);
            }
            return this.f14394a;
        }
    }

    private d(b bVar) {
        this.f14378a = bVar;
    }

    public static synchronized void a(com.unity3d.splash.services.core.configuration.a aVar) {
        if (c == null) {
            d dVar = new d(new k(aVar));
            c = dVar;
            dVar.setName("UnityAdsInitializeThread");
            c.start();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            b bVar = this.f14378a;
            if (bVar == null || (bVar instanceof c) || this.b) {
                break;
            } else {
                this.f14378a = bVar.b();
            }
        }
        c = null;
    }
}

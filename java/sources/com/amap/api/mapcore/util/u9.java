package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class u9 implements h7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11242a;
    private RandomAccessFile b;
    private n7 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f11243d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    a f11244e;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected String f11245a;
        protected String b;
        protected String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected String f11246d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected c f11247e;

        public a(String str, String str2, String str3, String str4) {
            this.f11245a = str;
            this.b = str2;
            this.c = str4 + ".tmp";
            this.f11246d = str4;
        }

        public String a() {
            return this.f11245a;
        }

        public void b(c cVar) {
            this.f11247e = cVar;
        }

        public String c() {
            return this.b;
        }

        public String d() {
            return this.c;
        }

        public String e() {
            return this.f11246d;
        }

        public c f() {
            return this.f11247e;
        }
    }

    static class b extends r2 {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final a f11248d;

        b(a aVar) {
            this.f11248d = aVar;
        }

        @Override // com.amap.api.mapcore.util.k7
        public String getIPV6URL() {
            return getURL();
        }

        @Override // com.amap.api.mapcore.util.r2, com.amap.api.mapcore.util.k7
        public Map<String, String> getParams() {
            return null;
        }

        @Override // com.amap.api.mapcore.util.k7
        public Map<String, String> getRequestHead() {
            return null;
        }

        @Override // com.amap.api.mapcore.util.k7
        public String getURL() {
            a aVar = this.f11248d;
            if (aVar != null) {
                return aVar.a();
            }
            return null;
        }

        @Override // com.amap.api.mapcore.util.k7
        public boolean isSupportIPV6() {
            return false;
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected String f11249a;
        protected String b;

        public c(String str, String str2) {
            this.f11249a = str;
            this.b = str2;
        }

        public String a() {
            return this.f11249a;
        }

        public String b() {
            return this.b;
        }

        public boolean c() {
            return (TextUtils.isEmpty(this.f11249a) || TextUtils.isEmpty(this.b)) ? false : true;
        }
    }

    static class d extends a {
        public d(String str, String str2, String str3, String str4) {
            super(str, str2, str3, str4);
        }

        public void g(String str, String str2) {
            b(new c(str, str2));
        }
    }

    public u9(Context context, a aVar, m5 m5Var) {
        this.f11242a = context.getApplicationContext();
        if (aVar == null) {
            return;
        }
        this.f11244e = aVar;
        this.c = new n7(new b(aVar));
        this.f11243d = aVar.d();
    }

    private boolean b() {
        c cVarF = this.f11244e.f();
        return (cVarF != null && cVarF.c() && h3.b(this.f11242a, cVarF.a(), cVarF.b(), "").equalsIgnoreCase(this.f11244e.c())) ? false : true;
    }

    public void a() {
        n7 n7Var;
        try {
            if (!b() || (n7Var = this.c) == null) {
                return;
            }
            n7Var.b(this);
        } catch (Throwable th) {
            e6.r(th, "AuthTaskDownload", "startDownload()");
        }
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onDownload(byte[] bArr, long j) {
        try {
            if (this.b == null) {
                File file = new File(this.f11243d);
                File parentFile = file.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                this.b = new RandomAccessFile(file, "rw");
            }
            this.b.seek(j);
            this.b.write(bArr);
        } catch (Throwable th) {
            e6.r(th, "AuthTaskDownload", "onDownload()");
        }
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onException(Throwable th) {
        try {
            RandomAccessFile randomAccessFile = this.b;
            if (randomAccessFile == null) {
                return;
            }
            randomAccessFile.close();
        } catch (Throwable th2) {
            e6.r(th2, "AuthTaskDownload", "onException()");
        }
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onFinish() {
        try {
            RandomAccessFile randomAccessFile = this.b;
            if (randomAccessFile == null) {
                return;
            }
            try {
                randomAccessFile.close();
            } catch (Throwable th) {
                e6.r(th, "AuthTaskDownload", "onFinish3");
            }
            String strC = this.f11244e.c();
            String strA = k5.a(this.f11243d);
            if (strA == null || !strC.equalsIgnoreCase(strA)) {
                try {
                    new File(this.f11243d).delete();
                    return;
                } catch (Throwable th2) {
                    e6.r(th2, "AuthTaskDownload", "onFinish");
                    return;
                }
            }
            String strE = this.f11244e.e();
            try {
                t0 t0Var = new t0();
                File file = new File(this.f11243d);
                t0Var.b(file, new File(strE), -1L, z0.b(file), null);
                c cVarF = this.f11244e.f();
                if (cVarF != null && cVarF.c()) {
                    h3.c(this.f11242a, cVarF.a(), cVarF.b(), strA);
                }
                new File(this.f11243d).delete();
                return;
            } catch (Throwable th3) {
                e6.r(th3, "AuthTaskDownload", "onFinish1");
                return;
            }
            e6.r(th, "AuthTaskDownload", "onFinish()");
        } catch (Throwable th4) {
            e6.r(th4, "AuthTaskDownload", "onFinish()");
        }
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onStop() {
    }
}

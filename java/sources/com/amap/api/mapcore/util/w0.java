package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.MapsInitializer;
import com.google.common.net.HttpHeaders;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;

/* JADX INFO: loaded from: classes5.dex */
public class w0 implements h7.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    x0 f11297a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f11298d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f11300f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    r0 f11301g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ca f11302h;
    private String i;
    private n7 j;
    private s0 k;
    a n;
    long b = 0;
    long c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f11299e = true;
    long l = 0;
    private boolean m = false;

    public interface a {
        void c();
    }

    private static class b extends r2 {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f11303d;

        public b(String str) {
            this.f11303d = str;
        }

        @Override // com.amap.api.mapcore.util.k7
        public String getIPV6URL() {
            return getURL();
        }

        @Override // com.amap.api.mapcore.util.k7
        public Map<String, String> getRequestHead() {
            return null;
        }

        @Override // com.amap.api.mapcore.util.k7
        public String getURL() {
            return this.f11303d;
        }

        @Override // com.amap.api.mapcore.util.k7
        public boolean isSupportIPV6() {
            return false;
        }
    }

    public w0(x0 x0Var, String str, Context context, ca caVar) throws IOException {
        this.f11297a = null;
        this.f11301g = r0.b(context.getApplicationContext());
        this.f11297a = x0Var;
        this.f11300f = context;
        this.i = str;
        this.f11302h = caVar;
        f();
    }

    private void b(long j) {
        ca caVar;
        long j2 = this.f11298d;
        if (j2 <= 0 || (caVar = this.f11302h) == null) {
            return;
        }
        caVar.m(j2, j);
        this.l = System.currentTimeMillis();
    }

    private void e() throws IOException {
        d1 d1Var = new d1(this.i);
        d1Var.setConnectionTimeout(CMAESOptimizer.DEFAULT_MAXITERATIONS);
        d1Var.setSoTimeout(CMAESOptimizer.DEFAULT_MAXITERATIONS);
        this.j = new n7(d1Var, this.b, this.c, MapsInitializer.getProtocol() == 2);
        this.k = new s0(this.f11297a.b() + File.separator + this.f11297a.c(), this.b);
    }

    private void f() {
        File file = new File(this.f11297a.b() + this.f11297a.c());
        if (!file.exists()) {
            this.b = 0L;
            this.c = 0L;
            return;
        }
        this.f11299e = false;
        this.b = file.length();
        try {
            long jI = i();
            this.f11298d = jI;
            this.c = jI;
        } catch (IOException unused) {
            ca caVar = this.f11302h;
            if (caVar != null) {
                caVar.e(ca.a.file_io_exception);
            }
        }
    }

    private boolean g() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11297a.b());
        sb.append(File.separator);
        sb.append(this.f11297a.c());
        return new File(sb.toString()).length() >= 10;
    }

    private void h() throws AMapException {
        if (e5.f10741a != 1) {
            for (int i = 0; i < 3; i++) {
                try {
                    if (e5.c(this.f11300f, r3.u0())) {
                        return;
                    }
                } catch (Throwable th) {
                    e6.r(th, "SiteFileFetch", "authOffLineDownLoad");
                    th.printStackTrace();
                }
            }
        }
    }

    private long i() throws IOException {
        Map<String, String> mapJ;
        try {
            mapJ = j7.i().j(new b(this.f11297a.a()), MapsInitializer.getProtocol() == 2);
        } catch (gb e2) {
            e2.printStackTrace();
            mapJ = null;
        }
        int i = -1;
        if (mapJ != null) {
            for (String str : mapJ.keySet()) {
                if (HttpHeaders.CONTENT_LENGTH.equalsIgnoreCase(str)) {
                    i = Integer.parseInt(mapJ.get(str));
                }
            }
        }
        return i;
    }

    private void j() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.f11297a == null || jCurrentTimeMillis - this.l <= 500) {
            return;
        }
        k();
        this.l = jCurrentTimeMillis;
        b(this.b);
    }

    private void k() {
        this.f11301g.f(this.f11297a.e(), this.f11297a.d(), this.f11298d, this.b, this.c);
    }

    public void a() {
        try {
            if (!r3.t0(this.f11300f)) {
                ca caVar = this.f11302h;
                if (caVar != null) {
                    caVar.e(ca.a.network_exception);
                    return;
                }
                return;
            }
            h();
            if (e5.f10741a != 1) {
                ca caVar2 = this.f11302h;
                if (caVar2 != null) {
                    caVar2.e(ca.a.amap_exception);
                    return;
                }
                return;
            }
            if (!g()) {
                this.f11299e = true;
            }
            if (this.f11299e) {
                long jI = i();
                this.f11298d = jI;
                if (jI == -1) {
                    z0.h("File Length is not known!");
                } else if (jI == -2) {
                    z0.h("File is not access!");
                } else {
                    this.c = jI;
                }
                this.b = 0L;
            }
            ca caVar3 = this.f11302h;
            if (caVar3 != null) {
                caVar3.a();
            }
            if (this.b >= this.c) {
                onFinish();
            } else {
                e();
                this.j.b(this);
            }
        } catch (AMapException e2) {
            e6.r(e2, "SiteFileFetch", "download");
            ca caVar4 = this.f11302h;
            if (caVar4 != null) {
                caVar4.e(ca.a.amap_exception);
            }
        } catch (IOException unused) {
            ca caVar5 = this.f11302h;
            if (caVar5 != null) {
                caVar5.e(ca.a.file_io_exception);
            }
        }
    }

    public void c(a aVar) {
        this.n = aVar;
    }

    public void d() {
        n7 n7Var = this.j;
        if (n7Var != null) {
            n7Var.a();
        }
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onDownload(byte[] bArr, long j) {
        try {
            this.k.a(bArr);
            this.b = j;
            j();
        } catch (IOException e2) {
            e2.printStackTrace();
            e6.r(e2, "fileAccessI", "fileAccessI.write(byte[] data)");
            ca caVar = this.f11302h;
            if (caVar != null) {
                caVar.e(ca.a.file_io_exception);
            }
            n7 n7Var = this.j;
            if (n7Var != null) {
                n7Var.a();
            }
        }
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onException(Throwable th) {
        s0 s0Var;
        this.m = true;
        d();
        ca caVar = this.f11302h;
        if (caVar != null) {
            caVar.e(ca.a.network_exception);
        }
        if ((th instanceof IOException) || (s0Var = this.k) == null) {
            return;
        }
        s0Var.b();
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onFinish() {
        j();
        ca caVar = this.f11302h;
        if (caVar != null) {
            caVar.c();
        }
        s0 s0Var = this.k;
        if (s0Var != null) {
            s0Var.b();
        }
        a aVar = this.n;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // com.amap.api.mapcore.util.h7.a
    public void onStop() {
        if (this.m) {
            return;
        }
        ca caVar = this.f11302h;
        if (caVar != null) {
            caVar.d();
        }
        k();
    }
}

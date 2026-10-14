package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.MapsInitializer;
import com.autonavi.base.amap.mapcore.FileUtil;

/* JADX INFO: loaded from: classes5.dex */
public class l2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10980a;
    private k2 b;
    private q2 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f10981d;

    public interface a {
        void a(String str, q2 q2Var);
    }

    public l2(Context context) {
        this.f10980a = context;
        if (this.b == null) {
            this.b = new k2(context, "");
        }
    }

    private String a(Context context) {
        return FileUtil.getMapBaseStorage(context);
    }

    private void f(String str, byte[] bArr) {
        FileUtil.writeDatasToFile(str, bArr);
    }

    public void b() {
        this.f10980a = null;
        if (this.b != null) {
            this.b = null;
        }
    }

    public void c(a aVar) {
        this.f10981d = aVar;
    }

    public void d(q2 q2Var) {
        this.c = q2Var;
    }

    public void e(String str) {
        k2 k2Var = this.b;
        if (k2Var != null) {
            k2Var.m(str);
        }
    }

    public void g() {
        q3.a().b(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (MapsInitializer.getNetWorkEnable()) {
                k2 k2Var = this.b;
                if (k2Var != null) {
                    k2.a aVarI = k2Var.i();
                    String str = null;
                    if (aVarI != null && aVarI.f10955a != null) {
                        str = a(this.f10980a) + "/custom_texture_data";
                        f(str, aVarI.f10955a);
                    }
                    a aVar = this.f10981d;
                    if (aVar != null) {
                        aVar.a(str, this.c);
                    }
                }
                e6.g(this.f10980a, r3.u0());
            }
        } catch (Throwable th) {
            e6.r(th, "CustomStyleTask", "download customStyle");
            th.printStackTrace();
        }
    }
}
